# hasFDerivAt_exp_of_mem_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56f5144e-8ff6-c11f-7e43-6603d43dec27",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_exp_of_mem_ball",
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
  "slug": "hasfderivat-exp-of-mem-ball--c309458506ff0e0913b14b7f",
  "source": {
    "blob": "dd4e4b17b880065d3b1ee9b604a4f0dbbfc11f02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c309458506ff0e0913b14b7fec35a269a97982f325bc47b77f5cc97d5bacac1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56f5144e-8ff6-c11f-7e43-6603d43dec27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_exp_of_mem_ball [CharZero 𝕂] {x : 𝔸}
    (hx : x ∈ EMetric.ball (0 : 𝔸) (expSeries 𝕂 𝔸).radius) :
    HasFDerivAt (exp 𝕂) (exp 𝕂 x • (1 : 𝔸 →L[𝕂] 𝔸)) x := by
  have hpos : 0 < (expSeries 𝕂 𝔸).radius := (zero_le _).trans_lt hx
  rw [hasFDerivAt_iff_isLittleO_nhds_zero]
  suffices
    (fun h => exp 𝕂 x * (exp 𝕂 (0 + h) - exp 𝕂 0 - ContinuousLinearMap.id 𝕂 𝔸 h)) =ᶠ[𝓝 0] fun h =>
      exp 𝕂 (x + h) - exp 𝕂 x - exp 𝕂 x • ContinuousLinearMap.id 𝕂 𝔸 h by
    refine' (IsLittleO.const_mul_left _ _).congr' this (EventuallyEq.refl _ _)
    rw [← hasFDerivAt_iff_isLittleO_nhds_zero]
    exact hasFDerivAt_exp_zero_of_radius_pos hpos
  have : ∀ᶠ h in 𝓝 (0 : 𝔸), h ∈ EMetric.ball (0 : 𝔸) (expSeries 𝕂 𝔸).radius :=
    EMetric.ball_mem_nhds _ hpos
  filter_upwards [this] with _ hh
  rw [exp_add_of_mem_ball hx hh, exp_zero, zero_add, ContinuousLinearMap.id_apply, smul_eq_mul]
  ring
#align has_fderiv_at_exp_of_mem_ball hasFDerivAt_exp_of_mem_ball

/-- The exponential map in a commutative Banach algebra `𝔸` over a normed field `𝕂` of
characteristic zero has strict Fréchet derivative `exp 𝕂 x • 1 : 𝔸 →L[𝕂] 𝔸` at any point `x` in
the disk of convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4e4b17b880065d3b1ee9b604a4f0dbbfc11f02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
