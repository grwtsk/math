# measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a46d1467-d338-ed18-0826-387373e5da86",
  "kind": "lemma",
  "lexical_name": "measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'",
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
  "slug": "measure-eq-top-of-subset-compl-sigmafinitesetwrt--00840d8268c160b807a3f7c7",
  "source": {
    "blob": "1226e60b1fc97c6fed211d1281f324114d9eb547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 242,
    "path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00840d8268c160b807a3f7c74eeb19ba7a0fe62f59c8c499f7e7fa24b1078be8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a46d1467-d338-ed18-0826-387373e5da86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_eq_top_of_subset_compl_sigmaFiniteSetWRT' [IsFiniteMeasure ν]
    (hs_subset : s ⊆ (μ.sigmaFiniteSetWRT' ν)ᶜ) (hνs : ν s ≠ 0) :
    μ s = ∞ := by
  rw [measure_eq_iInf]
  simp_rw [iInf_eq_top]
  suffices ∀ t, t ⊆ (μ.sigmaFiniteSetWRT' ν)ᶜ → s ⊆ t → MeasurableSet t → μ t = ∞ by
    intro t hts ht
    suffices μ (t ∩ (μ.sigmaFiniteSetWRT' ν)ᶜ) = ∞ from
      measure_mono_top Set.inter_subset_left this
    have hs_subset_t : s ⊆ t ∩ (μ.sigmaFiniteSetWRT' ν)ᶜ := Set.subset_inter hts hs_subset
    exact this (t ∩ (μ.sigmaFiniteSetWRT' ν)ᶜ) Set.inter_subset_right hs_subset_t
      (ht.inter measurableSet_sigmaFiniteSetWRT'.compl)
  intro t ht_subset hst ht
  refine measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'_of_measurableSet ht ht_subset ?_
  exact fun hνt ↦ hνs (measure_mono_null hst hνt)

end IsFiniteMeasure

section SFinite

/-- For all sets `s` in `(μ.sigmaFiniteSetWRT ν)ᶜ`, if `ν s ≠ 0` then `μ s = ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1226e60b1fc97c6fed211d1281f324114d9eb547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
