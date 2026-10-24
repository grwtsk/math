# exact_normalized_three_hinges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e73d9ef7-ee5a-f1ff-a84b-dc319635fd4c",
  "kind": "theorem",
  "lexical_name": "exact_normalized_three_hinges",
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
  "slug": "exact-normalized-three-hinges--d1753634bc126e0734b1b8d2",
  "source": {
    "blob": "f339f48b421bae4ecb39b67728c9039ea265bf8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1753634bc126e0734b1b8d29453ae9e913a4b9d524505963b8a077f118b9a3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e73d9ef7-ee5a-f1ff-a84b-dc319635fd4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_normalized_three_hinges {y : ℝ} (hy : 0 < y) :
    2 * max (1 / Real.sqrt y - 1 / 4) 0 -
      3 * max (1 / Real.sqrt y - 1 / 2) 0 +
      max (1 / Real.sqrt y - 1) 0 = tentWeight y := by
  simp only [one_div]
  by_cases h1 : y < 1
  · have hr := reciprocal_sqrt_lower hy 1 (by norm_num) (by nlinarith)
    norm_num at hr
    rw [max_eq_left (by linarith), max_eq_left (by linarith), max_eq_left (by linarith)]
    rw [tentWeight, if_neg (by intro h; linarith [h.1]),
      if_neg (by intro h; linarith [h.1])]
    ring
  · by_cases h4 : y ≤ 4
    · have hrlo := reciprocal_sqrt_lower hy 2 (by norm_num) (by nlinarith)
      have hrhi := reciprocal_sqrt_upper hy 1 (by norm_num) (by nlinarith)
      norm_num at hrlo hrhi
      rw [max_eq_left (by linarith), max_eq_left (by linarith), max_eq_right (by linarith)]
      rw [tentWeight, if_pos ⟨by linarith, h4⟩]
      ring
    · by_cases h16 : y ≤ 16
      · have hrlo := reciprocal_sqrt_lower hy 4 (by norm_num) (by nlinarith)
        have hrhi := reciprocal_sqrt_upper hy 2 (by norm_num) (by nlinarith)
        norm_num at hrlo hrhi
        rw [max_eq_left (by linarith), max_eq_right (by linarith), max_eq_right (by linarith)]
        rw [tentWeight, if_neg (by intro h; exact h4 h.2), if_pos ⟨by linarith, h16⟩]
        ring
      · have hrhi := reciprocal_sqrt_upper hy 4 (by norm_num) (by nlinarith)
        norm_num at hrhi
        rw [max_eq_right (by linarith), max_eq_right (by linarith), max_eq_right (by linarith)]
        rw [tentWeight, if_neg (by intro h; exact h4 h.2),
          if_neg (by intro h; exact h16 h.2)]
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant4c7ee6ca25d3bc6e1dab0584456c49510669d31e6fb293c3016e3b26acab9442.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f339f48b421bae4ecb39b67728c9039ea265bf8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
