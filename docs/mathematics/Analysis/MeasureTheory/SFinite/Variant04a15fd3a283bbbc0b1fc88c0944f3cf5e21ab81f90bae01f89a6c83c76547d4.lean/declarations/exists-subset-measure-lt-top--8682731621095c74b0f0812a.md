# exists_subset_measure_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b30ce1e-8e03-8fed-5c27-0bd74532c4c1",
  "kind": "theorem",
  "lexical_name": "exists_subset_measure_lt_top",
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
  "slug": "exists-subset-measure-lt-top--8682731621095c74b0f0812a",
  "source": {
    "blob": "853877bcadd246cff80f7cda3a45128b777b6388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 459,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8682731621095c74b0f0812a1a69fd524551ea58a25240397364fee9ea373482",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b30ce1e-8e03-8fed-5c27-0bd74532c4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subset_measure_lt_top [SigmaFinite μ] {r : ℝ≥0∞} (hs : MeasurableSet s)
    (h's : r < μ s) : ∃ t, MeasurableSet t ∧ t ⊆ s ∧ r < μ t ∧ μ t < ∞ := by
  rw [← iSup_restrict_spanningSets,
    @lt_iSup_iff _ _ _ r fun i : ℕ => μ.restrict (spanningSets μ i) s] at h's
  rcases h's with ⟨n, hn⟩
  simp only [restrict_apply hs] at hn
  refine
    ⟨s ∩ spanningSets μ n, hs.inter (measurableSet_spanningSets _ _), inter_subset_left, hn, ?_⟩
  exact (measure_mono inter_subset_right).trans_lt (measure_spanningSets_lt_top _ _)

namespace FiniteSpanningSetsIn

variable {C D : Set (Set α)}

/-- If `μ` has finite spanning sets in `C` and `C ∩ {s | μ s < ∞} ⊆ D` then `μ` has finite spanning
sets in `D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `853877bcadd246cff80f7cda3a45128b777b6388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
