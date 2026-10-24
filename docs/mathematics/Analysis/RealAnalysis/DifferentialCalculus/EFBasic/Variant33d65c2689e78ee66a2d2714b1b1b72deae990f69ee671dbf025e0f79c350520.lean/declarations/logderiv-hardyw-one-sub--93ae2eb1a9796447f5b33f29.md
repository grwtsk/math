# logDeriv_hardyW_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38fc1192-47d9-c237-9a61-9c9d73c1298e",
  "kind": "theorem",
  "lexical_name": "logDeriv_hardyW_one_sub",
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
  "slug": "logderiv-hardyw-one-sub--93ae2eb1a9796447f5b33f29",
  "source": {
    "blob": "987f6c585cf712ebfb3430a2d8819ef5be564a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ae2eb1a9796447f5b33f296dc0e13684901dcb1a7a5643a51ff15ad4d57d58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38fc1192-47d9-c237-9a61-9c9d73c1298e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_hardyW_one_sub {s : ℂ} (hs : s.im ≠ 0) (hW : hardyW s ≠ 0) :
    logDeriv hardyW (1 - s) = -logDeriv hardyW s - 2 * L2 s := by
  have hs' := im_one_sub_ne_zero hs
  have hev : (fun z => hardyW (1 - z)) =ᶠ[𝓝 s] fun z => -(hardyW z / chiFE z) := by
    filter_upwards [isOpen_im_ne_zero.mem_nhds hs] with z hz
    rw [hardyW_eq_neg_chiFE_mul hz]
    field_simp [chiFE_ne_zero hz]
  have hχ := chiFE_ne_zero hs
  have hdW := hardyW_differentiableAt hs
  have hdχ := (chiFE_analyticAt hs).differentiableAt
  have hd1 : deriv (fun z => hardyW (1 - z)) s = -deriv hardyW (1 - s) := by
    have h1 : HasDerivAt (fun z : ℂ => 1 - z) (-1) s := by
      simpa using (hasDerivAt_const s (1:ℂ)).fun_sub (hasDerivAt_id s)
    have h := (hardyW_differentiableAt hs').hasDerivAt.comp s h1
    rw [show (hardyW ∘ HSub.hSub 1) = (fun z => hardyW (1 - z)) from rfl] at h
    rw [h.deriv]; ring
  have hd2 : deriv (fun z => hardyW (1 - z)) s = deriv (fun z => -(hardyW z / chiFE z)) s := hev.deriv_eq
  have hd3 : deriv (fun z => -(hardyW z / chiFE z)) s
      = -((deriv hardyW s * chiFE s - hardyW s * deriv chiFE s) / chiFE s ^ 2) := by
    have h := ((hdW.hasDerivAt).div (hdχ.hasDerivAt) hχ).neg
    exact h.deriv
  have hval : hardyW (1 - s) = -(hardyW s / chiFE s) := hev.self_of_nhds
  have hderiv : deriv hardyW (1 - s) = (deriv hardyW s * chiFE s - hardyW s * deriv chiFE s) / chiFE s ^ 2 := by
    have : deriv hardyW (1 - s) = -deriv (fun z => hardyW (1 - z)) s := by rw [hd1]; ring
    rw [this, hd2, hd3]; ring
  rw [logDeriv_apply, logDeriv_apply, hval, hderiv, deriv_chiFE hs]
  field_simp
  ring

/-- **[XF′ (Z2)]**  F_𝒵(1−s) = −F_𝒵(s), off ℝ, wherever W(s) ≠ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987f6c585cf712ebfb3430a2d8819ef5be564a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
