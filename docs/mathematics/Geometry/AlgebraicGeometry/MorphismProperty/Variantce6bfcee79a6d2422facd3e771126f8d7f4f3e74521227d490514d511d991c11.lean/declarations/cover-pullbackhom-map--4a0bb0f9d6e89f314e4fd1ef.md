# Cover.pullbackHom_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6747f40d82e02f9e85d0bf84aae3009259a7d2e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7a19166-3670-6610-88ce-662975c4a5d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ed9a1a6-d91c-7993-9f25-24b0b7ae9afa",
  "kind": "lemma",
  "lexical_name": "Cover.pullbackHom_map",
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
  "slug": "cover-pullbackhom-map--4a0bb0f9d6e89f314e4fd1ef",
  "source": {
    "blob": "6747f40d82e02f9e85d0bf84aae3009259a7d2e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a0bb0f9d6e89f314e4fd1ef4c54222f68bee0fe315e25288af5bcd662662ba5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed9a1a6-d91c-7993-9f25-24b0b7ae9afa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cover.pullbackHom_map [P.IsStableUnderBaseChange] [IsJointlySurjectivePreserving P]
    {X W : Scheme.{u}} (𝒰 : X.Cover (precoverage P)) (f : W ⟶ X)
    [∀ (x : 𝒰.I₀), HasPullback f (𝒰.f x)] (i) :
    𝒰.pullbackHom f i ≫ 𝒰.f i = (𝒰.pullback₁ f).f i ≫ f := pullback.condition.symm

/--
An affine cover of `X` consists of a jointly surjective family of maps into `X` from
spectra of rings.

Note: The `map_prop` field is equipped with a default argument `by infer_instance`. In general
this causes worse error messages, but in practice `P` is mostly defined via `class`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6747f40d82e02f9e85d0bf84aae3009259a7d2e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
