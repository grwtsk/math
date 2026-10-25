# fieldNotationCandidate?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3af9d3478d44804188a07f377a3ac8470e8f06ff4d6cf3b300e0a7efdc1bcddc",
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
  "slug": "fieldnotationcandidate--43b3b4c00c621e4b7e13ca02",
  "source": {
    "blob": "432745b9e6f1b8c5bf6f0bd34f0af9fd30fa65fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43b3b4c00c621e4b7e13ca02da84ac3f486f5e3746ff042c5f5fd92d331d50d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3af9d3478d44804188a07f377a3ac8470e8f06ff4d6cf3b300e0a7efdc1bcddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–152.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `432745b9e6f1b8c5bf6f0bd34f0af9fd30fa65fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
