# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SchwartzMap.Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.Function.HasTemperateGrowth.norm_iteratedFDeriv_le_uniform_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ee87091-6e79-d860-dca8-58adde17202f",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SchwartzMap.Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.Function.HasTemperateGrowth.norm_iteratedFDeriv_le_uniform_aux",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-schwartzmap-varia--135e98760aac91bd364b82e8",
  "source": {
    "blob": "e75c6e687d9eb08e82647fa3303034476aa82b79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 531,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:135e98760aac91bd364b82e83f0fcfb0724e7039aa2c37ef411c82a4eacd7ef2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ee87091-6e79-d860-dca8-58adde17202f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SchwartzMap.Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.Function.HasTemperateGrowth.norm_iteratedFDeriv_le_uniform_aux {f : E → F}
    (hf_temperate : f.HasTemperateGrowth) (n : ℕ) :
    ∃ (k : ℕ) (C : ℝ), 0 ≤ C ∧ ∀ N ≤ n, ∀ x : E, ‖iteratedFDeriv ℝ N f x‖ ≤ C * (1 + ‖x‖) ^ k := by
  choose k C f using hf_temperate.2
  use (Finset.range (n + 1)).sup k
  let C' := max (0 : ℝ) ((Finset.range (n + 1)).sup' (by simp) C)
  have hC' : 0 ≤ C' := le_max_left _ _
  use C', hC'
  intro N hN x
  rw [← Finset.mem_range_succ_iff] at hN
  refine le_trans (f N x) (mul_le_mul ?_ ?_ (by positivity) hC')
  · simp only [C', Finset.le_sup'_iff, le_max_iff]
    right
    exact ⟨N, hN, le_rfl⟩
  gcongr
  · simp
  exact Finset.le_sup hN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e75c6e687d9eb08e82647fa3303034476aa82b79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
