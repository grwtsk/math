# memLp_approxOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3afc3b9c-c227-5ff3-14c3-6bd1bd96b018",
  "kind": "theorem",
  "lexical_name": "memLp_approxOn",
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
  "slug": "memlp-approxon--e0afcc11e71070bb40b7c897",
  "source": {
    "blob": "00afc7d9e158d089ac8dff3975f4106c7efa0dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 154,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0afcc11e71070bb40b7c89782949e5eb13ae95f723baa9049f1142cc41f3faf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3afc3b9c-c227-5ff3-14c3-6bd1bd96b018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memLp_approxOn [BorelSpace E] {f : β → E} {μ : Measure β} (fmeas : Measurable f)
    (hf : MemLp f p μ) {s : Set E} {y₀ : E} (h₀ : y₀ ∈ s) [SeparableSpace s]
    (hi₀ : MemLp (fun _ => y₀) p μ) (n : ℕ) : MemLp (approxOn f fmeas s y₀ h₀ n) p μ := by
  suffices eLpNorm (fun x => approxOn f fmeas s y₀ h₀ n x - y₀) p μ < ∞ by
    rw [memLp_iff]
    convert! eLpNorm_add_lt_top this hi₀
    ext x
    simp
  have hf' : MemLp (fun x => ‖f x - y₀‖) p μ := by
    have h_meas : Measurable fun x => ‖f x - y₀‖ := by
      simp only [← dist_eq_norm]
      fun_prop
    calc
      eLpNorm (fun x ↦ ‖f x - y₀‖) p μ = eLpNorm (f - fun _ ↦ y₀) p μ := by
        simpa only [Pi.sub_apply] using eLpNorm_norm (f - fun _ ↦ y₀)
          (hf.aestronglyMeasurable.sub hi₀.aestronglyMeasurable)
      _ < ∞ := hf.sub hi₀
  have : ∀ᵐ x ∂μ, ‖approxOn f fmeas s y₀ h₀ n x - y₀‖ ≤ ‖‖f x - y₀‖ + ‖f x - y₀‖‖ := by
    filter_upwards with x
    convert! norm_approxOn_y₀_le fmeas h₀ x n using 1
    rw [Real.norm_eq_abs, abs_of_nonneg]
    positivity
  calc
    eLpNorm (fun x => approxOn f fmeas s y₀ h₀ n x - y₀) p μ ≤
        eLpNorm (fun x => ‖f x - y₀‖ + ‖f x - y₀‖) p μ :=
      eLpNorm_mono_ae
        ((approxOn f fmeas s y₀ h₀ n).aestronglyMeasurable.sub aestronglyMeasurable_const) this
    _ < ∞ := eLpNorm_add_lt_top hf' hf'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00afc7d9e158d089ac8dff3975f4106c7efa0dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
