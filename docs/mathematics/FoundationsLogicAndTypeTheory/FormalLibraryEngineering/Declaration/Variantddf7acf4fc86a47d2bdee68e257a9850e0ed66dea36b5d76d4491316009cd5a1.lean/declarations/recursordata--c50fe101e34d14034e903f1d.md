# recursorData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6cfe26c74160e2fc47186c965cd0d1717ae4775a94553e9e7ae911f12daece7",
  "kind": "def",
  "lexical_name": "recursorData",
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
  "slug": "recursordata--c50fe101e34d14034e903f1d",
  "source": {
    "blob": "f4d1b39226e47fb31b6f09cca9adb82a2a60f66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c50fe101e34d14034e903f1d0334151594ec15aee0ea49869f306f08abe09f13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6cfe26c74160e2fc47186c965cd0d1717ae4775a94553e9e7ae911f12daece7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def recursorData
    (emitter : EventEmitter) (parameters : List Name) : ConstantInfo → IO Json
  | .recInfo value => do
      let mut rules := #[]
      for rule in value.rules do
        let expression ← emitExpression emitter parameters rule.rhs
        rules := rules.push <| Json.mkObj [
          ("constructor", toJson rule.ctor.toString),
          ("numFields", toJson rule.nfields),
          ("rhsExpressionHandle", toJson expression.handle)
        ]
      return Json.mkObj [
        ("isUnsafe", toJson value.isUnsafe),
        ("mutualInductives", toJson (value.all.toArray.map Name.toString)),
        ("numIndices", toJson value.numIndices),
        ("numMinors", toJson value.numMinors),
        ("numMotives", toJson value.numMotives),
        ("numParams", toJson value.numParams),
        ("rules", toJson rules),
        ("supportsK", toJson value.k)
      ]
  | _ => return Json.null

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4d1b39226e47fb31b6f09cca9adb82a2a60f66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
