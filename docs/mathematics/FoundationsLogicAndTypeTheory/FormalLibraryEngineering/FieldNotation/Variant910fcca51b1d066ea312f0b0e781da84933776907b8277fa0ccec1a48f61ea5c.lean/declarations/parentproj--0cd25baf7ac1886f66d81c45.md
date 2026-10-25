# parentProj?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07cb62703aefdc438a73bdf2c821bfc2ea0f6d745e95883a662acb6026653767",
  "kind": "def",
  "lexical_name": "parentProj?",
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
  "slug": "parentproj--0cd25baf7ac1886f66d81c45",
  "source": {
    "blob": "f0167df68da7e63354c0a316102a9c15e51ab122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cd25baf7ac1886f66d81c45963be8629b16c07e3516de038829b78e76999ed9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07cb62703aefdc438a73bdf2c821bfc2ea0f6d745e95883a662acb6026653767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parentProj? (explicit : Bool) (e : Expr) : MetaM (Option Name) := do
  unless e.isApp do return none
  let .const c .. := e.getAppFn | return none
  let some (field, numParams, isTrueProj, isParentProj, _isFromClass) ← projInfo c | return none
  if isTrueProj && isParentProj && (!explicit || numParams == 0) && e.getAppNumArgs == numParams + 1 then
    return some field
  else
    return none

/--
Returns `true` if `e` is an application that is a projection to a parent structure.
If `explicit` is `true`, then requires that the structure have no parameters.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0167df68da7e63354c0a316102a9c15e51ab122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
