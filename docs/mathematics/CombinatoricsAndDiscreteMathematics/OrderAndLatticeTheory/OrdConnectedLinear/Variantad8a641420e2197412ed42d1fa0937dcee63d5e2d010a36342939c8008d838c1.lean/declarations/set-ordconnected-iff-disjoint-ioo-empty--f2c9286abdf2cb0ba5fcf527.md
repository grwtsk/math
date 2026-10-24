# Set.ordConnected_iff_disjoint_Ioo_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e607d5c8-9b4f-148d-35b6-9ae7ae90e66c",
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
  "slug": "set-ordconnected-iff-disjoint-ioo-empty--f2c9286abdf2cb0ba5fcf527",
  "source": {
    "blob": "411016587ecb060683da6a2f654d8fb81f1a5e75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2c9286abdf2cb0ba5fcf5278f67cf74567abeb3ba6136798bd586335966a85e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e607d5c8-9b4f-148d-35b6-9ae7ae90e66c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variantad8a641420e2197412ed42d1fa0937dcee63d5e2d010a36342939c8008d838c1.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411016587ecb060683da6a2f654d8fb81f1a5e75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
