# earlyUnitFloorDensity_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82ad5cc2-bb6b-b9d3-6777-b8cc4d9939f2",
  "kind": "theorem",
  "lexical_name": "earlyUnitFloorDensity_integral",
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
  "slug": "earlyunitfloordensity-integral--a56202ba73d86bbf045e80fc",
  "source": {
    "blob": "b2872b504e1c6d3aee22280299ca8f5d48b319dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a56202ba73d86bbf045e80fc7c63e3133dfdcbabdbc90eaa4c5244ad29ec1151",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82ad5cc2-bb6b-b9d3-6777-b8cc4d9939f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlyUnitFloorDensity_integral {u : ℝ} (hu : 1 ≤ u) :
    (∫ x in Ioc (1 : ℝ) u, earlyUnitFloorDensity x) =
      -Real.sqrt u + 1 + (1 / 2 : ℝ) * ∫ x in Ioc (1 : ℝ) u, earlyFractionalDensity x := by
  have hs : IntegrableOn (fun x : ℝ => 1 / Real.sqrt x) (Ioc (1 : ℝ) u) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hu).mp
      (inv_sqrt_continuousOn.intervalIntegrable_of_Icc hu)
  have hf : IntegrableOn earlyFractionalDensity (Ioc (1 : ℝ) u) :=
    earlyFractionalDensity_integrable.mono_set Ioc_subset_Ioi_self
  have he : (∫ x in Ioc (1 : ℝ) u, earlyUnitFloorDensity x) =
      ∫ x in Ioc (1 : ℝ) u,
        (-(1 / 2 : ℝ)) * (1 / Real.sqrt x) + earlyFractionalDensity x / 2 := by
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    rw [earlyUnitFloorDensity_eq (by linarith [hx.1])]
    ring
  rw [he, integral_add (hs.const_mul _) (hf.div_const 2), integral_const_mul, integral_div,
    integral_inv_sqrt_Ioc hu]
  ring

/-- Actual C'/C deviation from the genuine unit-correlation derivative, at all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2872b504e1c6d3aee22280299ca8f5d48b319dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
