# cesaro_growth_of_global_first_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f0bcee0-34c3-10b3-ff7d-bc016ff96e39",
  "kind": "theorem",
  "lexical_name": "cesaro_growth_of_global_first_primitive",
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
  "slug": "cesaro-growth-of-global-first-primitive--6d52393fdab28f18b8202034",
  "source": {
    "blob": "d7a1fcaba4efe95753f4dede23992e8c3c380499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d52393fdab28f18b8202034ecf1a19ecc5534e8576303d227ca2c40507f7df5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f0bcee0-34c3-10b3-ff7d-bc016ff96e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaro_growth_of_global_first_primitive (MF : ℝ) (_hMF : 0 ≤ MF)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ MF)
    (t : ℝ) (ht : Real.log 2 ≤ t) :
    |actualCesaroPrimitive t| ≤ (2 * MF) * (t - Real.log 2) := by
  have hL : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hpoint (s : ℝ) (hs : s ∈ Ι (Real.log 2) t) :
      ‖centeredCriticalPrimitive s‖ ≤ 2 * MF := by
    have hsL : Real.log 2 ≤ s := ((uIoc_of_le ht) ▸ hs).1.le
    rw [Real.norm_eq_abs, centeredCriticalPrimitive]
    have h1 := abs_le.mp (hF s (hL.trans hsL))
    have h2 := abs_le.mp (hF (Real.log 2) hL)
    apply abs_le.mpr
    constructor
    · linarith [h1.1, h2.2]
    · linarith [h1.2, h2.1]
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hpoint
  simpa only [actualCesaroPrimitive, Real.norm_eq_abs,
    abs_of_nonneg (sub_nonneg.mpr ht)] using hb

/-- Concrete global first-primitive application with explicit 1044/91 loss and radius 91. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a1fcaba4efe95753f4dede23992e8c3c380499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
