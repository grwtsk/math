# fourier_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04396942-0e3a-f5bb-a98b-f3038f54c035",
  "kind": "theorem",
  "lexical_name": "fourier_integrand_integrable",
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
  "slug": "fourier-integrand-integrable--64d40235476816403dcad2ff",
  "source": {
    "blob": "3cbe58cea49e0870ffdd8c94ae206a743ca5d704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64d40235476816403dcad2ff1c19a16a4d2d75760ae1bd7b4150153d10acf869",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04396942-0e3a-f5bb-a98b-f3038f54c035`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_integrand_integrable (w : V) :
    Integrable f ↔ Integrable fun v : V => e[-⟪v, w⟫] • f v := by
  have hL : Continuous fun p : V × V => BilinForm.toLin bilinFormOfRealInner p.1 p.2 :=
    continuous_inner
  rw [VectorFourier.fourier_integral_convergent_iff Real.continuous_fourierChar hL w]
  simp only [BilinForm.toLin_apply, bilinFormOfRealInner_apply]
#align fourier_integrand_integrable fourier_integrand_integrable

variable [CompleteSpace E]

-- Porting note: binary operations appear not to work?
-- local notation "i" => fun w => (1 / (2 * ‖w‖ ^ 2)) • w
local notation "i" => fun (w : V) => HDiv.hDiv (1 : ℝ) (HMul.hMul (2 : ℝ) (HPow.hPow ‖w‖ 2)) • w

/-- Shifting `f` by `(1 / (2 * ‖w‖ ^ 2)) • w` negates the integral in the Riemann-Lebesgue lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbe58cea49e0870ffdd8c94ae206a743ca5d704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
