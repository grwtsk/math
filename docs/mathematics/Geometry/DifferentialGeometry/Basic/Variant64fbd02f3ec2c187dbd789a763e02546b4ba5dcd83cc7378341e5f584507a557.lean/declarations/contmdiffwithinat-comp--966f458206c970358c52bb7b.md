# ContMDiffWithinAt.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2db1ce5e-c7f2-ef89-bc34-084c8f18493a",
  "kind": "theorem",
  "lexical_name": "ContMDiffWithinAt.comp",
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
  "slug": "contmdiffwithinat-comp--966f458206c970358c52bb7b",
  "source": {
    "blob": "5296fbb115576f051f88f25372a75764296adb9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 59,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:966f458206c970358c52bb7b6ffc9200860cc1d3fd8224eb280237ddee6586be",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db1ce5e-c7f2-ef89-bc34-084c8f18493a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffWithinAt.comp {t : Set M'} {g : M' → M''} (x : M)
    (hg : ContMDiffWithinAt I' I'' n g t (f x)) (hf : ContMDiffWithinAt I I' n f s x)
    (st : MapsTo f s t) : ContMDiffWithinAt I I'' n (g ∘ f) s x := by
  rw [contMDiffWithinAt_iff] at hg hf ⊢
  refine ⟨hg.1.comp hf.1 st, ?_⟩
  set e := extChartAt I x
  set e' := extChartAt I' (f x)
  have : e' (f x) = (writtenInExtChartAt I I' x f) (e x) := by simp only [e, e', mfld_simps]
  rw [this] at hg
  have A : ∀ᶠ y in 𝓝[e.symm ⁻¹' s ∩ range I] e x, f (e.symm y) ∈ t ∧ f (e.symm y) ∈ e'.source := by
    simp only [e, ← map_extChartAt_nhdsWithin, eventually_map]
    filter_upwards [hf.1.tendsto (extChartAt_source_mem_nhds (I := I') (f x)),
      inter_mem_nhdsWithin s (extChartAt_source_mem_nhds (I := I) x)]
    rintro x' (hfx' : f x' ∈ e'.source) ⟨hx's, hx'⟩
    simp only [e, e.map_source hx', true_and, e.left_inv hx', st hx's, *]
  refine ((hg.2.comp _ (hf.2.mono inter_subset_right)
      ((mapsTo_preimage _ _).mono_left inter_subset_left)).mono_of_mem_nhdsWithin
      (inter_mem ?_ self_mem_nhdsWithin)).congr_of_eventuallyEq ?_ ?_
  · filter_upwards [A]
    rintro x' ⟨ht, hfx'⟩
    simp only [*, e, e',mem_preimage, writtenInExtChartAt, (· ∘ ·), mem_inter_iff, e'.left_inv,
      true_and]
    exact mem_range_self _
  · filter_upwards [A]
    rintro x' ⟨-, hfx'⟩
    simp only [*, e, e', (· ∘ ·), writtenInExtChartAt, e'.left_inv]
  · simp only [e, e', writtenInExtChartAt, (· ∘ ·), mem_extChartAt_source,
      e.left_inv, e'.left_inv]

/-- See note [comp_of_eq lemmas] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5296fbb115576f051f88f25372a75764296adb9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
