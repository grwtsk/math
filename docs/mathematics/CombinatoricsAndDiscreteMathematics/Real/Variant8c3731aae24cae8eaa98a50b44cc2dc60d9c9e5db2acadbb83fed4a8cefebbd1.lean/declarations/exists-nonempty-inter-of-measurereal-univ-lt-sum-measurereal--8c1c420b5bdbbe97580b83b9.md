# exists_nonempty_inter_of_measureReal_univ_lt_sum_measureReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86ce9cc8-8bc5-a98a-3fd0-aed760e3d627",
  "kind": "theorem",
  "lexical_name": "exists_nonempty_inter_of_measureReal_univ_lt_sum_measureReal",
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
  "slug": "exists-nonempty-inter-of-measurereal-univ-lt-sum-measurereal--8c1c420b5bdbbe97580b83b9",
  "source": {
    "blob": "5c42626b68c7cbe07432643f4bacf415f6fa2c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 404,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c1c420b5bdbbe97580b83b99838416a2ba9f33d8f0c2422cd37fcaa326a316e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86ce9cc8-8bc5-a98a-3fd0-aed760e3d627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nonempty_inter_of_measureReal_univ_lt_sum_measureReal [IsFiniteMeasure μ]
    {s : Finset ι} {t : ι → Set α} (h : ∀ i ∈ s, MeasurableSet (t i))
    (H : μ.real univ < ∑ i ∈ s, μ.real (t i)) :
    ∃ i ∈ s, ∃ j ∈ s, ∃ _h : i ≠ j, (t i ∩ t j).Nonempty := by
  apply exists_nonempty_inter_of_measure_univ_lt_sum_measure μ
    (fun i mi ↦ (h i mi).nullMeasurableSet)
  simp only [Measure.real] at H
  apply (ENNReal.toReal_lt_toReal (measure_ne_top _ _) _).1
  · convert H
    rw [ENNReal.toReal_sum (fun i hi ↦ measure_ne_top _ _)]
  · exact (ENNReal.sum_lt_top.mpr (fun i hi ↦ measure_lt_top ..)).ne

/-- If two sets `s` and `t` are included in a set `u` of finite measure,
and `μ.real s + μ.real t > μ.real u`, then `s` intersects `t`.
Version assuming that `t` is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant8c3731aae24cae8eaa98a50b44cc2dc60d9c9e5db2acadbb83fed4a8cefebbd1.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c42626b68c7cbe07432643f4bacf415f6fa2c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
