# processOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dbc4518cf77b43862d73ef6e6880556929d6317f3eadae615d2ae5ac2fddb71",
  "kind": "def",
  "lexical_name": "processOffset",
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
  "slug": "processoffset--f404bf4bcdc904d066ec1b28",
  "source": {
    "blob": "e4b44c9d3be89b0d60e18832499bb47a33fc7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f404bf4bcdc904d066ec1b286146df95ca24e89515dad774651aadf9bb870edb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dbc4518cf77b43862d73ef6e6880556929d6317f3eadae615d2ae5ac2fddb71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def processOffset (c : Choice) (genInfo? : Option GenPatternInfo) (pArg : Expr) (k : Nat) (e : Expr) : M Unit := do
  let maxGeneration ← getMaxGeneration
  let mut curr := e
  repeat
    let n ← getENode curr
    if n.generation < maxGeneration then
      if let some (eArg, k') ← isOffset? curr |>.run then
        if let some c ← assignGenInfo? genInfo? c e |>.run then
          if k' < k then
            let c := c.updateGen n.generation
            pushChoice { c with cnstrs := .offset none pArg (k - k') eArg :: c.cnstrs }
          else if k' == k then
            if let some c ← matchArg? c pArg eArg |>.run then
              pushChoice (c.updateGen n.generation)
          else if k' > k then
            let eArg' := mkNatAdd eArg (mkNatLit (k' - k))
            let eArg' ← shareCommon (← canon eArg')
            internalize eArg' (n.generation+1)
            if let some c ← matchArg? c pArg eArg' |>.run then
              pushChoice (c.updateGen n.generation)
      else if let some k' ← evalNat curr |>.run then
        if let some c ← assignGenInfo? genInfo? c e |>.run then
          if k' >= k then
            let eArg' := mkNatLit (k' - k)
            let eArg' ← shareCommon (← canon eArg')
            internalize eArg' (n.generation+1)
            if let some c ← matchArg? c pArg eArg' |>.run then
              pushChoice (c.updateGen n.generation)
    curr ← getNext curr
    if isSameExpr curr e then break

/--
Returns "applications" in the given goal that may match `p`.
We say "applications," because we assume a constant is a zero-ary application.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b44c9d3be89b0d60e18832499bb47a33fc7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
