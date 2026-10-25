# eqAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67e485407d220c1570992a2c464f1f5bcd35ee6e60ea04951dcd0d48211a6aa9",
  "kind": "def",
  "lexical_name": "eqAssignment",
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
  "slug": "eqassignment--03e03d34f732792874ca35ac",
  "source": {
    "blob": "d2cd767734cf8fe555efc5775bd2fed6861562f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03e03d34f732792874ca35ac976f6066627bdd80124adcffd539280dd3cadedb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67e485407d220c1570992a2c464f1f5bcd35ee6e60ea04951dcd0d48211a6aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def eqAssignment (a b : Expr) : GoalM Bool := do
  let structId₁? := (← get').exprToStructId.find? { expr := a }
  let structId₂? := (← get').exprToStructId.find? { expr := b }
  let some structId := structId₁? <|> structId₂? | return false
  let s := (← get').structs[structId]!
  -- It is pointless to generate case-splits unless we have support for disequality.
  unless s.isLinearInst?.isSome do return false
  let some v₁ := getAssignmentExt? s a | return false
  let some v₂ := getAssignmentExt? s b | return false
  return v₁ == v₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianteb19fb0b36ae9fcd2d953a8f53723108b48049f52b45cd67c75c613243399c1e.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2cd767734cf8fe555efc5775bd2fed6861562f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
