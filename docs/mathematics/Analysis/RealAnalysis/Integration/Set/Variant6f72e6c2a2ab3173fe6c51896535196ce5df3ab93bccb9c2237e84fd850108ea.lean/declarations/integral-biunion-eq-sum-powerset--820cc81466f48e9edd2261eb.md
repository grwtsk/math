# integral_biUnion_eq_sum_powerset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2f23b4ffdeaafa6c1e4faf7407788f785400da8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:071c9af3-c114-aec2-8f7a-2754166fc8dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:910eb2aa-42cc-352f-fe2f-22352f1f6079",
  "kind": "theorem",
  "lexical_name": "integral_biUnion_eq_sum_powerset",
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
  "slug": "integral-biunion-eq-sum-powerset--820cc81466f48e9edd2261eb",
  "source": {
    "blob": "c2f23b4ffdeaafa6c1e4faf7407788f785400da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820cc81466f48e9edd2261eb101f05e4e5ba04e82e0620f3ddd00455beab89b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:910eb2aa-42cc-352f-fe2f-22352f1f6079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_biUnion_eq_sum_powerset {ι : Type*} {t : Finset ι} {s : ι → Set X}
    (hs : ∀ i ∈ t, MeasurableSet (s i)) (hf : ∀ i ∈ t, IntegrableOn f (s i) μ) :
    ∫ x in ⋃ i ∈ t, s i, f x ∂μ = ∑ u ∈ t.powerset with u.Nonempty,
      (-1 : ℝ) ^ (#u + 1) • ∫ x in ⋂ i ∈ u, s i, f x ∂μ := by
  simp_rw [← integral_smul, ← integral_indicator (Finset.measurableSet_biUnion _ hs)]
  have A (u) (hu : u ∈ t.powerset.filter (·.Nonempty)) : MeasurableSet (⋂ i ∈ u, s i) := by
    refine u.measurableSet_biInter fun i hi ↦ hs i ?_
    grind
  have : ∑ x ∈ t.powerset with x.Nonempty, ∫ (a : X) in ⋂ i ∈ x, s i, (-1 : ℝ) ^ (#x + 1) • f a ∂μ
      = ∑ x ∈ t.powerset with x.Nonempty, ∫ a, indicator (⋂ i ∈ x, s i)
        (fun a ↦ (-1 : ℝ) ^ (#x + 1) • f a) a ∂μ := by
    apply Finset.sum_congr rfl (fun x hx ↦ ?_)
    rw [← integral_indicator (A x hx)]
  rw [this, ← integral_finsetSum]; swap
  · intro u hu
    rw [integrable_indicator_iff (A u hu)]
    apply Integrable.smul
    simp only [Finset.mem_filter, Finset.mem_powerset] at hu
    rcases hu.2 with ⟨i, hi⟩
    exact (hf i (hu.1 hi)).mono (biInter_subset_of_mem hi) le_rfl
  congr with x
  convert! Finset.indicator_biUnion_eq_sum_powerset t s f x with u hu
  rw [indicator_smul_apply]
  norm_cast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f23b4ffdeaafa6c1e4faf7407788f785400da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
