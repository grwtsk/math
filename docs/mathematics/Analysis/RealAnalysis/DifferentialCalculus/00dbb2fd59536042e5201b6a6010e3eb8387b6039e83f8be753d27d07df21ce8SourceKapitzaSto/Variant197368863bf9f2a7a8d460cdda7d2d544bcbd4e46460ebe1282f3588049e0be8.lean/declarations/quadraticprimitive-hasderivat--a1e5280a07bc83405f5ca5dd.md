# quadraticPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3373790c-8c54-133f-ca4c-0953a23db906",
  "kind": "theorem",
  "lexical_name": "quadraticPrimitive_hasDerivAt",
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
  "slug": "quadraticprimitive-hasderivat--a1e5280a07bc83405f5ca5dd",
  "source": {
    "blob": "e8e495ae594bfd3985a66069a6fb687c560f7317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e5280a07bc83405f5ca5ddc06e925cba8f0e04d01194f12d26007443dd4a9f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3373790c-8c54-133f-ca4c-0953a23db906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticPrimitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt quadraticPrimitive (quadraticMajorant x) x := by
  have ht := (Real.hasDerivAt_log hx.ne').const_add (Real.log 2)
  have hp := (((ht.pow 2).const_mul 2).add (ht.const_mul 8)).add_const 16
  have hr := Real.hasDerivAt_rpow_const (x := x) (p := -(1 / 2 : ℝ)) (Or.inl hx.ne')
  have hd := (hp.mul hr).neg
  have hfun : -((fun t : ℝ ↦
      ((fun u : ℝ ↦ 2 * (Real.log 2 + Real.log u) ^ 2) +
        fun u : ℝ ↦ 8 * (Real.log 2 + Real.log u)) t + 16) *
      fun t : ℝ ↦ t ^ (-(1 / 2 : ℝ))) = quadraticPrimitive := by
    funext t
    dsimp [quadraticPrimitive]
    ring
  rw [hfun] at hd
  have hprod : x ^ (-(1 / 2 : ℝ)) * x⁻¹ = x ^ (-(3 / 2 : ℝ)) := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hx]
    norm_num
  apply hd.congr_deriv
  dsimp [quadraticMajorant]
  rw [show -(1 / 2 : ℝ) - 1 = -(3 / 2 : ℝ) by norm_num]
  rw [div_eq_mul_inv, ← Real.rpow_neg hx.le]
  calc
    -( (2 * (2 * (Real.log 2 + Real.log x) ^ (2 - 1) * x⁻¹) + 8 * x⁻¹) *
          x ^ (-(1 / 2 : ℝ)) +
        (2 * (Real.log 2 + Real.log x) ^ 2 + 8 * (Real.log 2 + Real.log x) + 16) *
          (-(1 / 2 : ℝ) * x ^ (-(3 / 2 : ℝ)))) =
      -( (4 * (Real.log 2 + Real.log x) + 8) *
          (x ^ (-(1 / 2 : ℝ)) * x⁻¹) +
        (2 * (Real.log 2 + Real.log x) ^ 2 + 8 * (Real.log 2 + Real.log x) + 16) *
          (-(1 / 2 : ℝ) * x ^ (-(3 / 2 : ℝ)))) := by norm_num; ring
    _ = (Real.log 2 + Real.log x) ^ 2 * x ^ (-(3 / 2 : ℝ)) := by rw [hprod]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variant197368863bf9f2a7a8d460cdda7d2d544bcbd4e46460ebe1282f3588049e0be8.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e495ae594bfd3985a66069a6fb687c560f7317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
