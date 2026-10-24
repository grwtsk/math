# zero_iff_logCounting_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ebc0e10-6e2c-01f1-9046-62d13c633185",
  "kind": "lemma",
  "lexical_name": "zero_iff_logCounting_bounded",
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
  "slug": "zero-iff-logcounting-bounded--d7f398de327da4a2e73d919b",
  "source": {
    "blob": "87e0b087251b13c855037151652d1d79b8670074",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 67,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f398de327da4a2e73d919b8a378df178db5cfbc287cf893a597b1c10a8f513",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ebc0e10-6e2c-01f1-9046-62d13c633185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_iff_logCounting_bounded [ProperSpace E]
    {D : locallyFinsuppWithin (univ : Set E) ℤ} (h : 0 ≤ D) :
    D = 0 ↔ logCounting D =O[atTop] (1 : ℝ → ℝ) := by
  classical
  refine ⟨fun h₂ ↦ by simp [isBigO_of_le' (c := 0), h₂], ?_⟩
  contrapose
  intro h₁
  obtain ⟨e, he⟩ := exists_single_le_pos (lt_of_le_of_ne h (h₁ ·.symm))
  rw [isBigO_iff'']
  push Not
  intro a ha
  simp only [Pi.one_apply, norm_eq_abs, frequently_atTop, abs_one]
  intro b
  obtain ⟨c, hc⟩ := eventually_atTop.1
    (isLittleO_iff.1 (one_isLittleO_logCounting_single (e := e)) ha)
  let ℓ := 1 + max ‖e‖ (max |b| |c|)
  have h₁ℓ : c ≤ ℓ := by grind
  have h₂ℓ : 1 ≤ ℓ := by simp [ℓ]
  use 1 + ℓ, (show b ≤ 1 + ℓ by grind)
  calc 1
    _ ≤ (a * |logCounting (single e 1) ℓ|) := by simpa [h₁ℓ] using hc ℓ
    _ ≤ (a * |logCounting D ℓ|) := by
      gcongr
      · apply logCounting_nonneg (single_pos.2 Int.one_pos).le h₂ℓ
      · apply logCounting_le he h₂ℓ
    _ < a * |logCounting D (1 + ℓ)| := by
      gcongr 2
      rw [abs_of_nonneg (logCounting_nonneg h h₂ℓ),
        abs_of_nonneg (logCounting_nonneg h (by grind))]
      apply logCounting_strictMono he <;> grind

/--
The logarithmic counting function of a singleton is big-O of `log`. This is the qualitative
consequence of `logCounting_single_eq_log_sub_const`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87e0b087251b13c855037151652d1d79b8670074` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
