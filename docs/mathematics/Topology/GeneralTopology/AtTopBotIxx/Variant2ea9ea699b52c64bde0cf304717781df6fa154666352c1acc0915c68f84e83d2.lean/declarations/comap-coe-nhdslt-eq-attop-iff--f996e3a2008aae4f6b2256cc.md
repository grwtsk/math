# comap_coe_nhdsLT_eq_atTop_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62384a0d7de2eb41a8470cecb2a385ac0a4adec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:259967c7-6267-f88c-8455-d7b438bafbc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:120bef0b-fa4e-454e-2b0d-b1266bd68fc7",
  "kind": "theorem",
  "lexical_name": "comap_coe_nhdsLT_eq_atTop_iff",
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
  "slug": "comap-coe-nhdslt-eq-attop-iff--f996e3a2008aae4f6b2256cc",
  "source": {
    "blob": "62384a0d7de2eb41a8470cecb2a385ac0a4adec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f996e3a2008aae4f6b2256ccf7382c4c1fb27d025556e2b6185d19b654d97960",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:120bef0b-fa4e-454e-2b0d-b1266bd68fc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_coe_nhdsLT_eq_atTop_iff :
    comap ((↑) : s → X) (𝓝[<] b) = atTop ↔
      s ⊆ Iio b ∧ (s.Nonempty → ∀ a < b, (s ∩ Ioo a b).Nonempty) := by
  rcases s.eq_empty_or_nonempty with rfl | hsne
  · simp [eq_iff_true_of_subsingleton]
  have := hsne.to_subtype
  simp only [hsne, true_imp_iff]
  by_cases hsub : s ⊆ Iio b
  · simp only [hsub, true_and]
    constructor
    · intro h a ha
      have := preimage_mem_comap (m := ((↑) : s → X)) (Ioo_mem_nhdsLT ha)
      rw [h] at this
      rcases Filter.nonempty_of_mem this with ⟨⟨c, hcs⟩, hc⟩
      exact ⟨c, hcs, hc⟩
    · intro h
      refine (nhdsLT_basis_of_exists_lt (hsne.mono hsub)).comap _ |>.ext atTop_basis ?_ ?_
      · intro a hab
        rcases h a hab with ⟨c, hcs, hc⟩
        use ⟨c, hcs⟩
        simp_all [subset_def, hc.1.trans_le]
      · rintro ⟨a, has⟩ -
        use a, hsub has
        simp_all [subset_def, le_of_lt]
  · suffices ¬Tendsto (↑) (atTop : Filter s) (𝓝[<] b) by
      contrapose this
      simp_all [tendsto_iff_comap]
    intro h
    rcases not_subset_iff_exists_mem_notMem.mp hsub with ⟨a, has, ha⟩
    rcases h.eventually eventually_mem_nhdsWithin |>.and (eventually_ge_atTop ⟨a, has⟩) |>.exists
      with ⟨⟨c, hcs⟩, hcb, hac⟩
    apply lt_irrefl a
    calc
      a ≤ c := by simpa using hac
      _ < b := by simpa using hcb
      _ ≤ a := by simpa using ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AtTopBotIxx/Variant2ea9ea699b52c64bde0cf304717781df6fa154666352c1acc0915c68f84e83d2.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62384a0d7de2eb41a8470cecb2a385ac0a4adec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
