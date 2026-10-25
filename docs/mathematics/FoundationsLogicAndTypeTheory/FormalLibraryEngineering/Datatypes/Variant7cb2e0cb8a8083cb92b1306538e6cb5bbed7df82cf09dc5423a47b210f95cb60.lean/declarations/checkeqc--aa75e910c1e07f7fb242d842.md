# checkEqc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5cae1f2e10ee855ce581a46c0ed984b519544006bbf3b364439f2665218a827",
  "kind": "def",
  "lexical_name": "checkEqc",
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
  "slug": "checkeqc--aa75e910c1e07f7fb242d842",
  "source": {
    "blob": "11753cacef5885542e5e986f1fd8c60864f6f570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 554,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant7cb2e0cb8a8083cb92b1306538e6cb5bbed7df82cf09dc5423a47b210f95cb60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa75e910c1e07f7fb242d842910394083b62f044b07f68420185629f0fe85a65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant7cb2e0cb8a8083cb92b1306538e6cb5bbed7df82cf09dc5423a47b210f95cb60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5cae1f2e10ee855ce581a46c0ed984b519544006bbf3b364439f2665218a827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkEqc (ccs : CCState) (e : Expr) : Bool :=
  toBool <| Id.run <| OptionT.run do
    let root := ccs.root e
    let mut size : Nat := 0
    let mut it := e
    repeat
      let some itN := ccs.entries[it]? | failure
      guard (itN.root == root)
      let mut it₂ := it
      -- following `target` fields should lead to root
      repeat
        let it₂N := ccs.entries[it₂]?
        match it₂N.bind Entry.target with
        | some it₃ => it₂ := it₃
        | none => break
      guard (it₂ == root)
      it := itN.next
      size := size + 1
    until it == e
    guard (ccs.entries[root]? |>.any (·.size == size))

/-- Check for integrity of the `CCState`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant7cb2e0cb8a8083cb92b1306538e6cb5bbed7df82cf09dc5423a47b210f95cb60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant7cb2e0cb8a8083cb92b1306538e6cb5bbed7df82cf09dc5423a47b210f95cb60.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11753cacef5885542e5e986f1fd8c60864f6f570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
