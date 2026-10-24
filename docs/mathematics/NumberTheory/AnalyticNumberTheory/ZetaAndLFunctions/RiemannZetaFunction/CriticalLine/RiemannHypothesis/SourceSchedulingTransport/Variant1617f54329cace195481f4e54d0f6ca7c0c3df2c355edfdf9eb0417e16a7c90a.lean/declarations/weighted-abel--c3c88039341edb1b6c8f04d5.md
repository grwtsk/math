# weighted_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0c2f261-013f-ff65-4147-2bdd9a29db62",
  "kind": "theorem",
  "lexical_name": "weighted_abel",
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
  "slug": "weighted-abel--c3c88039341edb1b6c8f04d5",
  "source": {
    "blob": "2b532e3887c2ac6872c4cccfee1239780ce3b697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant1617f54329cace195481f4e54d0f6ca7c0c3df2c355edfdf9eb0417e16a7c90a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c88039341edb1b6c8f04d528db922082f4e6723046316f94d34f6dcee88b69",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant1617f54329cace195481f4e54d0f6ca7c0c3df2c355edfdf9eb0417e16a7c90a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c2f261-013f-ff65-4147-2bdd9a29db62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_abel (a v : ℕ → E) (n : ℕ) :
    (∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)) =
      inner ℝ (a n) (schedulePrefix v (n + 1)) +
      ∑ k ∈ Finset.range n, inner ℝ (a k - a (k + 1)) (schedulePrefix v (k + 1)) := by
  induction n with
  | zero => simp [schedulePrefix]
  | succ n ih =>
      rw [Finset.sum_range_succ, ih, Finset.sum_range_succ]
      simp only [schedulePrefix, Finset.sum_range_succ, inner_add_right, inner_sub_left]
      ring

/-- A schedulePrefix bound only controls a readout after its reading variation is also priced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant1617f54329cace195481f4e54d0f6ca7c0c3df2c355edfdf9eb0417e16a7c90a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variant1617f54329cace195481f4e54d0f6ca7c0c3df2c355edfdf9eb0417e16a7c90a.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b532e3887c2ac6872c4cccfee1239780ce3b697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
