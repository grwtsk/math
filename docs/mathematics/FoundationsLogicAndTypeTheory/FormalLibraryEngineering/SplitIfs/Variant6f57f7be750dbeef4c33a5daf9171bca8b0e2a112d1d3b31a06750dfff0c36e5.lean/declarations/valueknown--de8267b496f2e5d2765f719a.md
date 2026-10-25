# valueKnown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79fead71457b22ea091a4c2df63253bac93403242f65e55250379255f85786d5",
  "kind": "def",
  "lexical_name": "valueKnown",
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
  "slug": "valueknown--de8267b496f2e5d2765f719a",
  "source": {
    "blob": "8c8b839bbfd7cfb7da0e54a10e752ca91f35a017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de8267b496f2e5d2765f719a1dbe28a2eebe42eed756093640ffac2c92cd2771",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79fead71457b22ea091a4c2df63253bac93403242f65e55250379255f85786d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def valueKnown (cond : Expr) : TacticM Bool := do
  let not_cond := mkApp (mkConst `Not) cond
  for h in ← getLocalHyps do
    let ty ← instantiateMVars (← inferType h)
    if cond == ty then return true
    if not_cond == ty then return true
  return false

/-- Main loop of split_ifs. Pulls names for new hypotheses from `hNames`.
Stops if it encounters a condition in the passed-in `List Expr`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8b839bbfd7cfb7da0e54a10e752ca91f35a017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
