# isLimitOfFan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6832c4e7c66460bda83620b630ae44f18d1e7d66134a92204c9cb523f148535d",
  "kind": "def",
  "lexical_name": "isLimitOfFan",
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
  "slug": "islimitoffan--f7cf2683c6329239f35e047a",
  "source": {
    "blob": "266e539485a6de98696100c1abf35ee734f89491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbackOfTerminal/Variant00fb9dc45585b3b9abb586aac263709ff897cf7b2d146d3561a44e82fb078a2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7cf2683c6329239f35e047a333d87772c90446c7ea82bc355dad7177929b7fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbackOfTerminal/Variant00fb9dc45585b3b9abb586aac263709ff897cf7b2d146d3561a44e82fb078a2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6832c4e7c66460bda83620b630ae44f18d1e7d66134a92204c9cb523f148535d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfFan (hc : IsLimit c) (hB : IsTerminal B) :
    IsLimit (ofFan arrows c hB) :=
  IsLimit.mk _
    (fun s ↦ hc.lift s.toFan)
    (fun s ↦ hB.hom_ext _ _)
    (fun s i ↦ hc.fac s.toFan (.mk i))
    (fun s m _ hm ↦ hc.hom_ext (fun ⟨i⟩ ↦ by simpa using! hm i))

end WidePullbackCone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbackOfTerminal/Variant00fb9dc45585b3b9abb586aac263709ff897cf7b2d146d3561a44e82fb078a2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbackOfTerminal/Variant00fb9dc45585b3b9abb586aac263709ff897cf7b2d146d3561a44e82fb078a2a.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `266e539485a6de98696100c1abf35ee734f89491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
