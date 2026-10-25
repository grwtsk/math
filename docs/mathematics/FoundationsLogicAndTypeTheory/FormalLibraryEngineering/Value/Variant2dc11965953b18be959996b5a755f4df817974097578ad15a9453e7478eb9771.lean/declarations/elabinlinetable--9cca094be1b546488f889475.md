# elabInlineTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31f51e55f51e5f5f832a0753a52bd94ff4cb6349c1949f3f68aedff034338b7f",
  "kind": "def",
  "lexical_name": "elabInlineTable",
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
  "slug": "elabinlinetable--9cca094be1b546488f889475",
  "source": {
    "blob": "d2daf27bfd9d4d50be0ba4c1296da95a3432da45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cca094be1b546488f889475d4a470fa35e8b0c7938125e94dbadcb5007a7214",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31f51e55f51e5f5f832a0753a52bd94ff4cb6349c1949f3f68aedff034338b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabInlineTable (x : TSyntax ``inlineTable) (elabVal : TSyntax ``val → CoreM Value) : CoreM Table := do
  let `(val|{$kvs,*}) := x
    | throwErrorAt x "ill-formed inline table syntax"
  let t : NameDict (Option Value) := {}  -- some: static value, none: partial table
  let t ← kvs.getElems.foldlM (init := t) fun t kv => do
    let `(keyval|$k = $v) := kv
      | throwErrorAt kv "ill-formed key-value pair syntax"
    let `(key|$[$ks].*) := k
      | throwErrorAt k "ill-formed key syntax"
    let tailKey := ks.back!
    let (k, t) ← StateT.run (s := t) <| ks.pop.foldlM (init := Name.anonymous) fun k p => do
      let k ← k.str <$> elabSimpleKey p
      if let some v := t.find? k then
        unless v.isNone do throwErrorAt p m!"cannot redefine key `{k}`"
      else
        modify fun t => t.push k none
      return k
    let k ← k.str <$> elabSimpleKey tailKey
    if t.contains k then
      throwErrorAt tailKey m!"cannot redefine key `{k}`"
    else
      return t.push k (← elabVal v)
  return t.filterMap fun _ v => v

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2daf27bfd9d4d50be0ba4c1296da95a3432da45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
