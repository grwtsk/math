# injectivePresentationOfMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1685270c50212cfdf61389228dc164c3dfd47e7fb8b743816bdf2bdd30f8df6",
  "kind": "def",
  "lexical_name": "injectivePresentationOfMap",
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
  "slug": "injectivepresentationofmap--e9652d9218272a3d7fa2abbc",
  "source": {
    "blob": "748efc8adb0bfc020bd783b7c35067c2c6919acb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 297,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9652d9218272a3d7fa2abbccb2b5ce85c559255bd7d4000f87d5691b89910c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1685270c50212cfdf61389228dc164c3dfd47e7fb8b743816bdf2bdd30f8df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def injectivePresentationOfMap (adj : F ⊣ G)
    [F.PreservesMonomorphisms] [F.ReflectsMonomorphisms] (X : C)
    (I : InjectivePresentation <| F.obj X) :
    InjectivePresentation X where
  J := G.obj I.J
  injective := Injective.injective_of_adjoint adj _
  f := adj.homEquiv _ _ I.f

end Adjunction

/--
[Lemma 3.8](https://ncatlab.org/nlab/show/injective+object#preservation_of_injective_objects)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `748efc8adb0bfc020bd783b7c35067c2c6919acb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
