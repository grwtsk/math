# sum_sourceEventGain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b49d7e5f-ed16-8efc-548c-25d6068243ad",
  "kind": "theorem",
  "lexical_name": "sum_sourceEventGain",
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
  "slug": "sum-sourceeventgain--2b29525fce4130c605698995",
  "source": {
    "blob": "fda42145041b9ecfb53a6ffa95d9547ed0b20132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 180,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b29525fce4130c605698995e7fa3c1b76c2192bb0648113037bf04c67eecdfd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b49d7e5f-ed16-8efc-548c-25d6068243ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_sourceEventGain (A : ℝ) (hA : 1 ≤ A) :
    (∑ n ∈ Finset.range (sourceEventCount A), sourceEventGain A n) =
      -2 * mertensResidual A := by
  have hs : (∑ n ∈ Finset.range (sourceEventCount A), sourceEventGain A n) =
      ∑ n ∈ primePowerInventory (2 * A), sourceEventGain A n := by
    symm
    exact Finset.sum_subset (source_inventory_covered A) (fun n _ hn =>
      sourceEventGain_zero_of_not_mem A hn)
  rw [hs, mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [sourceEventGain_of_mem A hn]
  rfl

/-- Native quadratic reconstruction. The complete continuous Fourier term is
retained exactly; strict/closed cutoff agreement uses the source endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant2a37988c4505cd699d0c0a3721c432040ad83c313ec312bbc59884e78e49d5ee.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fda42145041b9ecfb53a6ffa95d9547ed0b20132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
