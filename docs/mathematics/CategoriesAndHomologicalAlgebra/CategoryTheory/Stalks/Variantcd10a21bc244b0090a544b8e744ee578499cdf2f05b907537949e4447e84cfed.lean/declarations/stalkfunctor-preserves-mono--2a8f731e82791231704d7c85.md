# stalkFunctor_preserves_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bc93a8154d6e9a16677639b905c54d4fccec3bc9e08609e946253509d2b8300",
  "kind": "instance",
  "lexical_name": "stalkFunctor_preserves_mono",
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
  "slug": "stalkfunctor-preserves-mono--2a8f731e82791231704d7c85",
  "source": {
    "blob": "6fc734f866e0e2415cda5e63762f4af745cb8ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 512,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a8f731e82791231704d7c853feafa1484e6c6589754e61e98a65dc1b56f8972",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bc93a8154d6e9a16677639b905c54d4fccec3bc9e08609e946253509d2b8300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance stalkFunctor_preserves_mono (x : X) :
    Functor.PreservesMonomorphisms (Sheaf.forget.{v} C X ⋙ stalkFunctor C x) :=
  ⟨@fun _𝓐 _𝓑 f _ =>
    ConcreteCategory.mono_of_injective _ <|
      (app_injective_iff_stalkFunctor_map_injective f.1).mpr
        (fun c =>
          (ConcreteCategory.mono_iff_injective_of_preservesPullback (f.1.app (op c))).mp
            ((NatTrans.mono_iff_mono_app f.1).mp
                (CategoryTheory.presheaf_mono_of_mono ..) <|
              op c))
        x⟩

include instCC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fc734f866e0e2415cda5e63762f4af745cb8ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
