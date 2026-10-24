# span_smul_of_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df8558a2-4c49-435a-035d-cc9a52931024",
  "kind": "theorem",
  "lexical_name": "span_smul_of_span_eq_top",
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
  "slug": "span-smul-of-span-eq-top--aaca192148eae66d39201d00",
  "source": {
    "blob": "fb393b63f16e57c6818b88bd36bda4e5a47ce5af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 281,
    "path": "GRWTSK/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaca192148eae66d39201d0034e9cacf993e11cec0d3988143452f1c13d0d517",
  "verification": {
    "reference": "docs/verification/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df8558a2-4c49-435a-035d-cc9a52931024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_smul_of_span_eq_top {s : Set S} (hs : span R s = ⊤) (t : Set A) :
    span R (s • t) = (span S t).restrictScalars R :=
  le_antisymm
    (span_le.2 fun _x ⟨p, _hps, _q, hqt, hpqx⟩ ↦ hpqx ▸ (span S t).smul_mem p (subset_span hqt))
    fun _ hp ↦ closure_induction (hx := hp) (zero_mem _) (fun _ _ _ _ ↦ add_mem) fun s0 y hy ↦ by
      refine span_induction (fun x hx ↦ subset_span <| by exact ⟨x, hx, y, hy, rfl⟩) ?_ ?_ ?_
        (hs ▸ mem_top : s0 ∈ span R s)
      · rw [zero_smul]; apply zero_mem
      · intro _ _ _ _; rw [add_smul]; apply add_mem
      · intro r s0 _ hy; rw [IsScalarTower.smul_assoc]; exact smul_mem _ r hy

-- The following two lemmas were originally used to prove `span_smul_of_span_eq_top`
-- but are now not needed.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb393b63f16e57c6818b88bd36bda4e5a47ce5af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
