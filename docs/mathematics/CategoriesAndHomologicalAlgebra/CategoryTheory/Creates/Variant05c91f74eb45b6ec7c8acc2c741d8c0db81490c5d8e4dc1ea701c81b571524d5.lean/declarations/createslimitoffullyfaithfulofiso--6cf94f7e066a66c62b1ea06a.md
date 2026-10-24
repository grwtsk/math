# createsLimitOfFullyFaithfulOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66a2577d93f37d6130d98013087055208e04bae0f5ec8c1469daa927f5580f79",
  "kind": "def",
  "lexical_name": "createsLimitOfFullyFaithfulOfIso",
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
  "slug": "createslimitoffullyfaithfulofiso--6cf94f7e066a66c62b1ea06a",
  "source": {
    "blob": "30b3282de3e69f12c3488b168128f22f9b751d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 330,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant05c91f74eb45b6ec7c8acc2c741d8c0db81490c5d8e4dc1ea701c81b571524d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cf94f7e066a66c62b1ea06a4d6281ade3a924fc3f6a9d0160607a78196167b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant05c91f74eb45b6ec7c8acc2c741d8c0db81490c5d8e4dc1ea701c81b571524d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66a2577d93f37d6130d98013087055208e04bae0f5ec8c1469daa927f5580f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsLimitOfFullyFaithfulOfIso {K : J ⥤ C} {F : C ⥤ D} [F.Full] [F.Faithful]
    [HasLimit (K ⋙ F)] (X : C) (i : F.obj X ≅ limit (K ⋙ F)) : CreatesLimit K F :=
  createsLimitOfFullyFaithfulOfIso' (limit.isLimit _) X i

/-- A fully faithful functor that preserves a limit that exists also creates the limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant05c91f74eb45b6ec7c8acc2c741d8c0db81490c5d8e4dc1ea701c81b571524d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant05c91f74eb45b6ec7c8acc2c741d8c0db81490c5d8e4dc1ea701c81b571524d5.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b3282de3e69f12c3488b168128f22f9b751d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
