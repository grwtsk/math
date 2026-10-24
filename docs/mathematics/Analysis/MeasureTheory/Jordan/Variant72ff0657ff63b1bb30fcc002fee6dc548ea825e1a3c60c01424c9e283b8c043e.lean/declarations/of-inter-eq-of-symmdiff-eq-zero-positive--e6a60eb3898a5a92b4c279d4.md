# of_inter_eq_of_symmDiff_eq_zero_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be2c92f1-9b2f-69b4-015c-715388a259b3",
  "kind": "theorem",
  "lexical_name": "of_inter_eq_of_symmDiff_eq_zero_positive",
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
  "slug": "of-inter-eq-of-symmdiff-eq-zero-positive--e6a60eb3898a5a92b4c279d4",
  "source": {
    "blob": "9f2e8c3b7ca084fa741bfd3798b95748a962f059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 298,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6a60eb3898a5a92b4c279d4af74f56af48f151560934efd6411b1d26cf82013",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be2c92f1-9b2f-69b4-015c-715388a259b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_inter_eq_of_symmDiff_eq_zero_positive (hu : MeasurableSet u) (hv : MeasurableSet v)
    (hw : MeasurableSet w) (hsu : 0 ≤[u] s) (hsv : 0 ≤[v] s) (hs : s (u ∆ v) = 0) :
    s (w ∩ u) = s (w ∩ v) := by
  have hwuv : s ((w ∩ u) ∆ (w ∩ v)) = 0 := by
    refine
      subset_positive_null_set (hu.union hv) ((hw.inter hu).symmDiff (hw.inter hv))
        (hu.symmDiff hv) (restrict_le_restrict_union _ _ hu hsu hv hsv) hs
        Set.symmDiff_subset_union ?_
    rw [← Set.inter_symmDiff_distrib_left]
    exact Set.inter_subset_right
  obtain ⟨huv, hvu⟩ :=
    of_diff_eq_zero_of_symmDiff_eq_zero_positive (hw.inter hu) (hw.inter hv)
      (restrict_le_restrict_subset _ _ hu hsu (w.inter_subset_right))
      (restrict_le_restrict_subset _ _ hv hsv (w.inter_subset_right)) hwuv
  rw [← of_diff_of_diff_eq_zero (hw.inter hu) (hw.inter hv) hvu, huv, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2e8c3b7ca084fa741bfd3798b95748a962f059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
