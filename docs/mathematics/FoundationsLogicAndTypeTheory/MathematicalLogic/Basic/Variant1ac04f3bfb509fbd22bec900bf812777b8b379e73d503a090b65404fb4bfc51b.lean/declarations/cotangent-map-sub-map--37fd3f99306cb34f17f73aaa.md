# Cotangent.map_sub_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13285483-9c8d-12e7-5b44-4590591aec9e",
  "kind": "lemma",
  "lexical_name": "Cotangent.map_sub_map",
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
  "slug": "cotangent-map-sub-map--37fd3f99306cb34f17f73aaa",
  "source": {
    "blob": "b3b2e610fba789dd6a09d665dc8fb2346fd8a9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37fd3f99306cb34f17f73aaa3d4cbb10bb9e7d60e2c0f59ec118870e88ed4d55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13285483-9c8d-12e7-5b44-4590591aec9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cotangent.map_sub_map (f g : Hom P P') :
    map f - map g = (f.sub g) ∘ₗ P.cotangentComplex := by
  ext x
  obtain ⟨x, rfl⟩ := mk_surjective x
  simp only [LinearMap.sub_apply, map_mk, LinearMap.coe_comp, Function.comp_apply,
    cotangentComplex_mk, Hom.sub_tmul, one_smul, val_mk]
  apply (Ideal.cotangentEquivIdeal _).injective
  ext
  simp only [val_sub, val_mk, map_sub, AddSubgroupClass.coe_sub, Ideal.cotangentEquivIdeal_apply,
    Ideal.toCotangent_to_quotient_square, Submodule.mkQ_apply, Ideal.Quotient.mk_eq_mk,
    Hom.subToKer_apply_coe, Hom.toAlgHom_apply]

variable (P) in
/-- The projection map from the relative cotangent space to the module of differentials. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3b2e610fba789dd6a09d665dc8fb2346fd8a9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
