# buildMVarGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:837c1c2e5b9fadf029f73ac301d065f84b35aff8ee5093fa086af9773a625f24",
  "kind": "def",
  "lexical_name": "buildMVarGraph",
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
  "slug": "buildmvargraph--9f491c9f3558747aefe8c693",
  "source": {
    "blob": "6b350ecd3c7993df157622d3aef442311d2a02e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f491c9f3558747aefe8c693d818d927b4a912f5fc4cf33fad3862cb622fe1ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:837c1c2e5b9fadf029f73ac301d065f84b35aff8ee5093fa086af9773a625f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildMVarGraph : MetaM (Graph MVarId Bool) := do
  let mut g : Graph MVarId Bool := {}
  for (m, _) in (← getMCtx).decls do
    g := g.alter m (·.getD [])
    if let some e := (← getMCtx).eAssignment.find? m then
      for n in (e.collectMVars {}).result do
        g := g.alter n ((m, true) :: ·.getD [])
    if let some a := (← getMCtx).dAssignment.find? m then
      let n := a.mvarIdPending
      g := g.alter n ((m, true) :: ·.getD [])
    for n in ((← m.getType).collectMVars {}).result do
      g := g.alter n ((m, false) :: ·.getD [])
  return g

open ProofWidgets Jsx in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Varianta7c164596853d7624c9d15d2a31bad216d3ad23a34deb2b2f1a6006add0e9d71.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b350ecd3c7993df157622d3aef442311d2a02e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
