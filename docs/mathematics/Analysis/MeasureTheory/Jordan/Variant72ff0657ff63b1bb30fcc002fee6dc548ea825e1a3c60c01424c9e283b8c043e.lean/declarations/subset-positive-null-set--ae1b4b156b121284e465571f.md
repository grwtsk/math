# subset_positive_null_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9364a704-10f9-475f-1f98-ed950a6182d2",
  "kind": "theorem",
  "lexical_name": "subset_positive_null_set",
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
  "slug": "subset-positive-null-set--ae1b4b156b121284e465571f",
  "source": {
    "blob": "9f2e8c3b7ca084fa741bfd3798b95748a962f059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 250,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae1b4b156b121284e465571f032c08abb56a2b834a6a8da408eb5b5819ec87ed",
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

Occurrence: `result:9364a704-10f9-475f-1f98-ed950a6182d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_positive_null_set (hu : MeasurableSet u) (hv : MeasurableSet v)
    (hw : MeasurableSet w) (hsu : 0 ≤[u] s) (hw₁ : s w = 0) (hw₂ : w ⊆ u) (hwt : v ⊆ w) :
    s v = 0 := by
  have : s v + s (w \ v) = 0 := by
    rw [← hw₁, ← of_union Set.disjoint_sdiff_right hv (hw.diff hv), Set.union_diff_self,
      Set.union_eq_self_of_subset_left hwt]
  have h₁ := nonneg_of_zero_le_restrict _ (restrict_le_restrict_subset _ _ hu hsu (hwt.trans hw₂))
  have h₂ : 0 ≤ s (w \ v) :=
    nonneg_of_zero_le_restrict _
      (restrict_le_restrict_subset _ _ hu hsu (diff_subset.trans hw₂))
  linarith

/-- A subset `v` of a null-set `w` has zero measure if `w` is a subset of a negative set `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2e8c3b7ca084fa741bfd3798b95748a962f059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
