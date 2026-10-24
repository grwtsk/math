# overMapPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:143164044a57ffd13a023596c759e74488f2da9328b4c406a7c824112df11ae9",
  "kind": "abbrev",
  "lexical_name": "overMapPullback",
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
  "slug": "overmappullback--70abe76e87c9ef3e37006cb9",
  "source": {
    "blob": "b7944f8102be90011ddb49accc6d9d6094b9bcf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70abe76e87c9ef3e37006cb989680bfd914bfc01211bd4d9de096d094ad2dd83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:143164044a57ffd13a023596c759e74488f2da9328b4c406a7c824112df11ae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev overMapPullback (A : Type u') [Category.{v'} A] {X Y : C} (f : X ⟶ Y) :
    Sheaf (J.over Y) A ⥤ Sheaf (J.over X) A :=
  (Over.map f).sheafPushforwardContinuous _ _ _

end GrothendieckTopology

variable {J}

/-- Given `F : Sheaf J A` and `X : C`, this is the pullback of `F` on `J.over X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7944f8102be90011ddb49accc6d9d6094b9bcf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
