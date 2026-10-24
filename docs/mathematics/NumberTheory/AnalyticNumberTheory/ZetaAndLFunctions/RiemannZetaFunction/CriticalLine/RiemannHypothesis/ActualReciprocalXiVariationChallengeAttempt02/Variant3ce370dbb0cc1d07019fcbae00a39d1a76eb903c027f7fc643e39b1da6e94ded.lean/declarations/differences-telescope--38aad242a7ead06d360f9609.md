# differences_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88d9be5d-8b8c-76c2-5de5-04ea2ebff435",
  "kind": "theorem",
  "lexical_name": "differences_telescope",
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
  "slug": "differences-telescope--38aad242a7ead06d360f9609",
  "source": {
    "blob": "39fefb7f4aa5409f233a52295c218fdbd46122bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variant3ce370dbb0cc1d07019fcbae00a39d1a76eb903c027f7fc643e39b1da6e94ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38aad242a7ead06d360f9609bfa7ab498b461d85b9c7530a586ab408f1668cb4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variant3ce370dbb0cc1d07019fcbae00a39d1a76eb903c027f7fc643e39b1da6e94ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d9be5d-8b8c-76c2-5de5-04ea2ebff435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem differences_telescope (N : ℕ) (w : ℕ → ℝ) (hN : 1 ≤ N) :
    (∑ d ∈ Finset.Icc 1 (N - 1), (w d - w (d + 1))) = w 1 - w N := by
  have he (k : ℕ) : (∑ d ∈ Finset.Icc 1 k, (w d - w (d + 1))) = w 1 - w (k + 1) := by
    induction k with
    | zero => simp
    | succ k ih =>
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ k + 1), ih]
      ring
  simpa only [Nat.sub_add_cancel hN] using he (N - 1)

/-- Even with the true upper weight zero, the actual absolute variation has a growing floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variant3ce370dbb0cc1d07019fcbae00a39d1a76eb903c027f7fc643e39b1da6e94ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variant3ce370dbb0cc1d07019fcbae00a39d1a76eb903c027f7fc643e39b1da6e94ded.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39fefb7f4aa5409f233a52295c218fdbd46122bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
