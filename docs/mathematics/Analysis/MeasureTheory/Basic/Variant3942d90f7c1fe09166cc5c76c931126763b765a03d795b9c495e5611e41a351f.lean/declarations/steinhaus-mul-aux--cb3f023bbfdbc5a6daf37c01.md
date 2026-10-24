# steinhaus_mul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a66731b5-4e3a-42e7-faf1-531a787e21df",
  "kind": "lemma",
  "lexical_name": "steinhaus_mul_aux",
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
  "slug": "steinhaus-mul-aux--cb3f023bbfdbc5a6daf37c01",
  "source": {
    "blob": "dd891980ce77e38bac81917cee7cb19bd0750433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 598,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb3f023bbfdbc5a6daf37c01491c1c34277e6f3d3f8e4d7162aff663153af4bc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66731b5-4e3a-42e7-faf1-531a787e21df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma steinhaus_mul_aux (μ : Measure G) [IsHaarMeasure μ] [μ.InnerRegularCompactLTTop]
    [LocallyCompactSpace G] (E : Set G) (hE : MeasurableSet E)
    (hEapprox : ∃ K ⊆ E, IsCompact K ∧ 0 < μ K) : E / E ∈ 𝓝 (1 : G) := by
  /- For any measure `μ` and set `E` containing a compact set `K` of positive measure, there exists
  a neighborhood `V` of the identity such that `v • K \ K` has small measure for all `v ∈ V`, say
  `< μ K`. Then `v • K` and `K` can not be disjoint, as otherwise `μ (v • K \ K) = μ (v • K) = μ K`.
  This show that `K / K` contains the neighborhood `V` of `1`, and therefore that it is
  itself such a neighborhood. -/
  obtain ⟨K, hKE, hK, K_closed, hKpos⟩ : ∃ K ⊆ E, IsCompact K ∧ IsClosed K ∧ 0 < μ K := by
    obtain ⟨K, hKE, hK_comp, hK_meas⟩ := hEapprox
    exact ⟨closure K, hK_comp.closure_subset_measurableSet hE hKE, hK_comp.closure,
      isClosed_closure, by rwa [hK_comp.measure_closure]⟩
  filter_upwards [eventually_nhds_one_measure_smul_diff_lt hK K_closed hKpos.ne' (μ := μ)] with g hg
  obtain ⟨_, ⟨x, hxK, rfl⟩, hgxK⟩ : ∃ x ∈ g • K, x ∈ K :=
     not_disjoint_iff.1 fun hd ↦ by simp [hd.symm.sdiff_eq_right, measure_smul] at hg
  simpa using div_mem_div (hKE hgxK) (hKE hxK)

/-- **Steinhaus Theorem** for finite mass sets.

In any locally compact group `G` with an Haar measure `μ` that's inner regular on finite measure
sets, for any measurable set `E` of finite positive measure, the set `E / E` is a neighbourhood of
`1`. -/
@[to_additive
"**Steinhaus Theorem** for finite mass sets.

In any locally compact group `G` with an Haar measure `μ` that's inner regular on finite measure
sets, for any measurable set `E` of finite positive measure, the set `E - E` is a neighbourhood of
`0`. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd891980ce77e38bac81917cee7cb19bd0750433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
