# Needs.randArrayM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5abc17971fccadfafe0210ddcf6fea0e009e77643bbcc2fba544be343af5b068",
  "kind": "def",
  "lexical_name": "Needs.randArrayM",
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
  "slug": "needs-randarraym--ae2b26d545e4ca86fdbd340f",
  "source": {
    "blob": "da51ab6bb5b6455d3670a376fe11628d52011135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae2b26d545e4ca86fdbd340faaaa26822af47ba482e8a5126d36b9b1edaa6f12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5abc17971fccadfafe0210ddcf6fea0e009e77643bbcc2fba544be343af5b068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Needs.randArrayM (hierarchySize : Nat)
    (cfg? : Option RandNeedsConfig := none) :
    RandT γ m (Array Needs) := do
  let mut ns := Array.emptyWithCapacity hierarchySize
  for i in 0...hierarchySize do
    let cfg ← cfg?.getDM RandNeedsConfig.randM
    let need ← Needs.randM i cfg
    ns := ns.push need
  return ns

/-- Assumes that `ns` in topologically sorted, i.e. that the needs refer only to indices existing
prior in the array. We don't use this more generally because usually there are other things we want
to do in the loop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da51ab6bb5b6455d3670a376fe11628d52011135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
