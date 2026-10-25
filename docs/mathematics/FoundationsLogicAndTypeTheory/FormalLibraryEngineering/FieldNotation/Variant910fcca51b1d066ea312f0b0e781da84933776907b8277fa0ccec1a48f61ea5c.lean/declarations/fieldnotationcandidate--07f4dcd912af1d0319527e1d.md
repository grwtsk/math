# fieldNotationCandidate?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71d559347d358e2393a934fbe89ea6eb779e5b6536f20a633af6cb1c9303cb30",
  "kind": "def",
  "lexical_name": "fieldNotationCandidate?",
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
  "slug": "fieldnotationcandidate--07f4dcd912af1d0319527e1d",
  "source": {
    "blob": "f0167df68da7e63354c0a316102a9c15e51ab122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07f4dcd912af1d0319527e1de4b1d6c059667cc7313e439b444f779718bd9503",
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

Occurrence: `declaration:71d559347d358e2393a934fbe89ea6eb779e5b6536f20a633af6cb1c9303cb30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fieldNotationCandidate? (f : Expr) (args : Array Expr) (useGeneralizedFieldNotation : Bool) : MetaM (Option (Name × Nat)) := do
  let env ← getEnv
  let .const c .. := f.consumeMData | return none
  if (← isInaccessiblePrivateName c) then
    return none
  if c.getPrefix.isAnonymous then return none
  -- If there is `pp_nodot` on this function, then don't use field notation for it.
  if hasPPNoDotAttribute env c then
    return none
  -- Handle structure projections
  if let some (field, numParams, _isTrueProj, isParentProj, isFromClass) ← projInfo c then
    -- Don't use field notation for classes, unless it is a parent projection.
    unless !isFromClass || isParentProj do return none
    unless numParams < args.size do return none
    unless ← testAppOf (← inferType args[numParams]!) c.getPrefix do return none
    return (field, numParams)
  -- Handle generalized field notation
  if useGeneralizedFieldNotation then
    try
      -- Avoid field notation for theorems
      guard !(← isProof f)
      return ← generalizedFieldInfo c args
    catch _ => pure ()
  -- It's not handled by any of the above.
  return none

/--
Returns the field name of the projection if `e` is an application that is a projection to a parent structure.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0167df68da7e63354c0a316102a9c15e51ab122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
