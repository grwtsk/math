# reconstructArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d383ce511e0bfde18fcc5a05f87c9ad0b787ccabfc3dd6adf631fa42a632f5f4",
  "kind": "def",
  "lexical_name": "reconstructArgs",
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
  "slug": "reconstructargs--a6274978ac280bb9bb1b16c1",
  "source": {
    "blob": "9ba97bdde1a24dcfbaea6c0e8fb1895279ff2e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6274978ac280bb9bb1b16c12f8feb5e6f2c8b2baeb79eecc4aba30d704c551f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d383ce511e0bfde18fcc5a05f87c9ad0b787ccabfc3dd6adf631fa42a632f5f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reconstructArgs (r : ForwardRule) (m : CompleteMatch) :
    Array (Option Expr) × Array (Option Level) := Id.run do
  assert! m.clusterMatches.size == r.slotClusters.size
  let mut subst : Substitution := .empty r.numPremises r.numLevelParams
  for m in m.clusterMatches do
    subst := m.subst.mergeCompatible subst
  let mut args := Array.mkEmpty r.numPremises
  for i in [:r.numPremises] do
    args := args.push $ subst.find? ⟨i⟩
  let mut levels := Array.mkEmpty r.numLevelParams
  for i in [:r.numLevelParams] do
    levels := levels.push $ subst.findLevel? ⟨i⟩
  return (args, levels)

set_option linter.missingDocs false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba97bdde1a24dcfbaea6c0e8fb1895279ff2e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
