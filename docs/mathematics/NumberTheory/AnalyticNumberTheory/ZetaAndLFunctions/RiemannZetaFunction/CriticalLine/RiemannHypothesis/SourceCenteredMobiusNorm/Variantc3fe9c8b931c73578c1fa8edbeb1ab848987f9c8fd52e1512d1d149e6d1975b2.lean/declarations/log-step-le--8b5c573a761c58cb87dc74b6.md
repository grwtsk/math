# log_step_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90d3d335a7721c599e75d935e5185c7b6f62f30f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6e90ced-b017-f114-e692-308b88cdf47e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a56bb409-439e-2e92-967d-cadec2174907",
  "kind": "theorem",
  "lexical_name": "log_step_le",
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
  "slug": "log-step-le--8b5c573a761c58cb87dc74b6",
  "source": {
    "blob": "90d3d335a7721c599e75d935e5185c7b6f62f30f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 125,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b5c573a761c58cb87dc74b6503150646ee429e98ded69e38402fd236730dc09",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a56bb409-439e-2e92-967d-cadec2174907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_step_le {n : ℕ} (hn : 1 ≤ n) :
    (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) /
      Real.sqrt ((n + 1 : ℕ) : ℝ) ≤
        2 * (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hm0 : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  have ha := Real.sqrt_pos.2 hn0
  have hb := Real.sqrt_pos.2 hm0
  have hq : (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ)) ^ 2 =
      ((n + 1 : ℕ) : ℝ) / (n : ℝ) := by
    rw [div_pow, Real.sq_sqrt hm0.le, Real.sq_sqrt hn0.le]
  have hl := Real.log_le_sub_one_of_pos (div_pos hb ha)
  have he : Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) =
      2 * Real.log (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ)) := by
    rw [← Real.log_div hm0.ne' hn0.ne', ← hq, Real.log_pow]
  apply (div_le_iff₀ hb).2
  rw [he]
  have hr : (2 * (1 / Real.sqrt (n : ℝ) -
      1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) * Real.sqrt ((n + 1 : ℕ) : ℝ) =
      2 * (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ) - 1) := by
    field_simp [ha.ne', hb.ne'] <;> ring
  rw [hr]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variantc3fe9c8b931c73578c1fa8edbeb1ab848987f9c8fd52e1512d1d149e6d1975b2.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d3d335a7721c599e75d935e5185c7b6f62f30f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
