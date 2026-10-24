# criticalWeightedMertensSquareSummable_iff_base

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b12efcb0-ba40-f170-0141-6b088c3c6f66",
  "kind": "theorem",
  "lexical_name": "criticalWeightedMertensSquareSummable_iff_base",
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
  "slug": "criticalweightedmertenssquaresummable-iff-base--3d5833b5655c6756962d7635",
  "source": {
    "blob": "518bfbfb70521975d9fc6258637aa3e7286dfb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d5833b5655c6756962d7635a43219e7ce721493f1bee4209b6b5453d41e3606",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b12efcb0-ba40-f170-0141-6b088c3c6f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeightedMertensSquareSummable_iff_base (ε : ℝ) :
    CriticalWeightedMertensSquareSummable ε ↔
      Summable (fun n : ℕ =>
        weightedMertensBaseTerm n *
          ((n + 1 : ℕ) : ℝ) ^ (-ε)) := by
  unfold CriticalWeightedMertensSquareSummable
  constructor
  · intro hs
    exact hs.congr fun n => weightedMertensSquareTerm_eq_base ε n
  · intro hs
    exact hs.congr fun n => (weightedMertensSquareTerm_eq_base ε n).symm

/-- Generic finite Abel summation in the indexing used below.  The terminal
cumulative term is not discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518bfbfb70521975d9fc6258637aa3e7286dfb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
