# range_toFun_comp_weights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e0bcbe4-ab0d-1080-1ba4-f09ad2796cec",
  "kind": "lemma",
  "lexical_name": "range_toFun_comp_weights",
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
  "slug": "range-tofun-comp-weights--7bb52eeb4c26302f7e9e223a",
  "source": {
    "blob": "04c87a12e5801673221adb8bc4c459e05bab0220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bb52eeb4c26302f7e9e223ae80cc22631e57027e4f90cc755954d340d04ce4d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e0bcbe4-ab0d-1080-1ba4-f09ad2796cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_toFun_comp_weights [Fintype X] :
    Set.range (fun t ↦ t.weights : StdSimplex R X → (X → R)) =
    (⋂ (i : X), { s | 0 ≤ s i }) ∩ { s | ∑ i, s i = 1 } := by
  ext s
  simp only [Set.mem_range, Set.mem_inter_iff, Set.mem_iInter, Set.mem_ofPred_eq]
  refine ⟨?_, ?_⟩
  · rintro ⟨s, rfl⟩
    exact ⟨s.weights_nonneg, by simp⟩
  · rintro ⟨h₁, h₂⟩
    exact ⟨{
      weights := equivFunOnFinite.symm s
      nonneg m := by simpa using h₁ m
      total := by simpa [Finsupp.sum_fintype] }, by simp⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c87a12e5801673221adb8bc4c459e05bab0220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
