# LocallyConvexSpace.sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f093225-d2a3-94c5-b116-e2ad17e1f0ab",
  "kind": "theorem",
  "lexical_name": "LocallyConvexSpace.sInf",
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
  "slug": "locallyconvexspace-sinf--833abe93d1965740723ad2c4",
  "source": {
    "blob": "65ebec5528d8b0a3b21a702d00385e20e4ae13d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 175,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:833abe93d1965740723ad2c4657566f934fc682383e404a64584b7d25a410cb5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f093225-d2a3-94c5-b116-e2ad17e1f0ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem LocallyConvexSpace.sInf {ts : Set (TopologicalSpace E)}
    (h : ∀ t ∈ ts, @LocallyConvexSpace 𝕜 E _ _ _ _ t) :
    @LocallyConvexSpace 𝕜 E _ _ _ _ (sInf ts) := by
  letI : TopologicalSpace E := sInf ts
  refine .ofBases 𝕜 E (fun _ => fun If : Set ts × (ts → Set E) => ⋂ i ∈ If.1, If.2 i)
      (fun x => fun If : Set ts × (ts → Set E) =>
        If.1.Finite ∧ ∀ i ∈ If.1, If.2 i ∈ @nhds _ (↑i) x ∧ Convex 𝕜 (If.2 i))
      (fun x => ?_) fun x If hif => convex_iInter fun i => convex_iInter fun hi => (hif.2 i hi).2
  rw [nhds_sInf, ← iInf_subtype'']
  exact .iInf' fun i : ts => (@locallyConvexSpace_iff 𝕜 E _ _ _ _ ↑i).mp (h (↑i) i.2) x

@[deprecated (since := "2025-05-05")]
alias locallyConvexSpace_sInf := LocallyConvexSpace.sInf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variant8d0eab8efe29b4cadd38fee709e6e70c679a0e6e20082b85e66f4bdf6433a947.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ebec5528d8b0a3b21a702d00385e20e4ae13d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
