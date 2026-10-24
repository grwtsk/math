# IsGrothendieckAbelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f544614dfd5d4ef0cd7026a50b39c2eec6f71560f204130ba433d88949afdf5b",
  "kind": "class",
  "lexical_name": "IsGrothendieckAbelian",
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
  "slug": "isgrothendieckabelian--65dbaefde992193cc2b2eb95",
  "source": {
    "blob": "2b4b87c3bed0d68f325d6780d7ef61563b8f37dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65dbaefde992193cc2b2eb95daf92d3150748c5000a78f9d2a2725b591e7155d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f544614dfd5d4ef0cd7026a50b39c2eec6f71560f204130ba433d88949afdf5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsGrothendieckAbelian [Abelian C] : Prop where
  locallySmall : LocallySmall.{w} C := by infer_instance
  hasFilteredColimitsOfSize : HasFilteredColimitsOfSize.{w, w} C := by infer_instance
  ab5OfSize : AB5OfSize.{w, w} C := by infer_instance
  hasSeparator : HasSeparator C := by infer_instance

attribute [instance] IsGrothendieckAbelian.locallySmall
  IsGrothendieckAbelian.hasFilteredColimitsOfSize IsGrothendieckAbelian.ab5OfSize
  IsGrothendieckAbelian.hasSeparator

variable {C} {D} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4b87c3bed0d68f325d6780d7ef61563b8f37dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
