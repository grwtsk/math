# disjoint_native_square_payment_not_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62e28c6f-8545-6757-f7d1-2db1ae4147cc",
  "kind": "theorem",
  "lexical_name": "disjoint_native_square_payment_not_summable",
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
  "slug": "disjoint-native-square-payment-not-summable--4c3bf09c9b46c3b085feb792",
  "source": {
    "blob": "a8da546ae34a4ea504e8711fcfd31a5e0052dc92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant5a1314bc9c57526f93ce4e13919a54af7c012b1c90e94ce95c18ad3bcee8c2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c3bf09c9b46c3b085feb792a9a2d9f0209c446f7ea407c4eb93c47fa6a75cc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant5a1314bc9c57526f93ce4e13919a54af7c012b1c90e94ce95c18ad3bcee8c2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62e28c6f-8545-6757-f7d1-2db1ae4147cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_native_square_payment_not_summable {gamma : ℝ} (hg : 0 < gamma) :
    ¬ Summable (positiveSquarePayment gamma) := by
  let C : ℝ := 1 / (2 * (1 - Real.exp (-Real.pi / (4 * gamma))))
  have hC : 0 < C := div_pos (by norm_num) (denominator_positive hg)
  have hl : ∀ k, C ≤ positiveSquarePayment gamma k := by
    intro k
    rw [exact_positive_square_payment hg]
    apply div_le_div_of_nonneg_right _ (denominator_positive hg).le
    have hx : 0 ≤ Real.pi * (k : ℝ) / gamma := by positivity
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr hx
  intro hs
  have he : ∀ᶠ k in atTop, positiveSquarePayment gamma k < C :=
    hs.tendsto_atTop_zero.eventually_lt_const hC
  obtain ⟨k, hk⟩ := he.exists
  exact (not_lt_of_ge (hl k)) hk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant5a1314bc9c57526f93ce4e13919a54af7c012b1c90e94ce95c18ad3bcee8c2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalModeIntervals/Variant5a1314bc9c57526f93ce4e13919a54af7c012b1c90e94ce95c18ad3bcee8c2fd.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8da546ae34a4ea504e8711fcfd31a5e0052dc92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
