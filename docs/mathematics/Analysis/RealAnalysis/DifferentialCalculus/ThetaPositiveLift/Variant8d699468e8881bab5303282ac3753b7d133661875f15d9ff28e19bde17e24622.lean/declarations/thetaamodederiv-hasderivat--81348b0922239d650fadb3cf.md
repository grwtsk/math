# thetaAModeDeriv_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7be2ed98-2a46-e25a-2f34-b57bf6306ad4",
  "kind": "theorem",
  "lexical_name": "thetaAModeDeriv_hasDerivAt",
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
  "slug": "thetaamodederiv-hasderivat--81348b0922239d650fadb3cf",
  "source": {
    "blob": "17b699fc87d4882f0ad18076248869f9ba50eedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81348b0922239d650fadb3cf4504df03b16f4b591c6f0b5dc03848e773d31483",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be2ed98-2a46-e25a-2f34-b57bf6306ad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaAModeDeriv_hasDerivAt (m : ℕ) (t : ℝ) :
    HasDerivAt (thetaAModeDeriv m) (thetaAModeSecond m t) t := by
  let n : ℝ := (m : ℝ) + 1
  have h4 : HasDerivAt (fun x : ℝ => 4 * x) 4 t := by
    simpa using (hasDerivAt_id t).const_mul (4 : ℝ)
  have hexp4 : HasDerivAt (fun x : ℝ => Real.exp (4 * x)) (4 * Real.exp (4 * t)) t := by
    convert! (Real.hasDerivAt_exp (4 * t)).comp t h4 using 1
    ring
  have hc :
      HasDerivAt
        (fun x : ℝ => 1 - 4 * Real.pi * n ^ 2 * Real.exp (4 * x))
        (-16 * Real.pi * n ^ 2 * Real.exp (4 * t)) t := by
    convert! (hexp4.const_mul (4 * Real.pi * n ^ 2)).const_sub 1 using 1
    ring
  have hprod := (thetaAMode_hasDerivAt m t).mul hc
  have he8 : Real.exp (8 * t) = Real.exp (4 * t) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  convert! hprod using 1
  simp only [thetaAModeDeriv, thetaAModeSecond, n, he8]
  ring

/-- Summable domination of the first theta-mode derivatives on a compact interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b699fc87d4882f0ad18076248869f9ba50eedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
