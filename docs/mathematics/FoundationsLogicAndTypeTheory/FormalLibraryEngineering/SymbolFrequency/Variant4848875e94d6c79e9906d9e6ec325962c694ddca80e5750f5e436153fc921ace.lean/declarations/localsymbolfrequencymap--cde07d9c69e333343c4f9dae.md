# localSymbolFrequencyMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ce3cea071f9a00927ebae4885687a856267993e03aee40fae4f01330f7f2b76",
  "kind": "def",
  "lexical_name": "localSymbolFrequencyMap",
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
  "slug": "localsymbolfrequencymap--cde07d9c69e333343c4f9dae",
  "source": {
    "blob": "b4f097c6b2a6b88aaf403fab9040055d07edbb75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cde07d9c69e333343c4f9dae63449bcb3a2ebdc512452f337ee1c0dfbc40072c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ce3cea071f9a00927ebae4885687a856267993e03aee40fae4f01330f7f2b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def localSymbolFrequencyMap : MetaM (NameMap Nat) := do
  let env := (← getEnv)
  env.constants.map₂.foldlM (init := ∅) (fun acc m ci => do
    if isDeniedPremise env m || !wasOriginallyTheorem env m then
      pure acc
    else
      ci.type.foldRelevantConstants (init := acc) fun n' acc => return acc.alter n' fun i? => some (i?.getD 0 + 1))

/--
A global `IO.Ref` containing the local symbol frequency map. This is initialized on first use.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4f097c6b2a6b88aaf403fab9040055d07edbb75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
