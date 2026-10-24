# set_lintegral_preimage_condDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ffe65e35990384bf00c3bd697b65a647e3246dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b650f22-21bf-d361-6a83-b6159aa41a83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edc78165-7633-d8d8-3216-9bd2d7582bf0",
  "kind": "theorem",
  "lexical_name": "set_lintegral_preimage_condDistrib",
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
  "slug": "set-lintegral-preimage-conddistrib--22249a342820b41e2bf037e4",
  "source": {
    "blob": "2ffe65e35990384bf00c3bd697b65a647e3246dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 175,
    "path": "GRWTSK/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22249a342820b41e2bf037e421a7824de8a2e9bee7d3fc22cfa76c187af77886",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edc78165-7633-d8d8-3216-9bd2d7582bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_preimage_condDistrib (hX : Measurable X) (hY : AEMeasurable Y μ)
    (hs : MeasurableSet s) (ht : MeasurableSet t) :
    ∫⁻ a in X ⁻¹' t, condDistrib Y X μ (X a) s ∂μ = μ (X ⁻¹' t ∩ Y ⁻¹' s) := by
  -- Porting note: need to massage the LHS integrand into the form accepted by `lintegral_comp`
  -- (`rw` does not see that the two forms are defeq)
  conv_lhs => arg 2; change (fun a => ((condDistrib Y X μ) a) s) ∘ X
  rw [lintegral_comp (kernel.measurable_coe _ hs) hX, condDistrib, ← Measure.restrict_map hX ht, ←
    Measure.fst_map_prod_mk₀ hY, set_lintegral_condKernel_eq_measure_prod _ ht hs,
    Measure.map_apply_of_aemeasurable (hX.aemeasurable.prod_mk hY) (ht.prod hs), mk_preimage_prod]
#align probability_theory.set_lintegral_preimage_cond_distrib ProbabilityTheory.set_lintegral_preimage_condDistrib

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondDistrib/Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffe65e35990384bf00c3bd697b65a647e3246dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
