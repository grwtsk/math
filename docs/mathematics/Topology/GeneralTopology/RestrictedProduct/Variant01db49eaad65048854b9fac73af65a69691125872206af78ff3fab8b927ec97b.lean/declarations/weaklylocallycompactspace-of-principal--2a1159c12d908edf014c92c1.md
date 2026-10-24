# weaklyLocallyCompactSpace_of_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b86d294c7d72ed8ed1fe13050939547dd635c170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 558,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3c34855-4a84-f54e-4586-abcfc8354f10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:493c9bff-33f3-1bc4-8ed8-677c328d0f05",
  "kind": "theorem",
  "lexical_name": "weaklyLocallyCompactSpace_of_principal",
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
  "slug": "weaklylocallycompactspace-of-principal--2a1159c12d908edf014c92c1",
  "source": {
    "blob": "b86d294c7d72ed8ed1fe13050939547dd635c170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 558,
    "path": "GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a1159c12d908edf014c92c1707833afa28f4dd4f2f21807667a3d1ce1825c8b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:493c9bff-33f3-1bc4-8ed8-677c328d0f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weaklyLocallyCompactSpace_of_principal [∀ i, WeaklyLocallyCompactSpace (R i)]
    (hS : cofinite ≤ 𝓟 S) (hAcompact : ∀ i ∈ S, IsCompact (A i)) :
    WeaklyLocallyCompactSpace (Πʳ i, [R i, A i]_[𝓟 S]) where
  exists_compact_mem_nhds := fun x ↦ by
    rw [le_principal_iff, mem_cofinite] at hS
    classical
    have : ∀ i, ∃ K, IsCompact K ∧ K ∈ 𝓝 (x i) := fun i ↦ exists_compact_mem_nhds (x i)
    choose K K_compact hK using this
    set Q : Set (Π i, R i) := univ.pi (fun i ↦ if i ∈ S then A i else K i) with Q_def
    have Q_compact : IsCompact Q := isCompact_univ_pi fun i ↦ by
      split_ifs with his
      · exact hAcompact i his
      · exact K_compact i
    set U : Set (Π i, R i) := Sᶜ.pi K
    have U_nhds : U ∈ 𝓝 (x : Π i, R i) := set_pi_mem_nhds hS fun i _ ↦ hK i
    have QU : (↑) ⁻¹' U ⊆ ((↑) ⁻¹' Q : Set (Πʳ i, [R i, A i]_[𝓟 S])) := fun y H i _ ↦ by
      dsimp only
      split_ifs with hi
      · exact y.2 hi
      · exact H i hi
    refine ⟨((↑) ⁻¹' Q), ?_, mem_of_superset ?_ QU⟩
    · refine isEmbedding_coe_of_principal.isCompact_preimage_iff ?_ |>.mpr Q_compact
      simp_rw [range_coe_principal, Q_def, pi_if, mem_univ, true_and]
      exact inter_subset_left
    · simpa only [isEmbedding_coe_of_principal.nhds_eq_comap] using preimage_mem_comap U_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b86d294c7d72ed8ed1fe13050939547dd635c170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
