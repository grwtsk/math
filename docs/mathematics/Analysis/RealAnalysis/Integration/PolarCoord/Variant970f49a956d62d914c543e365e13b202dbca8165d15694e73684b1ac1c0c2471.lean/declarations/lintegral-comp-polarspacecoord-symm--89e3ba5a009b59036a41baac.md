# lintegral_comp_polarSpaceCoord_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "699dfbcf97b0c0cba6a84ec0e18389dd95211880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d4bfc9b-9482-76cc-2075-15997f3a253d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5130bdc0-bcaf-76e8-29b2-40308f653930",
  "kind": "theorem",
  "lexical_name": "lintegral_comp_polarSpaceCoord_symm",
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
  "slug": "lintegral-comp-polarspacecoord-symm--89e3ba5a009b59036a41baac",
  "source": {
    "blob": "699dfbcf97b0c0cba6a84ec0e18389dd95211880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 338,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89e3ba5a009b59036a41baac4a6bce707e65640d3f6e214262a08ebb39633dfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5130bdc0-bcaf-76e8-29b2-40308f653930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_polarSpaceCoord_symm [NumberField K] (f : mixedSpace K → ℝ≥0∞) :
    ∫⁻ x in (polarSpaceCoord K).target,
      (∏ w : {w // IsComplex w}, .ofReal (x.1 w.1)) * f ((polarSpaceCoord K).symm x) =
        ∫⁻ x, f x := by
  rw [← (volume_preserving_homeoRealMixedSpacePolarSpace K).setLIntegral_comp_preimage_emb
    (homeoRealMixedSpacePolarSpace K).measurableEmbedding,
    ← mixedEmbedding.lintegral_comp_polarCoord_symm, polarSpaceCoord_target,
    ← Homeomorph.image_eq_preimage_symm, Homeomorph.preimage_image,
    mixedEmbedding.polarCoord_target]
  simp_rw [polarSpaceCoord_symm_apply, mixedEmbedding.polarCoord_symm_apply,
    homeoRealMixedSpacePolarSpace_apply_fst_ofIsReal,
    homeoRealMixedSpacePolarSpace_apply_fst_ofIsComplex, homeoRealMixedSpacePolarSpace_apply_snd]

variable {K}

variable {A : Set (mixedSpace K)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699dfbcf97b0c0cba6a84ec0e18389dd95211880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
