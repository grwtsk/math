# getImpureDeclIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b18b826d04a967703bd8f9c87f398e66e6d295bc7054ce43ff429a0a0cea36c1",
  "kind": "def",
  "lexical_name": "getImpureDeclIndices",
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
  "slug": "getimpuredeclindices--456354d0656f3d7b60d93e61",
  "source": {
    "blob": "860b0097b857ac2b475edcbf10c3c5a9382ed860",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:456354d0656f3d7b60d93e61672725523be1eb555ba2bed811ad11abfb33ada1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b18b826d04a967703bd8f9c87f398e66e6d295bc7054ce43ff429a0a0cea36c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getImpureDeclIndices (env : Environment) (targets : Array Name) : Std.HashMap Name Nat := Id.run do
  let (names, set) := declOrderExt.getState env
  let mut map := Std.HashMap.emptyWithCapacity set.size
  let targetSet := Std.HashSet.ofArray targets
  let mut i := set.size
  for name in names do
    if targetSet.contains name then
      map := map.insert name i
    assert! i != 0
    i := i - 1
  assert! map.size == targets.size
  return map

end Lean.Compiler.LCNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860b0097b857ac2b475edcbf10c3c5a9382ed860` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
