# completedZeta_eq_tsum_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5650b242d836d9e8d909044b5b0eea7e715fc0ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:597551aa-86b2-5d78-01af-6104685f43a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ddd6b99-8ed4-89d6-1831-06b2d647952e",
  "kind": "theorem",
  "lexical_name": "completedZeta_eq_tsum_of_one_lt_re",
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
  "slug": "completedzeta-eq-tsum-of-one-lt-re--c58700c5a2d59082a2ab3e88",
  "source": {
    "blob": "5650b242d836d9e8d909044b5b0eea7e715fc0ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c58700c5a2d59082a2ab3e88f85697879ef6a780aa0d473aa00b054d9d765607",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ddd6b99-8ed4-89d6-1831-06b2d647952e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedZeta_eq_tsum_of_one_lt_re {s : ℂ} (hs : 1 < re s) :
    completedRiemannZeta s =
      (π : ℂ) ^ (-s / 2) * Gamma (s / 2) * ∑' n : ℕ, 1 / (n : ℂ) ^ s := by
  have := (hasSum_nat_completedCosZeta 0 hs).tsum_eq.symm
  simp only [QuotientAddGroup.mk_zero, completedCosZeta_zero] at this
  simp only [this, Gammaℝ_def, mul_zero, zero_mul, Real.cos_zero, ofReal_one, mul_one, mul_one_div,
    ← tsum_mul_left]
  congr 1 with n
  split_ifs with h
  · simp only [h, Nat.cast_zero, zero_cpow (Complex.ne_zero_of_one_lt_re hs), div_zero]
  · rfl

/-- The Riemann zeta function agrees with the naive Dirichlet-series definition when the latter
converges. (Note that this is false without the assumption: when `re s ≤ 1` the sum is divergent,
and we use a different definition to obtain the analytic continuation to all `s`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Varianteef9c0d5175cc3fe457f2d7a0fa367327449cabc6c0138099fca33a55e5e3e9b.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5650b242d836d9e8d909044b5b0eea7e715fc0ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
