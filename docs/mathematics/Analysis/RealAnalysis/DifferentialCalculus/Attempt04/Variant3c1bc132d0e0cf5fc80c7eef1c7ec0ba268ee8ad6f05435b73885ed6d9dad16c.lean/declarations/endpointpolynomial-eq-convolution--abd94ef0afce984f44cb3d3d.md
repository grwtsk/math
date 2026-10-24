# endpointPolynomial_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97e2282-9cf8-dafd-0a73-9897ff8764cf",
  "kind": "theorem",
  "lexical_name": "endpointPolynomial_eq_convolution",
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
  "slug": "endpointpolynomial-eq-convolution--abd94ef0afce984f44cb3d3d",
  "source": {
    "blob": "f714d0a165c2f5e26f06927914c3b6f9e8e789d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant3c1bc132d0e0cf5fc80c7eef1c7ec0ba268ee8ad6f05435b73885ed6d9dad16c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abd94ef0afce984f44cb3d3dd5bbfae3072ca81ff38d089777cd758156813939",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant3c1bc132d0e0cf5fc80c7eef1c7ec0ba268ee8ad6f05435b73885ed6d9dad16c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97e2282-9cf8-dafd-0a73-9897ff8764cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPolynomial_eq_convolution (r s : ℝ) :
    endpointPolynomial r s =
      ∫ v : ℝ in (0 : ℝ)..s, endpointQ r v * endpointQ r (s - v) := by
  have he : (fun v : ℝ => endpointQ r v * endpointQ r (s - v)) =
      (fun v => ((36864) * s ^ 2 +
    (-122880) * r * s ^ 3 +
    (-768) * s ^ 4 +
    (138240) * r ^ 2 * s ^ 4 +
    (1536) * r * s ^ 5 +
    (-64512) * r ^ 3 * s ^ 5 +
    (-1152) * r ^ 2 * s ^ 6 +
    (10752) * r ^ 4 * s ^ 6 +
    (384) * r ^ 3 * s ^ 7 +
    (-48) * r ^ 4 * s ^ 8) * v ^ 2 +
    ((-73728) * s +
    (245760) * r * s ^ 2 +
    (3072) * s ^ 3 +
    (-143360) * r ^ 2 * s ^ 3 +
    (-5120) * r * s ^ 4 +
    (-138240) * r ^ 3 * s ^ 4 +
    (1792) * r ^ 2 * s ^ 5 +
    (150528) * r ^ 4 * s ^ 5 +
    (1152) * r ^ 3 * s ^ 6 +
    (-35840) * r ^ 5 * s ^ 6 +
    (-896) * r ^ 4 * s ^ 7 +
    (160) * r ^ 5 * s ^ 8) * v ^ 3 +
    ((36864) +
    (-122880) * r * s +
    (-5376) * s ^ 2 +
    (-261120) * r ^ 2 * s ^ 2 +
    (7680) * r * s ^ 3 +
    (737280) * r ^ 3 * s ^ 3 +
    (16) * s ^ 4 +
    (2560) * r ^ 2 * s ^ 4 +
    (-395520) * r ^ 4 * s ^ 4 +
    (-32) * r * s ^ 5 +
    (-7872) * r ^ 3 * s ^ 5 +
    (-26880) * r ^ 5 * s ^ 5 +
    (24) * r ^ 2 * s ^ 6 +
    (3072) * r ^ 4 * s ^ 6 +
    (40320) * r ^ 6 * s ^ 6 +
    (-8) * r ^ 3 * s ^ 7 +
    (160) * r ^ 5 * s ^ 7 +
    (1) * r ^ 4 * s ^ 8 +
    (-180) * r ^ 6 * s ^ 8) * v ^ 4 +
    ((4608) * s +
    (399360) * r ^ 2 * s +
    (-6144) * r * s ^ 2 +
    (-801792) * r ^ 3 * s ^ 2 +
    (-64) * s ^ 3 +
    (-10240) * r ^ 2 * s ^ 3 +
    (76800) * r ^ 4 * s ^ 3 +
    (128) * r * s ^ 4 +
    (15744) * r ^ 3 * s ^ 4 +
    (430080) * r ^ 5 * s ^ 4 +
    (-80) * r ^ 2 * s ^ 5 +
    (-2304) * r ^ 4 * s ^ 5 +
    (-129024) * r ^ 6 * s ^ 5 +
    (8) * r ^ 3 * s ^ 6 +
    (-3136) * r ^ 5 * s ^ 6 +
    (-18816) * r ^ 7 * s ^ 6 +
    (8) * r ^ 4 * s ^ 7 +
    (768) * r ^ 6 * s ^ 7 +
    (-2) * r ^ 5 * s ^ 8 +
    (84) * r ^ 7 * s ^ 8) * v ^ 5 +
    ((-1536) +
    (-133120) * r ^ 2 +
    (2048) * r * s +
    (267264) * r ^ 3 * s +
    (96) * s ^ 2 +
    (13568) * r ^ 2 * s ^ 2 +
    (486912) * r ^ 4 * s ^ 2 +
    (-192) * r * s ^ 3 +
    (-16896) * r ^ 3 * s ^ 3 +
    (-770560) * r ^ 5 * s ^ 3 +
    (64) * r ^ 2 * s ^ 4 +
    (-4384) * r ^ 4 * s ^ 4 +
    (80640) * r ^ 6 * s ^ 4 +
    (72) * r ^ 3 * s ^ 5 +
    (8960) * r ^ 5 * s ^ 5 +
    (94080) * r ^ 7 * s ^ 5 +
    (-48) * r ^ 4 * s ^ 6 +
    (-1008) * r ^ 6 * s ^ 6 +
    (3136) * r ^ 8 * s ^ 6 +
    (4) * r ^ 5 * s ^ 7 +
    (-560) * r ^ 7 * s ^ 7 +
    ((3 / 2)) * r ^ 6 * s ^ 8 +
    (-14) * r ^ 8 * s ^ 8) * v ^ 6 +
    ((-64) * s +
    (-8704) * r ^ 2 * s +
    (-439296) * r ^ 4 * s +
    (128) * r * s ^ 2 +
    (9984) * r ^ 3 * s ^ 2 +
    (537600) * r ^ 5 * s ^ 2 +
    (64) * r ^ 2 * s ^ 3 +
    (11904) * r ^ 4 * s ^ 3 +
    (161280) * r ^ 6 * s ^ 3 +
    (-208) * r ^ 3 * s ^ 4 +
    (-13120) * r ^ 5 * s ^ 4 +
    (-188160) * r ^ 7 * s ^ 4 +
    (80) * r ^ 4 * s ^ 5 +
    (-672) * r ^ 6 * s ^ 5 +
    (-18816) * r ^ 8 * s ^ 5 +
    (16) * r ^ 5 * s ^ 6 +
    (1680) * r ^ 7 * s ^ 6 +
    (-8) * r ^ 6 * s ^ 7 +
    (112) * r ^ 8 * s ^ 7 +
    ((-1 / 2)) * r ^ 7 * s ^ 8) * v ^ 7 +
    ((16) +
    (2176) * r ^ 2 +
    (109824) * r ^ 4 +
    (-32) * r * s +
    (-2496) * r ^ 3 * s +
    (-134400) * r ^ 5 * s +
    (-136) * r ^ 2 * s ^ 2 +
    (-12336) * r ^ 4 * s ^ 2 +
    (-282240) * r ^ 6 * s ^ 2 +
    (232) * r ^ 3 * s ^ 3 +
    (11200) * r ^ 5 * s ^ 3 +
    (188160) * r ^ 7 * s ^ 3 +
    (-29) * r ^ 4 * s ^ 4 +
    (4020) * r ^ 6 * s ^ 4 +
    (47040) * r ^ 8 * s ^ 4 +
    (-70) * r ^ 5 * s ^ 5 +
    (-2940) * r ^ 7 * s ^ 5 +
    ((31 / 2)) * r ^ 6 * s ^ 6 +
    (-406) * r ^ 8 * s ^ 6 +
    ((7 / 2)) * r ^ 7 * s ^ 7 +
    ((1 / 16)) * r ^ 8 * s ^ 8) * v ^ 8 +
    ((80) * r ^ 2 * s +
    (6240) * r ^ 4 * s +
    (161280) * r ^ 6 * s +
    (-120) * r ^ 3 * s ^ 2 +
    (-5280) * r ^ 5 * s ^ 2 +
    (-94080) * r ^ 7 * s ^ 2 +
    (-60) * r ^ 4 * s ^ 3 +
    (-6000) * r ^ 6 * s ^ 3 +
    (-62720) * r ^ 8 * s ^ 3 +
    (110) * r ^ 5 * s ^ 4 +
    (3220) * r ^ 7 * s ^ 4 +
    (-9) * r ^ 6 * s ^ 5 +
    (868) * r ^ 8 * s ^ 5 +
    ((-21 / 2)) * r ^ 7 * s ^ 6 +
    ((-1 / 2)) * r ^ 8 * s ^ 7) * v ^ 9 +
    ((-16) * r ^ 2 +
    (-1248) * r ^ 4 +
    (-32256) * r ^ 6 +
    (24) * r ^ 3 * s +
    (1056) * r ^ 5 * s +
    (18816) * r ^ 7 * s +
    (78) * r ^ 4 * s ^ 2 +
    (4632) * r ^ 6 * s ^ 2 +
    (47040) * r ^ 8 * s ^ 2 +
    (-88) * r ^ 5 * s ^ 3 +
    (-2184) * r ^ 7 * s ^ 3 +
    ((-25 / 2)) * r ^ 6 * s ^ 4 +
    (-1190) * r ^ 8 * s ^ 4 +
    ((35 / 2)) * r ^ 7 * s ^ 5 +
    ((7 / 4)) * r ^ 8 * s ^ 6) * v ^ 10 +
    ((-36) * r ^ 4 * s +
    (-1872) * r ^ 6 * s +
    (-18816) * r ^ 8 * s +
    (36) * r ^ 5 * s ^ 2 +
    (840) * r ^ 7 * s ^ 2 +
    (26) * r ^ 6 * s ^ 3 +
    (1064) * r ^ 8 * s ^ 3 +
    ((-35 / 2)) * r ^ 7 * s ^ 4 +
    ((-7 / 2)) * r ^ 8 * s ^ 5) * v ^ 11 +
    ((6) * r ^ 4 +
    (312) * r ^ 6 +
    (3136) * r ^ 8 +
    (-6) * r ^ 5 * s +
    (-140) * r ^ 7 * s +
    ((-39 / 2)) * r ^ 6 * s ^ 2 +
    (-602) * r ^ 8 * s ^ 2 +
    ((21 / 2)) * r ^ 7 * s ^ 3 +
    ((35 / 8)) * r ^ 8 * s ^ 4) * v ^ 12 +
    ((7) * r ^ 6 * s +
    (196) * r ^ 8 * s +
    ((-7 / 2)) * r ^ 7 * s ^ 2 +
    ((-7 / 2)) * r ^ 8 * s ^ 3) * v ^ 13 +
    ((-1) * r ^ 6 +
    (-28) * r ^ 8 +
    ((1 / 2)) * r ^ 7 * s +
    ((7 / 4)) * r ^ 8 * s ^ 2) * v ^ 14 +
    (((-1 / 2)) * r ^ 8 * s) * v ^ 15 +
    (((1 / 16)) * r ^ 8) * v ^ 16) := by
    funext v
    unfold endpointQ
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow]
  norm_num
  unfold endpointPolynomial
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant3c1bc132d0e0cf5fc80c7eef1c7ec0ba268ee8ad6f05435b73885ed6d9dad16c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant3c1bc132d0e0cf5fc80c7eef1c7ec0ba268ee8ad6f05435b73885ed6d9dad16c.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f714d0a165c2f5e26f06927914c3b6f9e8e789d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
