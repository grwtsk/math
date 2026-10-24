# variationAux_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2f11ace-99ba-795d-e4ac-6719a76da9ff",
  "kind": "lemma",
  "lexical_name": "variationAux_singleton",
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
  "slug": "variationaux-singleton--2c4cef57d5820f42fb192f05",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 363,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c4cef57d5820f42fb192f05750a3fbfa349ea0c86e5f15d4fe103b2074b7ebc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2f11ace-99ba-795d-e4ac-6719a76da9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma variationAux_singleton (hf : BoundedVariationOn f univ) {a : α} :
    hf.variationAux {a} = hf.vectorMeasure.variation {a} := by
  classical
  have hα : Nonempty α := ⟨a⟩
  simp only [variationAux, Measure.coe_add, Pi.add_apply, variation_vectorMeasure_singleton]
  by_cases ha : IsBot a
  · have hx : ∃ x, IsBot x := ⟨a, ha⟩
    have A : hx.choose = a := le_antisymm (hx.choose_spec _) (ha _)
    suffices hf.measureAux {a} = 0 by simpa [hx, A, leftLim_eq_of_isBot ha, ← enorm_eq_nnnorm]
    simp [measureAux, hα, leftLim_eq_of_isBot ha]
  have : (𝓝[<] a).NeBot := nhdsLT_neBot_of_exists_lt (by simpa [IsBot] using ha)
  have : (if h : ∃ x, IsBot x then ‖Function.rightLim f h.choose - f h.choose‖₊ •
      Measure.dirac h.choose else 0) {a} = 0 := by
    split_ifs with h
    · have : h.choose ≠ a := by grind
      simp [this]
    · simp
  simp [measureAux, hα, this, variationOnFromTo.leftLim_eq hf.rightLim, dist_eq_norm_sub,
    leftLim_rightLim (hf.tendsto_leftLim _), stieltjesFunctionRightLim]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
