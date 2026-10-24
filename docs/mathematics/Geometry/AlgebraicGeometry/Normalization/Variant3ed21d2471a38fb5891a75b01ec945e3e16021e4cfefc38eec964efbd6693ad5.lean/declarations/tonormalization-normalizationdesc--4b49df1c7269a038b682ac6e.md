# toNormalization_normalizationDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94f400bbdee7c7f9ab0e514f588e78c5fb994b24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca24b4de-f813-fa25-99c7-f0c8630ff7fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d5ac1a9-b1f3-b36f-d869-6eb3821b0c68",
  "kind": "lemma",
  "lexical_name": "toNormalization_normalizationDesc",
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
  "slug": "tonormalization-normalizationdesc--4b49df1c7269a038b682ac6e",
  "source": {
    "blob": "94f400bbdee7c7f9ab0e514f588e78c5fb994b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 399,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b49df1c7269a038b682ac6eeb3a1a29227803efed5f75460b8d0e05879979a4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5ac1a9-b1f3-b36f-d869-6eb3821b0c68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toNormalization_normalizationDesc (H : f = f₁ ≫ f₂) :
    f.toNormalization ≫ f.normalizationDesc f₁ f₂ H = f₁ := by
  refine Scheme.Cover.hom_ext (X.openCoverOfIsOpenCover _
    (.comap (iSup_affineOpens_eq_top Y) f.base.hom)) _ _ fun U ↦ ?_
  let := (f.app U.1).hom.toAlgebra
  refine (Scheme.Hom.ι_toNormalization_assoc ..).trans ?_
  dsimp [normalizationOpenCover, normalizationDesc]
  simp only [colimit.ι_desc, ← Spec.map_comp_assoc]
  change (f ⁻¹ᵁ U.1).toSpecΓ ≫ Spec.map (f₁.appLE (f₂ ⁻¹ᵁ U.1) (f ⁻¹ᵁ U.1) (by simp [H])) ≫
    (U.2.preimage f₂).fromSpec = (f ⁻¹ᵁ U.1).ι ≫ f₁
  simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variant3ed21d2471a38fb5891a75b01ec945e3e16021e4cfefc38eec964efbd6693ad5.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f400bbdee7c7f9ab0e514f588e78c5fb994b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
