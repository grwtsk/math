# numeral?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8a32214d38faa7ae43f2400f11222b2f7eb1b390041c5cc74c9394e92bfde75",
  "kind": "def",
  "lexical_name": "numeral?",
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
  "slug": "numeral--8d372db00dd5fe422e8c7bc0",
  "source": {
    "blob": "5d1ca9b45e8f9ed43489e237ae2bdaeb5c33e2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d372db00dd5fe422e8c7bc0b6ab03e86337406ea3ca95d7d10343913345fac9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8a32214d38faa7ae43f2400f11222b2f7eb1b390041c5cc74c9394e92bfde75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def numeral? (e : Expr) : Option Nat :=
  if let some n := e.rawNatLit? then n
  else
    let e := e.consumeMData -- `OfNat` numerals may have `no_index` around them from `ofNat()`
    let f := e.getAppFn
    if !f.isConst then none
    else
      let fName := f.constName!
      if fName == ``Nat.succ && e.getAppNumArgs == 1 then (numeral? e.appArg!).map Nat.succ
      else if fName == ``OfNat.ofNat && e.getAppNumArgs == 3 then numeral? (e.getArg! 1)
      else if fName == ``Nat.zero && e.getAppNumArgs == 0 then some 0
      else none

/-- Test if an expression is either `Nat.zero`, or `OfNat.ofNat 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant169e530713e18113d776c3982b113bd5ac0b02c859051aea9d94b992165a9da8.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1ca9b45e8f9ed43489e237ae2bdaeb5c33e2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
