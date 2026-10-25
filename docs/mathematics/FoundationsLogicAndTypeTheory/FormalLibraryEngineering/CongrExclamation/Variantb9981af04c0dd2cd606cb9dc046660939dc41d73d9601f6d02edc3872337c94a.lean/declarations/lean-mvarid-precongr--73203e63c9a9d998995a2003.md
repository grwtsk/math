# Lean.MVarId.preCongr!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63a35a786e62830999655b3c7e88c47ac19ba22ed053a43896ed95ea2ecc0846",
  "kind": "def",
  "lexical_name": "Lean.MVarId.preCongr!",
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
  "slug": "lean-mvarid-precongr--73203e63c9a9d998995a2003",
  "source": {
    "blob": "0e4a2625c94084942c955f6ebbe8a3e686d644a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 649,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantb9981af04c0dd2cd606cb9dc046660939dc41d73d9601f6d02edc3872337c94a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73203e63c9a9d998995a20034c8ab1204153e06f759aff162ef65963b234bc5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantb9981af04c0dd2cd606cb9dc046660939dc41d73d9601f6d02edc3872337c94a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63a35a786e62830999655b3c7e88c47ac19ba22ed053a43896ed95ea2ecc0846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.preCongr! (mvarId : MVarId) (tryClose : Bool) : MetaM (Option MVarId) := do
  -- Next, turn `HEq` and `Iff` into `Eq`
  let mvarId ← mvarId.heqOfEq
  if tryClose then
    -- This is a good time to check whether we have a relevant hypothesis.
    if ← mvarId.assumptionCore then return none
  let mvarId ← mvarId.iffOfEq
  if tryClose then
    -- Now try definitional equality. No need to try `mvarId.hrefl` since we already did `heqOfEq`.
    -- We allow synthetic opaque metavariables to be assigned to fill in `x = _` goals that might
    -- appear (for example, due to using `convert` with placeholders).
    try withAssignableSyntheticOpaque mvarId.refl; return none catch _ => pure ()
    -- Now we go for (heterogeneous) equality via subsingleton considerations
    if ← Lean.Meta.fastSubsingletonElim mvarId then return none
    if ← mvarId.proofIrrelHeq then return none
  return some mvarId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantb9981af04c0dd2cd606cb9dc046660939dc41d73d9601f6d02edc3872337c94a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantb9981af04c0dd2cd606cb9dc046660939dc41d73d9601f6d02edc3872337c94a.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e4a2625c94084942c955f6ebbe8a3e686d644a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
