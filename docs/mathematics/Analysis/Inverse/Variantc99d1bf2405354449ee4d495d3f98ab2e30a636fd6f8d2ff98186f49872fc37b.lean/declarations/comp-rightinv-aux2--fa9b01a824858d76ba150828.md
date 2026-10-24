# comp_rightInv_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8938ea-5639-8c8c-c455-3ac99371ba6c",
  "kind": "theorem",
  "lexical_name": "comp_rightInv_aux2",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "comp-rightinv-aux2--fa9b01a824858d76ba150828",
  "source": {
    "blob": "3712926d08b7e064e2b03c061591d6e834aab282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 236,
    "path": "GRWTSK/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa9b01a824858d76ba1508281b4e53967e63c6d9d939652ca63b9971dfe1fd60",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8938ea-5639-8c8c-c455-3ac99371ba6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_rightInv_aux2 (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F) (x : E) (n : ℕ)
    (v : Fin (n + 2) → F) :
    ∑ c ∈ {c : Composition (n + 2) | 1 < c.length}.toFinset,
        p c.length (applyComposition (fun k : ℕ => ite (k < n + 2) (p.rightInv i x k) 0) c v) =
      ∑ c ∈ {c : Composition (n + 2) | 1 < c.length}.toFinset,
        p c.length ((p.rightInv i x).applyComposition c v) := by
  have N : 0 < n + 2 := by simp
  refine sum_congr rfl fun c hc => p.congr rfl fun j hj1 hj2 => ?_
  have : ∀ k, c.blocksFun k < n + 2 := by
    simp only [Set.mem_toFinset (s := {c : Composition (n + 2) | 1 < c.length}),
      Set.mem_ofPred_eq] at hc
    simp [← Composition.ne_single_iff N, Composition.eq_single_iff_length, ne_of_gt hc]
  simp [applyComposition, this]

set_option backward.isDefEq.respectTransparency false in
/-- The right inverse to a formal multilinear series is indeed a right inverse, provided its linear
term is invertible and its constant term vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variantc99d1bf2405354449ee4d495d3f98ab2e30a636fd6f8d2ff98186f49872fc37b.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3712926d08b7e064e2b03c061591d6e834aab282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
