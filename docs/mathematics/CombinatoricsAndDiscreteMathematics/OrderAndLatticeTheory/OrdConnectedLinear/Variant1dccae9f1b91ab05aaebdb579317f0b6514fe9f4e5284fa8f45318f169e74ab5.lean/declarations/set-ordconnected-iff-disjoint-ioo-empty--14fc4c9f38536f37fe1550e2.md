# Set.ordConnected_iff_disjoint_Ioo_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55e92d67fde5080d9aef5d9028362acd26eba0b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b46f5469-df7d-b7b7-515b-ae1fc2b71c96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fefb4ee-1fb1-8935-fe76-569d4a99288d",
  "kind": "lemma",
  "lexical_name": "Set.ordConnected_iff_disjoint_Ioo_empty",
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
  "slug": "set-ordconnected-iff-disjoint-ioo-empty--14fc4c9f38536f37fe1550e2",
  "source": {
    "blob": "55e92d67fde5080d9aef5d9028362acd26eba0b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14fc4c9f38536f37fe1550e274fc6ececbfee0cf10a4a0ed087d952bba6733e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fefb4ee-1fb1-8935-fe76-569d4a99288d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.ordConnected_iff_disjoint_Ioo_empty [LinearOrder α] [LocallyFiniteOrder α] :
    I.OrdConnected ↔ ∀ᵉ (x ∈ I) (y ∈ I), Disjoint (Ioo x y) I → Ioo x y = ∅ := by
  simp_rw [← Set.subset_compl_iff_disjoint_right]
  refine ⟨fun h' x hx y hy hxy ↦ ?_, fun h' ↦ ordConnected_of_Ioo fun x hx y hy hxy z hz ↦ ?_⟩
  · suffices ∀ z, x < z → y ≤ z by ext z; simpa using this z
    intro z hz
    suffices z ∉ Ioo x y by aesop
    exact fun contra ↦ hxy contra <| h'.out hx hy <| mem_Icc_of_Ioo contra
  · by_contra hz'
    obtain ⟨x', hx', hx''⟩ :=
      ((finite_Icc x z).inter_of_right I).exists_le_maximal ⟨hx, le_refl _, hz.1.le⟩
    have hxz : x' < z := lt_of_le_of_ne hx''.1.2.2 (ne_of_mem_of_not_mem hx''.1.1 hz')
    obtain ⟨y', hy', hy''⟩ :=
      ((finite_Icc z y).inter_of_right I).exists_le_minimal ⟨hy, hz.2.le, le_refl _⟩
    have hzy : z < y' := lt_of_le_of_ne' hy''.1.2.1 (ne_of_mem_of_not_mem hy''.1.1 hz')
    have h₃ : Ioc x' z ⊆ Iᶜ := fun t ht ht' ↦ hx''.not_gt (⟨ht', le_trans hx' ht.1.le, ht.2⟩) ht.1
    have h₄ : Ico z y' ⊆ Iᶜ := fun t ht ht' ↦ hy''.not_lt (⟨ht', ht.1, le_trans ht.2.le hy'⟩) ht.2
    have h₅ : Ioo x' y' ⊆ Iᶜ := by
      simp only [← Ioc_union_Ico_eq_Ioo hxz hzy, union_subset_iff, and_true, h₃, h₄]
    exact eq_empty_iff_forall_notMem.1 (h' x' hx''.prop.1 y' hy''.prop.1 h₅) z ⟨hxz, hzy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e92d67fde5080d9aef5d9028362acd26eba0b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
