# norm_cderiv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a4fdc52-09ef-c5ca-f820-7d16e7ad51a5",
  "kind": "theorem",
  "lexical_name": "norm_cderiv_le",
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
  "slug": "norm-cderiv-le--f56e74e9a09822a2616e5d80",
  "source": {
    "blob": "f829479eb4fcad1a3bbd9cb734d45ae07aa162e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f56e74e9a09822a2616e5d80093e899964f8d08933cb3fef03fda759125df99a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a4fdc52-09ef-c5ca-f820-7d16e7ad51a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_cderiv_le (hr : 0 < r) (hf : ∀ w ∈ sphere z r, ‖f w‖ ≤ M) :
    ‖cderiv r f z‖ ≤ M / r := by
  have hM : 0 ≤ M := by
    obtain ⟨w, hw⟩ : (sphere z r).Nonempty := NormedSpace.sphere_nonempty.mpr hr.le
    exact (norm_nonneg _).trans (hf w hw)
  have h1 : ∀ w ∈ sphere z r, ‖((w - z) ^ 2)⁻¹ • f w‖ ≤ M / r ^ 2 := by
    intro w hw
    simp only [mem_sphere_iff_norm, norm_eq_abs] at hw
    simp only [norm_smul, inv_mul_eq_div, hw, norm_eq_abs, map_inv₀, Complex.abs_pow]
    exact div_le_div hM (hf w hw) (sq_pos_of_pos hr) le_rfl
  have h2 := circleIntegral.norm_integral_le_of_norm_le_const hr.le h1
  simp only [cderiv, norm_smul]
  refine' (mul_le_mul le_rfl h2 (norm_nonneg _) (norm_nonneg _)).trans (le_of_eq _)
  field_simp [_root_.abs_of_nonneg Real.pi_pos.le]
  ring
#align complex.norm_cderiv_le Complex.norm_cderiv_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f829479eb4fcad1a3bbd9cb734d45ae07aa162e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
