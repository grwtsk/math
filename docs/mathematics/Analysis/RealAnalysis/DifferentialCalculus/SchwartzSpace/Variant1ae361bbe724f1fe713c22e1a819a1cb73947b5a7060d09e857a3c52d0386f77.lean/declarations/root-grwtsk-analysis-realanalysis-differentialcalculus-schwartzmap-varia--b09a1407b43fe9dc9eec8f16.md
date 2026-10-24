# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SchwartzMap.Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.Function.HasTemperateGrowth.of_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54bb12f6-b128-14f9-424f-94bacb5c7f6b",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SchwartzMap.Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.Function.HasTemperateGrowth.of_fderiv",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-schwartzmap-varia--b09a1407b43fe9dc9eec8f16",
  "source": {
    "blob": "e75c6e687d9eb08e82647fa3303034476aa82b79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 549,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b09a1407b43fe9dc9eec8f16cd8cfc6cd23cb4403ca1d84043c31822dbd7f5d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54bb12f6-b128-14f9-424f-94bacb5c7f6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SchwartzMap.Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.Function.HasTemperateGrowth.of_fderiv {f : E → F}
    (h'f : Function.HasTemperateGrowth (fderiv ℝ f)) (hf : Differentiable ℝ f) {k : ℕ} {C : ℝ}
    (h : ∀ x, ‖f x‖ ≤ C * (1 + ‖x‖) ^ k) :
    Function.HasTemperateGrowth f := by
  refine ⟨contDiff_succ_iff_fderiv.2 ⟨hf, by simp, h'f.1⟩, fun n ↦ ?_⟩
  rcases n with rfl|m
  · exact ⟨k, C, fun x ↦ by simpa using h x⟩
  · rcases h'f.2 m with ⟨k', C', h'⟩
    refine ⟨k', C', ?_⟩
    simpa [iteratedFDeriv_succ_eq_comp_right] using h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e75c6e687d9eb08e82647fa3303034476aa82b79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
