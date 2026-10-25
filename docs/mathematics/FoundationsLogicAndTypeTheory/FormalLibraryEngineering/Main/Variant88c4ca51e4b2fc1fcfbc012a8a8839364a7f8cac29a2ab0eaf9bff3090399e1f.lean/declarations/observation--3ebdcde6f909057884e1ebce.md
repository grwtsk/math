# observation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d7c40b791e6e3ea756e09ad0d2406fe0451f3ead70c3a6877c9df8a781f3165",
  "kind": "def",
  "lexical_name": "observation",
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
  "slug": "observation--3ebdcde6f909057884e1ebce",
  "source": {
    "blob": "fa85bb3fa569923ae93a4dab96b54f81c8c4cca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ebdcde6f909057884e1ebcea773d0e8ccbbdf1f457036e408d5ddea00cfe846",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d7c40b791e6e3ea756e09ad0d2406fe0451f3ead70c3a6877c9df8a781f3165`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def observation (env : Environment) (info : ConstantInfo) : MetaM Json := do
  let axioms ← collectAxioms info.name
  let typeText ← ppExpr info.type
  let proof ← isProp info.type
  let typeBinders ← binders info.type
  let value := info.value? (allowOpaque := true)
  let valueConstants := value.map constants |>.getD #[]
  let dependencyClosure ← match closure env [info.name] with
    | .ok result => pure result
    | .error _ => throwError "transitive constant audit failed"
  return Json.mkObj [
    ("name", toJson info.name.toString), ("nameStructure", nameJson info.name),
    ("module", toJson (moduleFor env info.name)), ("kind", toJson (kind info)),
    ("levelParameters", .arr (info.levelParams.toArray.map nameJson)),
    ("type", exprJson info.type), ("typeDisplay", toJson typeText.pretty),
    ("value", value.map exprJson |>.getD .null),
    ("isProposition", toJson proof), ("typeBinders", .arr typeBinders),
    ("typeBinderNormalization", "Lean.Meta.forallTelescopeReducing"),
    ("directTypeConstants", toJson ((constants info.type).map Name.toString)),
    ("directValueConstants", toJson (valueConstants.map Name.toString)),
    ("transitiveAxioms", toJson (axioms.map Name.toString)),
    ("dependencyClosure", dependencyClosure),
    ("isUnsafe", toJson info.isUnsafe), ("isPartial", toJson info.isPartial)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant88c4ca51e4b2fc1fcfbc012a8a8839364a7f8cac29a2ab0eaf9bff3090399e1f.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa85bb3fa569923ae93a4dab96b54f81c8c4cca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
