# weightedVSubOfPoint_eq_of_weights_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e47e859-5dd6-2364-eec9-89b0f260d074",
  "kind": "theorem",
  "lexical_name": "weightedVSubOfPoint_eq_of_weights_eq",
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
  "slug": "weightedvsubofpoint-eq-of-weights-eq--1b0f9c00016494270fd3572a",
  "source": {
    "blob": "0a6ac907ae6e17699091ab4d76849afd971415f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b0f9c00016494270fd3572ac0e7adac2a0df45784145c5e3c2817c660bbb6c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e47e859-5dd6-2364-eec9-89b0f260d074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedVSubOfPoint_eq_of_weights_eq (p : ι → P) (j : ι) (w₁ w₂ : ι → k)
    (hw : ∀ i, i ≠ j → w₁ i = w₂ i) :
    s.weightedVSubOfPoint p (p j) w₁ = s.weightedVSubOfPoint p (p j) w₂ := by
  simp only [Finset.weightedVSubOfPoint_apply]
  congr
  ext i
  cases' eq_or_ne i j with h h
  · simp [h]
  · simp [hw i h]
#align finset.weighted_vsub_of_point_eq_of_weights_eq Finset.weightedVSubOfPoint_eq_of_weights_eq

/-- The weighted sum is independent of the base point when the sum of
the weights is 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantc2432810a12901d74451e33ad4dcfc0858104f5f1cc06aa18693c8a608b71410.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a6ac907ae6e17699091ab4d76849afd971415f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
