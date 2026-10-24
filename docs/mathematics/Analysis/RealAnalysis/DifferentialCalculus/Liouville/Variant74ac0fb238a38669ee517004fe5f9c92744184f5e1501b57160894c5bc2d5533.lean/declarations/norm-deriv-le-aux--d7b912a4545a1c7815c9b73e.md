# norm_deriv_le_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f46046ee-dc87-8c0a-e059-ff5c2ad347bc",
  "kind": "theorem",
  "lexical_name": "norm_deriv_le_aux",
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
  "slug": "norm-deriv-le-aux--d7b912a4545a1c7815c9b73e",
  "source": {
    "blob": "02cec453db1ce465ed363c5e67790c0830f73e3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b912a4545a1c7815c9b73eb31544c7ce1b16c499823c1c6d4f80f867bbc6e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f46046ee-dc87-8c0a-e059-ff5c2ad347bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_deriv_le_aux [CompleteSpace F] {c : ℂ} {R C : ℝ} {f : ℂ → F} (hR : 0 < R)
    (hf : DiffContOnCl ℂ f (ball c R)) (hC : ∀ z ∈ sphere c R, ‖f z‖ ≤ C) :
    ‖deriv f c‖ ≤ C / R := by
  have : ∀ z ∈ sphere c R, ‖(z - c) ^ (-2 : ℤ) • f z‖ ≤ C / (R * R) :=
    fun z (hz : abs (z - c) = R) => by
    simpa [-mul_inv_rev, norm_smul, hz, zpow_two, ← div_eq_inv_mul] using
      (div_le_div_right (mul_pos hR hR)).2 (hC z hz)
  calc
    ‖deriv f c‖ = ‖(2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), (z - c) ^ (-2 : ℤ) • f z‖ :=
      congr_arg norm (deriv_eq_smul_circleIntegral hR hf)
    _ ≤ R * (C / (R * R)) :=
      (circleIntegral.norm_two_pi_i_inv_smul_integral_le_of_norm_le_const hR.le this)
    _ = C / R := by rw [mul_div_left_comm, div_self_mul_self', div_eq_mul_inv]
#align complex.norm_deriv_le_aux Complex.norm_deriv_le_aux

/-- If `f` is complex differentiable on an open disc of radius `R > 0`, is continuous on its
closure, and its values on the boundary circle of this disc are bounded from above by `C`, then the
norm of its derivative at the center is at most `C / R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variant74ac0fb238a38669ee517004fe5f9c92744184f5e1501b57160894c5bc2d5533.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02cec453db1ce465ed363c5e67790c0830f73e3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
