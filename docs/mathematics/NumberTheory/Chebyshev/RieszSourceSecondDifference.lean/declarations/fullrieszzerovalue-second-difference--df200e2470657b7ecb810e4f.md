# fullRieszZeroValue_second_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7db47981-6431-2c58-2a30-3e2fcd15761e",
  "kind": "theorem",
  "lexical_name": "fullRieszZeroValue_second_difference",
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
  "slug": "fullrieszzerovalue-second-difference--df200e2470657b7ecb810e4f",
  "source": {
    "blob": "43128d83d22f0fe4d49bf12917ac56024bbcb307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df200e2470657b7ecb810e4ffffcf4013db311bd63dea11fc7f8c5feaeaaf497",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7db47981-6431-2c58-2a30-3e2fcd15761e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullRieszZeroValue_second_difference (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    (fullRieszZeroValue (x + h) - 2 * fullRieszZeroValue x +
      fullRieszZeroValue (x - h)) / (h : ℂ) =
      -(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) := by
  have sp := (firstRiesz_absolute_summable (x + h) (by linarith)).2
  have sc := (firstRiesz_absolute_summable x (by linarith)).2
  have sm := (firstRiesz_absolute_summable (x - h) ha).2
  have he (z : ZeroPoint) :
      ((multiplicity z : ℂ) * firstRieszZeroKernel (x + h) z.1 -
        2 * ((multiplicity z : ℂ) * firstRieszZeroKernel x z.1) +
        (multiplicity z : ℂ) * firstRieszZeroKernel (x - h) z.1) / (h : ℂ) =
        (multiplicity z : ℂ) * tentKernel x h z.1 := by
    have h1 : z.1 + 1 ≠ 0 := by
      intro hz
      have hr := congrArg Complex.re hz
      have hs := (point_mem_strip z).1
      simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
      linarith
    have hk := firstRiesz_second_difference x h hh ha z.1 z.2.ne_zero h1
    change (_ * firstRieszKernel (x + h) z.1 -
      2 * (_ * firstRieszKernel x z.1) + _ * firstRieszKernel (x - h) z.1) / _ = _
    rw [← hk]
    ring
  have ht : (∑' z : ZeroPoint,
      ((multiplicity z : ℂ) * firstRieszZeroKernel (x + h) z.1 -
        2 * ((multiplicity z : ℂ) * firstRieszZeroKernel x z.1) +
        (multiplicity z : ℂ) * firstRieszZeroKernel (x - h) z.1) / (h : ℂ)) =
      ((∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel (x + h) z.1) -
        2 * (∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1) +
        ∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel (x - h) z.1) /
          (h : ℂ) := by
    rw [tsum_div_const, (sp.sub (sc.mul_left 2)).tsum_add sm,
      sp.tsum_sub (sc.mul_left 2), tsum_mul_left]
  simp_rw [he] at ht
  unfold fullRieszZeroValue
  rw [ht]
  ring

/-- The actual source is linked to the full first-Riesz zero kernel,
with the exact second difference of the pole and rational term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43128d83d22f0fe4d49bf12917ac56024bbcb307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
