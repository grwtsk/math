# isLocallyClosedAt_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26471f96-2bfc-8109-d64c-cf7770667320",
  "kind": "lemma",
  "lexical_name": "isLocallyClosedAt_tfae",
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
  "slug": "islocallyclosedat-tfae--bbc064a3c7384d8c1d861371",
  "source": {
    "blob": "6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc064a3c7384d8c1d86137158c1a36df886d7d820959189c51b6cc1ff88360c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26471f96-2bfc-8109-d64c-cf7770667320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyClosedAt_tfae (s : Set X) (x : X) :
    List.TFAE
    [ IsLocallyClosedAt s x,
      ∃ U ∈ 𝓝 x, IsClosed (U ↓∩ s),
      ∃ U ∈ 𝓝 x, U ∩ closure s ⊆ s,
      ∃ U ∈ 𝓝 x, U ∩ s = U ∩ closure s,
      ∃ Z, IsClosed Z ∧ s =ᶠ[𝓝 x] Z,
      s =ᶠ[𝓝 x] closure s,
      closure s ≤ᶠ[𝓝 x] s,
      s ∈ 𝓝[closure s] x,
      coborder s ∈ 𝓝 x] := by
  tfae_have 1 ↔ 2 := by
    simp [IsLocallyClosedAt, IsInducing.subtypeVal.isClosed_iff,
      Subtype.preimage_val_eq_preimage_val_iff, eq_comm]
  tfae_have 2 → 3 := by
    intro H
    have (U V : Set X) (U_sub_V : U ⊆ V) (h : IsClosed (V ↓∩ s)) : IsClosed (U ↓∩ s) :=
      h.preimage <| continuous_inclusion U_sub_V
    rw [nhds_basis_opens' x |>.exists_iff this] at H
    obtain ⟨U, ⟨U_mem, U_open⟩, H⟩ := H
    rw [← closure_subset_iff_isClosed,
      ← U_open.isOpenMap_subtype_val.preimage_closure_eq_closure_preimage (by fun_prop),
      Subtype.preimage_val_subset_preimage_val_iff] at H
    exact ⟨U, U_mem, by simpa using H⟩
  tfae_have 3 ↔ 4 := by grind [subset_closure]
  tfae_have 4 → 1 := by
    rintro ⟨U, U_mem, eq⟩
    exact ⟨U, U_mem, closure s, isClosed_closure, eq⟩
  tfae_have 1 ↔ 5 := by
    simp only [IsLocallyClosedAt, Set.ext_iff, mem_inter_iff, and_congr_right_iff,
      eventuallyEqSet_iff, eventually_iff_exists_mem]
    grind
  tfae_have 4 ↔ 6 := by simp [eventuallyEqSet_iff, eventually_iff_exists_mem, Set.ext_iff]
  tfae_have 6 → 7 := fun H ↦ H.symm.le
  tfae_have 7 → 6 := fun H ↦ EventuallyLE.antisymm (.of_forall subset_closure) H
  tfae_have 7 ↔ 8 := by
    simp_rw [← eventually_mem_set, eventually_nhdsWithin_iff]
    rfl
  tfae_have 8 ↔ 9 := by
    simp_rw [← eventually_mem_set, eventually_nhdsWithin_iff, mem_coborder_iff_imp]
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
