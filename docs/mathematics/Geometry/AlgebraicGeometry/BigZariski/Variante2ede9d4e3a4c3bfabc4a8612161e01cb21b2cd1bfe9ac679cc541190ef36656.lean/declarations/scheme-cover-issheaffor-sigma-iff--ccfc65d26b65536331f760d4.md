# Scheme.Cover.isSheafFor_sigma_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb1214b6b3e6ec4848d116f79d33f7c223c9f053",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92269002-9aa1-7a42-5309-5fd0f4d8599c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b620dfd1-769a-f61a-2759-e5d54e99cc13",
  "kind": "lemma",
  "lexical_name": "Scheme.Cover.isSheafFor_sigma_iff",
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
  "slug": "scheme-cover-issheaffor-sigma-iff--ccfc65d26b65536331f760d4",
  "source": {
    "blob": "fb1214b6b3e6ec4848d116f79d33f7c223c9f053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 143,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccfc65d26b65536331f760d46aa297be3eae31fa7ebe2f892bce66ef004daf43",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b620dfd1-769a-f61a-2759-e5d54e99cc13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Cover.isSheafFor_sigma_iff {P : MorphismProperty Scheme.{u}}
    {F : Scheme.{u}ᵒᵖ ⥤ Type*} [IsZariskiLocalAtSource P]
    (hF : Presieve.IsSheaf Scheme.zariskiTopology F)
    {S : Scheme.{u}} (𝒰 : S.Cover (precoverage P)) [Finite 𝒰.I₀] :
    Presieve.IsSheafFor F (.ofArrows 𝒰.sigma.X 𝒰.sigma.f) ↔
      Presieve.IsSheafFor F (.ofArrows 𝒰.X 𝒰.f) := by
  have : PreservesLimitsOfShape (Discrete (𝒰.I₀ × 𝒰.I₀)) F :=
    preservesLimitsOfShape_discrete_of_isSheaf_zariskiTopology hF
  have : PreservesLimitsOfShape (Discrete 𝒰.I₀) F :=
    preservesLimitsOfShape_discrete_of_isSheaf_zariskiTopology hF
  let c : Cofan 𝒰.X := Cofan.mk _ (Sigma.ι 𝒰.X)
  rw [← Presieve.isSheafFor_sigmaDesc_iff 𝒰.f (coproductIsCoproduct _)
    (FinitaryExtensive.isVanKampen_finiteCoproducts (coproductIsCoproduct _)).isUniversal]
  congr!
  rw [← PreZeroHypercover.presieve₀, 𝒰.presieve₀_sigma]
  rfl

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variante2ede9d4e3a4c3bfabc4a8612161e01cb21b2cd1bfe9ac679cc541190ef36656.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb1214b6b3e6ec4848d116f79d33f7c223c9f053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
