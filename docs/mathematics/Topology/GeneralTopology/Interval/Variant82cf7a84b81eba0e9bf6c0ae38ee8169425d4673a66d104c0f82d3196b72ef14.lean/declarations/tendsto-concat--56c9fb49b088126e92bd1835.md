# tendsto_concat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a09d1dd585ec5f0f6df3b3e72296507ac0a88bbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5700a6d6-bd52-484a-d5a9-34056243fd55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49c30320-edab-6d3e-e928-899c968123c3",
  "kind": "theorem",
  "lexical_name": "tendsto_concat",
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
  "slug": "tendsto-concat--56c9fb49b088126e92bd1835",
  "source": {
    "blob": "a09d1dd585ec5f0f6df3b3e72296507ac0a88bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56c9fb49b088126e92bd18354742a42e11376737dfefbc19a512de4897a076f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c30320-edab-6d3e-e928-899c968123c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_concat {ι : Type*} {p : Filter ι} {F : ι → C(Icc a b, E)} {G : ι → C(Icc b c, E)}
    (hfg : ∀ᶠ i in p, (F i) ⊤ = (G i) ⊥) (hfg' : f ⊤ = g ⊥)
    (hf : Tendsto F p (𝓝 f)) (hg : Tendsto G p (𝓝 g)) :
    Tendsto (fun i => concat (F i) (G i)) p (𝓝 (concat f g)) := by
  rw [tendsto_nhds_compactOpen] at hf hg ⊢
  rintro K hK U hU hfgU
  have h : b ∈ Icc a c := ⟨Fact.out, Fact.out⟩
  let K₁ : Set (Icc a b) := projIccCM '' (Subtype.val '' (K ∩ Iic ⟨b, h⟩))
  let K₂ : Set (Icc b c) := projIccCM '' (Subtype.val '' (K ∩ Ici ⟨b, h⟩))
  have hK₁ : IsCompact K₁ :=
    hK.inter_right isClosed_Iic |>.image continuous_subtype_val |>.image projIccCM.continuous
  have hK₂ : IsCompact K₂ :=
    hK.inter_right isClosed_Ici |>.image continuous_subtype_val |>.image projIccCM.continuous
  have hfU : MapsTo f K₁ U := by
    rw [← concat_comp_IccInclusionLeft hfg']
    apply hfgU.comp
    rintro x ⟨y, ⟨⟨z, hz⟩, ⟨h1, (h2 : z ≤ b)⟩, rfl⟩, rfl⟩
    simpa [projIccCM, projIcc, h2, hz.1] using h1
  have hgU : MapsTo g K₂ U := by
    rw [← concat_comp_IccInclusionRight hfg']
    apply hfgU.comp
    rintro x ⟨y, ⟨⟨z, hz⟩, ⟨h1, (h2 : b ≤ z)⟩, rfl⟩, rfl⟩
    simpa [projIccCM, projIcc, h2, hz.2] using h1
  filter_upwards [hf K₁ hK₁ U hU hfU, hg K₂ hK₂ U hU hgU, hfg] with i hf hg hfg x hx
  by_cases hxb : x ≤ b
  · rw [concat_left hfg hxb]
    refine hf ⟨x, ⟨x, ⟨hx, hxb⟩, rfl⟩, ?_⟩
    simp [projIccCM, projIcc, hxb, x.2.1]
  · replace hxb : b ≤ x := lt_of_not_le hxb |>.le
    rw [concat_right hfg hxb]
    refine hg ⟨x, ⟨x, ⟨hx, hxb⟩, rfl⟩, ?_⟩
    simp [projIccCM, projIcc, hxb, x.2.2]

/-- The concatenation of compatible pairs of continuous maps on adjacent intervals, defined as a
`ContinuousMap` on a subtype of the product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant82cf7a84b81eba0e9bf6c0ae38ee8169425d4673a66d104c0f82d3196b72ef14.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a09d1dd585ec5f0f6df3b3e72296507ac0a88bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
