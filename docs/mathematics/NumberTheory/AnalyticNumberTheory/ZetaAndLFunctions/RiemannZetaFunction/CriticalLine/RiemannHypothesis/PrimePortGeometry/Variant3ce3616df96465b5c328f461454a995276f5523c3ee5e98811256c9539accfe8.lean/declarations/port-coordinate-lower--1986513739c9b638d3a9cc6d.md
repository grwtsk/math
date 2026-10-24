# port_coordinate_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e61d9970-add6-3ba2-2184-50e200e7a329",
  "kind": "theorem",
  "lexical_name": "port_coordinate_lower",
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
  "slug": "port-coordinate-lower--1986513739c9b638d3a9cc6d",
  "source": {
    "blob": "62eb2fe1e41b8a150fdcc6da78a85162b05c8c0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1986513739c9b638d3a9cc6d15d364c6a4cf38904b6b10670441b4a804d2fcb9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e61d9970-add6-3ba2-2184-50e200e7a329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem port_coordinate_lower (p : Fin 2) {ρ η : ℂ}
    (hρ : ρ.re ≤ 1) (hη : η.re ≤ 1) :
    (radialFloor * primeLog p * |ρ.re - η.re|) ^ 2 + radialFloor ^ 2 *
      ‖phase ρ.im p - phase η.im p‖ ^ 2 ≤ ‖port ρ p - port η p‖ ^ 2 := by
  have hu : ‖phase ρ.im p‖ = 1 := Complex.norm_exp_I_mul_ofReal _
  have hv : ‖phase η.im p‖ = 1 := Complex.norm_exp_I_mul_ofReal _
  have he := unit_radial_square_identity (radial p ρ.re) (radial p η.re)
    (phase ρ.im p) (phase η.im p) hu hv
  have hr := radial_secant p hρ hη
  have hlog : 0 ≤ primeLog p := by
    fin_cases p <;> exact Real.log_nonneg (by norm_num)
  have hs := pow_le_pow_left₀
    (mul_nonneg (mul_nonneg radialFloor_positive.le hlog) (abs_nonneg _)) hr 2
  rw [sq_abs] at hs
  have hp := mul_le_mul (radial_lower p hρ) (radial_lower p hη)
    radialFloor_positive.le (Real.exp_pos _).le
  have hx := mul_le_mul_of_nonneg_right hp (sq_nonneg ‖phase ρ.im p - phase η.im p‖)
  change _ ≤ ‖(radial p ρ.re : ℂ) * phase ρ.im p -
    (radial p η.re : ℂ) * phase η.im p‖ ^ 2
  rw [he]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62eb2fe1e41b8a150fdcc6da78a85162b05c8c0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
