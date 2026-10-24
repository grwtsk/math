# seven_point_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:487de956-e0a8-36a5-bac9-8a9703973194",
  "kind": "lemma",
  "lexical_name": "seven_point_certificate",
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
  "slug": "seven-point-certificate--f4cefbfb8289d5f05bd2afc6",
  "source": {
    "blob": "a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 398,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4cefbfb8289d5f05bd2afc64442513ebf7fddb3afe1fd3f6e637c2fbad86fa8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:487de956-e0a8-36a5-bac9-8a9703973194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma seven_point_certificate (i : Fin 7) :
    ThreeLabelRegion (placedMoser i).re (placedMoser i).im := by
  obtain ⟨hx,hy⟩ := seven_point_boxes i
  fin_cases i
  · change ThreeLabelRegion (placedMoser 0).re (placedMoser 0).im
    change |(placedMoser 0).re-(-1.2906)|≤0.00011 at hx
    change |(placedMoser 0).im-(0.1876)|≤0.00011 at hy
    have hxx := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(-1.2906:ℝ)|) hx
    have hyy := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(0.1876:ℝ)|) hy
    norm_num at hxx hyy
    apply region_of_rational_bounds (a := 1.70) (b := 1.71) (Y := 0.0353) (H := 4.963) (d := 0.70)
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · nlinarith [hxx.1,hyy.1]
    · nlinarith [hxx.2,hyy.2]
    · nlinarith [hyy.2]
    · rw [abs_le]; constructor <;> nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · have hh := le_abs_self ((placedMoser 0).re^2+(placedMoser 0).im^2-1)
      nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · norm_num
  · change ThreeLabelRegion (placedMoser 1).re (placedMoser 1).im
    change |(placedMoser 1).re-(-0.6335)|≤0.00011 at hx
    change |(placedMoser 1).im-(0.9414)|≤0.00011 at hy
    have hxx := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(-0.6335:ℝ)|) hx
    have hyy := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(0.9414:ℝ)|) hy
    norm_num at hxx hyy
    apply region_of_rational_bounds (a := 1.28) (b := 1.29) (Y := 0.887) (H := 0.319) (d := 0.28)
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · nlinarith [hxx.1,hyy.1]
    · nlinarith [hxx.2,hyy.2]
    · nlinarith [hyy.2]
    · rw [abs_le]; constructor <;> nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · have hh := le_abs_self ((placedMoser 1).re^2+(placedMoser 1).im^2-1)
      nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · norm_num
  · change ThreeLabelRegion (placedMoser 2).re (placedMoser 2).im
    change |(placedMoser 2).re-(-0.3092)|≤0.00011 at hx
    change |(placedMoser 2).im-(-0.0045)|≤0.00011 at hy
    have hxx := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(-0.3092:ℝ)|) hx
    have hyy := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(-0.0045:ℝ)|) hy
    norm_num at hxx hyy
    apply region_of_rational_bounds (a := 0.095) (b := 0.096) (Y := 0.000022) (H := 0.287) (d := 0.904)
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · nlinarith [hxx.1,hyy.1]
    · nlinarith [hxx.2,hyy.2]
    · nlinarith [hyy.2]
    · rw [abs_le]; constructor <;> nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · have hh := neg_le_abs ((placedMoser 2).re^2+(placedMoser 2).im^2-1)
      nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · norm_num
  · change ThreeLabelRegion (placedMoser 3).re (placedMoser 3).im
    change |(placedMoser 3).re-(0.3478)|≤0.00011 at hx
    change |(placedMoser 3).im-(0.7493)|≤0.00011 at hy
    have hxx := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(0.3478:ℝ)|) hx
    have hyy := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(0.7493:ℝ)|) hy
    norm_num at hxx hyy
    apply region_of_rational_bounds (a := 0.682) (b := 0.683) (Y := 0.562) (H := 0.199) (d := 0.317)
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · nlinarith [hxx.1,hyy.1]
    · nlinarith [hxx.2,hyy.2]
    · nlinarith [hyy.2]
    · rw [abs_le]; constructor <;> nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · have hh := neg_le_abs ((placedMoser 3).re^2+(placedMoser 3).im^2-1)
      nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · norm_num
  · change ThreeLabelRegion (placedMoser 4).re (placedMoser 4).im
    change |(placedMoser 4).re-(-1.1598)|≤0.00011 at hx
    change |(placedMoser 4).im-(1.1790)|≤0.00011 at hy
    have hxx := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(-1.1598:ℝ)|) hx
    have hyy := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(1.1790:ℝ)|) hy
    norm_num at hxx hyy
    apply region_of_rational_bounds (a := 2.73) (b := 2.74) (Y := 1.391) (H := 2.647) (d := 1.73)
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · nlinarith [hxx.1,hyy.1]
    · nlinarith [hxx.2,hyy.2]
    · nlinarith [hyy.2]
    · rw [abs_le]; constructor <;> nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · have hh := le_abs_self ((placedMoser 4).re^2+(placedMoser 4).im^2-1)
      nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · norm_num
  · change ThreeLabelRegion (placedMoser 5).re (placedMoser 5).im
    change |(placedMoser 5).re-(-0.3666)|≤0.00011 at hx
    change |(placedMoser 5).im-(0.5700)|≤0.00011 at hy
    have hxx := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(-0.3666:ℝ)|) hx
    have hyy := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(0.5700:ℝ)|) hy
    norm_num at hxx hyy
    apply region_of_rational_bounds (a := 0.459) (b := 0.46) (Y := 0.326) (H := 0.079) (d := 0.54)
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · nlinarith [hxx.1,hyy.1]
    · nlinarith [hxx.2,hyy.2]
    · nlinarith [hyy.2]
    · rw [abs_le]; constructor <;> nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · have hh := neg_le_abs ((placedMoser 5).re^2+(placedMoser 5).im^2-1)
      nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · norm_num
  · change ThreeLabelRegion (placedMoser 6).re (placedMoser 6).im
    change |(placedMoser 6).re-(-0.2358)|≤0.00011 at hx
    change |(placedMoser 6).im-(1.5614)|≤0.00011 at hy
    have hxx := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(-0.2358:ℝ)|) hx
    have hyy := square_coordinate_bounds (by norm_num : (0:ℝ)≤0.00011)
      (by norm_num : (0.00011:ℝ)≤|(1.5614:ℝ)|) hy
    norm_num at hxx hyy
    apply region_of_rational_bounds (a := 2.493) (b := 2.495) (Y := 2.44) (H := 2.273) (d := 1.493)
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · norm_num
    · nlinarith [hxx.1,hyy.1]
    · nlinarith [hxx.2,hyy.2]
    · nlinarith [hyy.2]
    · rw [abs_le]; constructor <;> nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · have hh := le_abs_self ((placedMoser 6).re^2+(placedMoser 6).im^2-1)
      nlinarith [hxx.1,hxx.2,hyy.1,hyy.2]
    · norm_num
end EuclideanFiveColor
end

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
