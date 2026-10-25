# mkResultPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cc88d82d2a32c41757d9082d8d5fc271fa8f4f0f0bde9b9cb3aa96beab2a2b7",
  "kind": "def",
  "lexical_name": "mkResultPos",
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
  "slug": "mkresultpos--77a1a5a87d6fc86800ad228c",
  "source": {
    "blob": "39e7d57810b3b8d923cd17d6be76c9a3b25165e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77a1a5a87d6fc86800ad228c72ed55c6ac936c2eef6c4b3150acc81fff272041",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cc88d82d2a32c41757d9082d8d5fc271fa8f4f0f0bde9b9cb3aa96beab2a2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkResultPos (pattern : Pattern) : List Nat := Id.run do
  let auxPrefix := `_sym_pre
  -- Initialize "found" mask with arguments that can be synthesized by type class resolution.
  let numArgs := pattern.varTypes.size
  let mut found := if let some varInfos := pattern.varInfos? then
     varInfos.argsInfo.map fun info : ProofInstArgInfo => info.isInstance
  else
     Array.replicate numArgs false
  let auxVars := pattern.varTypes.mapIdx fun i _ => mkFVar ⟨.num auxPrefix i⟩
  -- Collect arguments that occur in the pattern
  for fvarId in collectFVars {} (pattern.pattern.instantiateRev auxVars) |>.fvarIds do
    let .num pre idx := fvarId.name | pure ()
    if pre == auxPrefix then
      found := found.set! idx true
  let argTypes := pattern.varTypes.mapIdx fun i type => type.instantiateRevRange 0 i auxVars
  -- Collect dependent and non-dependent arguments that become new goals
  -- An argument is considered dependent only if there is another goal whose type depends on it.
  let mut deps := #[]
  let mut nonDeps := #[]
  for i in *...numArgs do
    unless found[i]! do
      let auxVar := auxVars[i]!
      let mut isDep := false
      for j in (i+1)...numArgs do
        unless found[j]! do
          let argType := argTypes[j]!
          if argType.containsFVar auxVar.fvarId! then
            isDep := true
            break
      if isDep then
        deps := deps.push i
      else
        nonDeps := nonDeps.push i
  return (nonDeps ++ deps).toList

/--
Creates a `BackwardRule` from a declaration name.

The `num?` parameter optionally limits how many arguments are included in the pattern
(useful for partially applying theorems).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e7d57810b3b8d923cd17d6be76c9a3b25165e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
