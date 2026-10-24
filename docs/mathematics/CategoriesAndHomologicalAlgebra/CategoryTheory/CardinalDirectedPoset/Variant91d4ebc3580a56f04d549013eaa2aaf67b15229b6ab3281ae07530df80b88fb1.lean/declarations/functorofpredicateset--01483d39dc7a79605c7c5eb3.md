# functorOfPredicateSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8d3e7784ef7ca302b6d816c118907d3a8e9058b398aca53b751edbbe774fa94",
  "kind": "def",
  "lexical_name": "functorOfPredicateSet",
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
  "slug": "functorofpredicateset--01483d39dc7a79605c7c5eb3",
  "source": {
    "blob": "9ff6478bcfb8f6cdfe0a091f3c95295ced13edc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01483d39dc7a79605c7c5eb3d32ad1c80590c0808de5de5a0bbf5b3d82505276",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8d3e7784ef7ca302b6d816c118907d3a8e9058b398aca53b751edbbe774fa94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorOfPredicateSet : Subtype P ⥤ CardinalDirectedPoset κ :=
  ObjectProperty.lift _ (PartOrdEmb.functorOfPredicateSet P)
    (fun S ↦ by dsimp; infer_instance)

/-- Given a predicate `P : Set J.obj → Prop` on the underlying type
of `J : CardinalDirectedPoset κ` such that all the subsets satisfying `P`
are `κ`-filtered, this is the cocone with point `J` given
by all the inclusions of the subsets satisfying `P`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff6478bcfb8f6cdfe0a091f3c95295ced13edc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
