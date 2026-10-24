# isPreconnected_sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c218c518-2064-78b8-0d0a-b48c00be9fbd",
  "kind": "theorem",
  "lexical_name": "isPreconnected_sUnion",
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
  "slug": "ispreconnected-sunion--415a12b76ded117215f82377",
  "source": {
    "blob": "524bba0218c9cea79b453a081dfae042d893f368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415a12b76ded117215f823778e4b484783bc9652af77e361949328a6bea902d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c218c518-2064-78b8-0d0a-b48c00be9fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_sUnion {s : Set (Set α)} (hs : IsPreconnected s)
    (h : ∃ t ∈ s, IsPreconnected t) : IsPreconnected (⋃₀ s) := by
  obtain ⟨t, hts, ht⟩ := h
  have hts' := subset_sUnion_of_mem hts
  /- Take open sets `U` and `V` covering `⋃₀ s`, and assume that they both intersect `⋃₀ s`. We have
  to show that `U` and `V` intersect within `⋃₀ s` -/
  intro U V hU hV hUV
  by_cases! ht' : t ⊆ U ∨ t ⊆ V
  · -- Consider the case when one of them covers `t`, say `U`.
    wlog htU : t ⊆ U generalizing U V
    · grind
    -- There is also some `u ∈ s` that intersects `V`.
    rintro - hV'
    rw [sUnion_eq_biUnion, iUnion₂_inter, nonempty_biUnion] at hV'
    obtain ⟨u, hus, huV⟩ := hV'
    -- Every set in `s` either is in `U` or intersects `V`.
    have : s ⊆ U.powerset ∪ {v | (v ∩ V).Nonempty} := by
      grind [=_ sdiff_subset_iff, =_ not_disjoint_iff_nonempty_inter]
    -- Since `s` connects `t` and `u`, there is some `v ∈ s` that is in `U` and intersects `V`.
    obtain ⟨v, hvs, hvU, hvV⟩ :=
      hs _ _ hU.powerset_vietoris (isOpen_inter_nonempty_of_isOpen hV) this
        ⟨t, hts, htU⟩ ⟨u, hus, huV⟩
    -- `U` intersects `V` within `v`, and therefore also within `⋃₀ s`.
    apply hvV.mono
    grind
  · -- If neither `U` nor `V` covers `t`, then they both intersect `t`, since `t ⊆ U ∪ V`.
    rintro - -
    have htU : ¬ Disjoint t U := by grind
    have htV : ¬ Disjoint t V := by grind
    rw [not_disjoint_iff_nonempty_inter] at htU htV
    -- By the connectedness of `t`, `U` and `V` intersect within `t`, and therefore within `⋃₀ s`.
    grw [← hts'] at hUV ⊢
    exact ht U V hU hV hUV htU htV

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524bba0218c9cea79b453a081dfae042d893f368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
