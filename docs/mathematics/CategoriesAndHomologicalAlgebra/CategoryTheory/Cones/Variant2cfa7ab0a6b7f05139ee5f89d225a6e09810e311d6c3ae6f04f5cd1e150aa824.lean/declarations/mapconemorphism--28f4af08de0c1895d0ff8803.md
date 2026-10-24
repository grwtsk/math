# mapConeMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b6a3594b161f8ad9d0045c7289cf179345279a92a6dc6f8905e6ee0ddabf80c",
  "kind": "def",
  "lexical_name": "mapConeMorphism",
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
  "slug": "mapconemorphism--28f4af08de0c1895d0ff8803",
  "source": {
    "blob": "a8997cfb2981400718cc18c12a426172e6160949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 689,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28f4af08de0c1895d0ff8803616af6e99a4a8a1a7b68eb8d22a1038fb47db474",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b6a3594b161f8ad9d0045c7289cf179345279a92a6dc6f8905e6ee0ddabf80c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapConeMorphism {c c' : Cone F} (f : c ⟶ c') : H.mapCone c ⟶ H.mapCone c' :=
  (Cones.functoriality F H).map f

/-- Given a cocone morphism `c ⟶ c'`, construct a cocone morphism on the mapped cocones
functorially. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant2cfa7ab0a6b7f05139ee5f89d225a6e09810e311d6c3ae6f04f5cd1e150aa824.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8997cfb2981400718cc18c12a426172e6160949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
