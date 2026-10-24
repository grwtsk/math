# thetaExpBoundary_norm_le_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51634ea6266d194951610f866a17c80cdfc1c3f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54f96f8d-b3bb-80de-20d4-365acf7af367",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92b663a0-20ae-5299-fb31-ddd5d4934a6d",
  "kind": "theorem",
  "lexical_name": "thetaExpBoundary_norm_le_eventually",
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
  "slug": "thetaexpboundary-norm-le-eventually--cd5824dfaa425c29379ecf77",
  "source": {
    "blob": "51634ea6266d194951610f866a17c80cdfc1c3f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd5824dfaa425c29379ecf7723879caec08ae635a9825a196767c93d498d1266",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92b663a0-20ae-5299-fb31-ddd5d4934a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaExpBoundary_norm_le_eventually (u : ℂ) :
    ∀ᶠ t in atTop,
      ‖thetaExpBoundary u t‖ ≤
        thetaBoundaryDecayConstant u * Real.exp (-t) := by
  let r : ℝ := 2 * ‖u‖ + 1
  filter_upwards [eventually_ge_atTop (0 : ℝ),
    thetaA_norm_le_exp_rate_eventually r,
    thetaADerivSeries_norm_le_exp_rate_eventually r] with t ht hA hD
  have hk := thetaExpKernel_norm_le u ht
  unfold thetaExpBoundary
  rw [norm_mul]
  calc
    ‖(thetaADerivSeries t : ℂ) -
        (2 * u) * (thetaA t : ℂ)‖ *
        ‖thetaExpKernel u t‖
      ≤ (‖thetaADerivSeries t‖ +
          2 * ‖u‖ * ‖thetaA t‖) *
          Real.exp (2 * ‖u‖ * t) := by
        apply mul_le_mul
        · calc
            ‖(thetaADerivSeries t : ℂ) -
                (2 * u) * (thetaA t : ℂ)‖
              ≤ ‖(thetaADerivSeries t : ℂ)‖ +
                  ‖(2 * u) * (thetaA t : ℂ)‖ := norm_sub_le _ _
            _ = ‖thetaADerivSeries t‖ +
                2 * ‖u‖ * ‖thetaA t‖ := by
              simp [mul_assoc]
        · exact hk
        · positivity
        · positivity
    _ ≤ (thetaADerivDecayConstant * Real.exp (-r * t) +
          2 * ‖u‖ *
            (thetaADecayConstant * Real.exp (-r * t))) *
          Real.exp (2 * ‖u‖ * t) := by
        gcongr
    _ = (thetaADerivDecayConstant +
          2 * ‖u‖ * thetaADecayConstant) *
        (Real.exp (-r * t) * Real.exp (2 * ‖u‖ * t)) := by
      ring
    _ = thetaBoundaryDecayConstant u * Real.exp (-t) := by
      have hexp :
          Real.exp (-r * t) * Real.exp (2 * ‖u‖ * t) =
            Real.exp (-t) := by
        rw [← Real.exp_add]
        congr 1
        unfold r
        ring
      rw [hexp]
      rfl

/-- The oriented exponential boundary vanishes at infinity for every fixed
complex spectral parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51634ea6266d194951610f866a17c80cdfc1c3f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
