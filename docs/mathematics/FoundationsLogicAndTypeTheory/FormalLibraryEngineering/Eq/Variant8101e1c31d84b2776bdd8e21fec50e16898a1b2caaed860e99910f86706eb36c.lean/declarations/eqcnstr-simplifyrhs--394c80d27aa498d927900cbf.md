# EqCnstr.simplifyRHS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dcf4b127b9e3e7d50286d76b973743301b00ae2910c2f06a7abf08505f9e01e",
  "kind": "def",
  "lexical_name": "EqCnstr.simplifyRHS",
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
  "slug": "eqcnstr-simplifyrhs--394c80d27aa498d927900cbf",
  "source": {
    "blob": "f46beb9bb2ba3bc882d85252c962cbd3689e9475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 403,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:394c80d27aa498d927900cbfee4a1e5806900eb2b41c7c6270dba8bd50db4674",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dcf4b127b9e3e7d50286d76b973743301b00ae2910c2f06a7abf08505f9e01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EqCnstr.simplifyRHS (c : EqCnstr) : ACM EqCnstr := do
  let comm ← isCommutative
  let idempotent ← isIdempotent
  let neutral ← hasNeutral
  let mut c := c
  let mut progress := true
  while progress do
    progress := false
    incSteps
    if (← checkMaxSteps) then return c
    if neutral && c.rhs.contains 0 then
      let rhs := c.rhs.erase0
      if rhs != c.rhs then
        c := { c with rhs, h := .erase0_rhs c }
        progress := true
    if idempotent then
      let rhs := c.rhs.eraseDup
      if rhs != c.rhs then
        c := { c with rhs, h := .erase_dup_rhs c }
        progress := true
    if comm then
      if let some (c', r) ← c.rhs.findSimpAC? then
        c := c.simplifyRhsWithAC c' r
        progress := true
    else
      if let some (c', r) ← c.rhs.findSimpA? then
        c := c.simplifyRhsWithA c' r
        progress := true
  return c

/--
Data for equality propagation. We maintain a mapping from sequences to `EqData`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant8101e1c31d84b2776bdd8e21fec50e16898a1b2caaed860e99910f86706eb36c.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46beb9bb2ba3bc882d85252c962cbd3689e9475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
