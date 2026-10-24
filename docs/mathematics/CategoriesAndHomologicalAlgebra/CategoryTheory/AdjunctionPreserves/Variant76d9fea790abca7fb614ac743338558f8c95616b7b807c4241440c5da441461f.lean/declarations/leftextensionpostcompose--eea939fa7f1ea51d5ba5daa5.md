# leftExtensionPostcompose₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ecce2b86ebce7ea57f794b29593cffd674f0de1df330bb684e17a8343cdf1f6",
  "kind": "def",
  "lexical_name": "leftExtensionPostcompose₂",
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
  "slug": "leftextensionpostcompose--eea939fa7f1ea51d5ba5daa5",
  "source": {
    "blob": "74ecd308988766effa8934546f93d79faacde091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant76d9fea790abca7fb614ac743338558f8c95616b7b807c4241440c5da441461f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eea939fa7f1ea51d5ba5daa52fa1116e72689e36e5b1691652764ae7f6ba2a80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant76d9fea790abca7fb614ac743338558f8c95616b7b807c4241440c5da441461f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ecce2b86ebce7ea57f794b29593cffd674f0de1df330bb684e17a8343cdf1f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftExtensionPostcompose₂ :
    LeftExtension.postcompose₂ L F G₁ ⊣ adj.leftExtensionPostCompose₂RightAdjoint F L where
  unit.app E := StructuredArrow.homMk (whiskerLeft E.right adj.unit)
  counit.app E := StructuredArrow.homMk (whiskerLeft E.right adj.counit)

include adj in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant76d9fea790abca7fb614ac743338558f8c95616b7b807c4241440c5da441461f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant76d9fea790abca7fb614ac743338558f8c95616b7b807c4241440c5da441461f.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74ecd308988766effa8934546f93d79faacde091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
