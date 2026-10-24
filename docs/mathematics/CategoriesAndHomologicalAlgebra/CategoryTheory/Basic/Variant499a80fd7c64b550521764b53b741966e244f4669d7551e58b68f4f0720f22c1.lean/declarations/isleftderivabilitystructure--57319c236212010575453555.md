# IsLeftDerivabilityStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:201dcb1832437885913d9a91ad4f81ba0952a89797d95c0409686c0208389bfb",
  "kind": "class",
  "lexical_name": "IsLeftDerivabilityStructure",
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
  "slug": "isleftderivabilitystructure--57319c236212010575453555",
  "source": {
    "blob": "8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57319c236212010575453555a7802a5b696c7b38098ad242dd667cc676764e3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:201dcb1832437885913d9a91ad4f81ba0952a89797d95c0409686c0208389bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsLeftDerivabilityStructure : Prop where
  hasLeftResolutions : Φ.HasLeftResolutions := by infer_instance
  /-- Do not use this field directly: use the more general
  `guitartExact_of_isLeftDerivabilityStructure` instead,
  see also the lemma `isLeftDerivabilityStructure_iff`. -/
  guitartExact' : TwoSquare.GuitartExact ((Φ.catCommSq W₁.Q W₂.Q).iso).inv

attribute [instance] IsLeftDerivabilityStructure.hasLeftResolutions
  IsLeftDerivabilityStructure.guitartExact'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
