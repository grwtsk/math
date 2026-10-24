# windowPrimitive_second_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f594565d-8379-66f8-dd2e-201170586bdf",
  "kind": "theorem",
  "lexical_name": "windowPrimitive_second_difference",
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
  "slug": "windowprimitive-second-difference--b9953ce9135749f59db9afae",
  "source": {
    "blob": "7a8ef443abc47f9d8fe07040aaf0931880b7a8e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 75,
    "path": "GRWTSK/Analysis/Real/RationalRieszPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9953ce9135749f59db9afae800387c589246b51ee6365ae45e251b9f746afe3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f594565d-8379-66f8-dd2e-201170586bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem windowPrimitive_second_difference (a b x h : ℝ)
    (ha : 1 < a) (hh : 0 < h) (hal : a ≤ x - h) (hrb : x + h ≤ b) :
    windowPrimitive a b (x + h) - 2 * windowPrimitive a b x +
      windowPrimitive a b (x - h) = h * rationalTentCorrection x h := by
  let H : ℝ → ℝ → ℝ := fun u t => max (u - t) 0 * rationalDensity t
  have hab : a ≤ b := by linarith
  have hp := hinge_density_integrable a b (x + h) ha hab
  have hc := hinge_density_integrable a b x ha hab
  have hm := hinge_density_integrable a b (x - h) ha hab
  have he : (∫ t in a..b, (H (x + h) t - 2 * H x t + H (x - h) t)) =
      (∫ t in a..b, H (x + h) t) - 2 * (∫ t in a..b, H x t) +
        (∫ t in a..b, H (x - h) t) := by
    rw [intervalIntegral.integral_add (hp.sub (hc.const_mul 2)) hm,
      intervalIntegral.integral_sub hp (hc.const_mul 2), intervalIntegral.integral_const_mul]
  have hg : (fun t => H (x + h) t - 2 * H x t + H (x - h) t) =
      (fun t => h * (tent x h t * rationalDensity t)) := by
    funext t
    have hhg := hinge_second_difference x h t hh
    dsimp [H]
    nlinarith only [congrArg (fun v : ℝ => v * rationalDensity t) hhg]
  rw [hg, intervalIntegral.integral_const_mul,
    integral_tent_on_window a b x h hh hal hrb] at he
  unfold windowPrimitive rationalTentCorrection
  dsimp [H] at he
  linarith

/-- A single independently defined primitive, for every admitted tent above its base. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalRieszPrimitive.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8ef443abc47f9d8fe07040aaf0931880b7a8e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
