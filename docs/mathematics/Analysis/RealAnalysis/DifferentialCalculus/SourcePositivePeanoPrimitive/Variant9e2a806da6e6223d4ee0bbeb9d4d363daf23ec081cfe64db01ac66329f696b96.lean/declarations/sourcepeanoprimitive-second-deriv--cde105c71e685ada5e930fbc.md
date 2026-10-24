# sourcePeanoPrimitive_second_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190962ae-61fa-44d0-47e1-80db7212b39e",
  "kind": "theorem",
  "lexical_name": "sourcePeanoPrimitive_second_deriv",
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
  "slug": "sourcepeanoprimitive-second-deriv--cde105c71e685ada5e930fbc",
  "source": {
    "blob": "ad79cb3f1e4c216dc1f819b9eeb542508da5e4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde105c71e685ada5e930fbc5075e3d9acd596d8d94365a9183839277d9ab07b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190962ae-61fa-44d0-47e1-80db7212b39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePeanoPrimitive_second_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (sourcePeanoPrimitive A)) t =
      Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t := by
  let F := primitiveCorrelationZero A
  have hF : ContDiff ℝ 4 F := primitiveCorrelationZero_contDiff_four hA
  have hF1 : ContDiff ℝ 3 (deriv F) := hF.deriv'
  have hF2 : ContDiff ℝ 2 (deriv (deriv F)) := hF1.deriv'
  have hF3 : ContDiff ℝ 1 (deriv (deriv (deriv F))) := hF2.deriv'
  have hd0 (s : ℝ) : HasDerivAt F (deriv F s) s :=
    (hF.differentiable (by norm_num) s).hasDerivAt
  have hd1 (s : ℝ) : HasDerivAt (deriv F) (deriv (deriv F) s) s :=
    (hF1.differentiable (by norm_num) s).hasDerivAt
  have hd2 (s : ℝ) : HasDerivAt (deriv (deriv F))
      (deriv (deriv (deriv F)) s) s :=
    (hF2.differentiable (by norm_num) s).hasDerivAt
  have hd3 (s : ℝ) : HasDerivAt (deriv (deriv (deriv F)))
      (deriv (deriv (deriv (deriv F))) s) s :=
    (hF3.differentiable (by norm_num) s).hasDerivAt
  have he (s : ℝ) := ((hasDerivAt_id s).div_const 2).exp
  have hd : deriv (sourcePeanoPrimitive A) =
      (fun s => Real.exp (s / 2) *
        (deriv (deriv (deriv F)) s - deriv (deriv F) s / 2 -
          deriv F s / 4 + F s / 8)) := by
    funext s
    have hp := (he s).mul (((hd2 s).sub (hd1 s)).add ((hd0 s).div_const 4))
    exact (hp.congr_deriv (by dsimp only [id_eq, Pi.add_apply, Pi.sub_apply]; ring)).deriv
  have hp := (he t).mul
    ((((hd3 t).sub ((hd2 t).div_const 2)).sub ((hd1 t).div_const 4)).add
      ((hd0 t).div_const 8))
  have hs : HasDerivAt
      (fun s => Real.exp (s / 2) *
        (deriv (deriv (deriv F)) s - deriv (deriv F) s / 2 -
          deriv F s / 4 + F s / 8))
      (Real.exp (t / 2) *
        (deriv (deriv (deriv (deriv F))) t - deriv (deriv F) t / 2 + F t / 16)) t :=
    hp.congr_deriv (by dsimp only [id_eq, Pi.add_apply, Pi.sub_apply]; ring)
  rw [hd, hs.deriv]
  dsimp only [F]
  rw [primitiveCorrelationZero_fourth_deriv hA,
    primitiveCorrelationZero_second_deriv_eq_neg_one hA,
    sourceCorrelation_eq_primitive_filter hA]
  ring

/-- The actual primitive is globally C²; no regularity is assigned to prime atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad79cb3f1e4c216dc1f819b9eeb542508da5e4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
