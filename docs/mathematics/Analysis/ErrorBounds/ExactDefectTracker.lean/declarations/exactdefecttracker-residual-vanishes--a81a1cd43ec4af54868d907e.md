# exactDefectTracker_residual_vanishes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86b5e70f-ace3-2cdb-aebd-861f2380143e",
  "kind": "theorem",
  "lexical_name": "exactDefectTracker_residual_vanishes",
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
  "slug": "exactdefecttracker-residual-vanishes--a81a1cd43ec4af54868d907e",
  "source": {
    "blob": "f0d36bc217ba98a7d5fe28afed6981d1236779f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a81a1cd43ec4af54868d907e24adcaf6a6c0645e1cb50023d94590fdba79e495",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ExactDefectTracker.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86b5e70f-ace3-2cdb-aebd-861f2380143e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactDefectTracker_residual_vanishes (weight : ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (source : ℕ → ι → ℝ) (initial : ι → ℝ) (r : ℝ)
    (hw : ∀ i, 0 ≤ weight i) (hr : 0 ≤ r) (hr1 : r < 1)
    (hcolumns : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j) :
    VanishesAtInfinity (fun n => channelMass weight
      (sourceResidual source (exactDefectTracker gain source initial) n)) := by
  apply source_residual_vanishes weight gain source (exactDefectTracker gain source initial)
    r hw hr hr1 hcolumns
  simpa only [channelMass, exactDefectTracker_net_forcing_zero, abs_zero, mul_zero,
    Finset.sum_const_zero] using VanishesAtInfinity.zero
end GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ExactDefectTracker.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0d36bc217ba98a7d5fe28afed6981d1236779f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
