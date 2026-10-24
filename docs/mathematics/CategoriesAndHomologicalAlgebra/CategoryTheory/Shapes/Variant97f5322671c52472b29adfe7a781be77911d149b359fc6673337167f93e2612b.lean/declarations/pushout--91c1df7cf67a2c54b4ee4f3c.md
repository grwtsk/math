# Pushout'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b13b7cd84383d73ee256c7443325274274a9e2bc78cdb2988207b560ce10323",
  "kind": "def",
  "lexical_name": "Pushout'",
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
  "slug": "pushout--91c1df7cf67a2c54b4ee4f3c",
  "source": {
    "blob": "ae5f6933d50835813059f1b3b61dd118236aa49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 752,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91c1df7cf67a2c54b4ee4f3c166a13584b95b8d9a4152b55f6c933cb8479a753",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b13b7cd84383d73ee256c7443325274274a9e2bc78cdb2988207b560ce10323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pushout' : Type u := _root_.Quot (Pushout.Rel' f g)

namespace Pushout

/-- The left inclusion in the constructed pushout `Pushout f g`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5f6933d50835813059f1b3b61dd118236aa49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
