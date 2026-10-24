# ContinuousOn.comp_fract'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:205e6238-5140-38c8-8395-5d3a33723c55",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.comp_fract'",
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
  "slug": "continuouson-comp-fract--7dd719380b8b47586348cbde",
  "source": {
    "blob": "fa93f01fe87c6a2b20e190199ad7b5961ca73a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dd719380b8b47586348cbdef24f2388947ffc919aae518e8b635f3a9057263e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:205e6238-5140-38c8-8395-5d3a33723c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.comp_fract' {f : β → α → γ} (h : ContinuousOn (uncurry f) <| univ ×ˢ I)
    (hf : ∀ s, f s 0 = f s 1) : Continuous fun st : β × α => f st.1 (fract st.2) := by
  change Continuous (uncurry f ∘ Prod.map id fract)
  rw [continuous_iff_continuousAt]
  rintro ⟨s, t⟩
  rcases em (∃ n : ℤ, t = n) with (⟨n, rfl⟩ | ht)
  · rw [ContinuousAt, nhds_prod_eq, ← nhdsLT_sup_nhdsGE (n : α), prod_sup, tendsto_sup]
    constructor
    · refine (((h (s, 1) ⟨trivial, zero_le_one, le_rfl⟩).tendsto.mono_left ?_).comp
        (tendsto_id.prodMap (tendsto_fract_left _))).mono_right (le_of_eq ?_)
      · rw [nhdsWithin_prod_eq, nhdsWithin_univ, ← nhdsWithin_Ico_eq_nhdsLT one_pos]
        exact Filter.prod_mono le_rfl (nhdsWithin_mono _ Ico_subset_Icc_self)
      · simp [hf]
    · refine (((h (s, 0) ⟨trivial, le_rfl, zero_le_one⟩).tendsto.mono_left <| le_of_eq ?_).comp
        (tendsto_id.prodMap (tendsto_fract_right _))).mono_right (le_of_eq ?_) <;>
        simp [nhdsWithin_prod_eq, nhdsWithin_univ]
  · replace ht : t ≠ ⌊t⌋ := fun ht' => ht ⟨_, ht'⟩
    refine (h.continuousAt ?_).comp (continuousAt_id.prodMap (continuousAt_fract ht))
    exact prod_mem_nhds univ_mem (Icc_mem_nhds (fract_pos.2 ht) (fract_lt_one _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa93f01fe87c6a2b20e190199ad7b5961ca73a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
