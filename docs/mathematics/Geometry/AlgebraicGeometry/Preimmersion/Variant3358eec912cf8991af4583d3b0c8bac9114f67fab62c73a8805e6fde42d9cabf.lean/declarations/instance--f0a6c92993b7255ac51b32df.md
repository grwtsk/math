# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c501521cb2ecc9ee74b656c3a5f50c183701d6ad9e826b2b334fed502734836",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f0a6c92993b7255ac51b32df",
  "source": {
    "blob": "f09ce48e6f7dbfaf58e0531aaee8c95541c04e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 108,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0a6c92993b7255ac51b32df25f35211eb7cbe06362b39d1e388bbbb17a6f7ee",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c501521cb2ecc9ee74b656c3a5f50c183701d6ad9e826b2b334fed502734836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsStableUnderBaseChange @IsPreimmersion := by
  refine .mk' fun X Y Z f g _ _ ↦ ?_
  have := pullback_fst (P := @SurjectiveOnStalks) f g inferInstance
  constructor
  let L (x : (pullback f g :)) : { x : X × Y | f.base x.1 = g.base x.2 } :=
    ⟨⟨(pullback.fst f g).base x, (pullback.snd f g).base x⟩,
    by simp only [Set.mem_setOf, ← Scheme.comp_base_apply, pullback.condition]⟩
  have : IsEmbedding L := IsEmbedding.of_comp (by fun_prop) continuous_subtype_val
    (SurjectiveOnStalks.isEmbedding_pullback f g)
  exact IsEmbedding.subtypeVal.comp ((TopCat.pullbackHomeoPreimage _ f.continuous _
    g.isEmbedding).isEmbedding.comp this)

end IsPreimmersion

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Preimmersion/Variant3358eec912cf8991af4583d3b0c8bac9114f67fab62c73a8805e6fde42d9cabf.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09ce48e6f7dbfaf58e0531aaee8c95541c04e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
