# ofSetSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85bb28f98b9d903155686959e78da215f54fe44cd0348c9aced7ffa2230c6c18",
  "kind": "def",
  "lexical_name": "ofSetSetoid",
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
  "slug": "ofsetsetoid--0c0f5c51dcc0eb80af6ba815",
  "source": {
    "blob": "75a9ead71e18f58cfbf6ffe811e2707e873b3ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 643,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c0f5c51dcc0eb80af6ba815a09bb0df7908d5e27c1c717a5f9ea2a5d21b10a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85bb28f98b9d903155686959e78da215f54fe44cd0348c9aced7ffa2230c6c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSetSetoid (s : Setoid α) (x : Finset α) [DecidableRel s.r] : Finpartition x where
  parts := x.image fun a ↦ {b ∈ x | s.r a b}
  supIndep := by
    suffices ∀ (a b c d : α), s a d → s b d → (s a c ↔ s b c) by
      simp only [supIndep_iff_pairwiseDisjoint, Set.PairwiseDisjoint, Set.Pairwise, coe_image,
        Set.mem_image, mem_coe, ne_eq, onFun, id_eq, disjoint_iff_ne, forall_mem_not_eq,
        forall_exists_index, and_imp, forall_apply_eq_imp_iff₂, mem_filter, not_and, filter_inj',
        not_forall, Classical.not_imp, @not_imp_comm (_ ↔ _), Decidable.not_not]
      intro _ _ _ _ _ _ _ _ ha _ hb
      exact ⟨(s.trans' hb <| s.trans' (s.symm' ha) ·), (s.trans' ha <| s.trans' (s.symm' hb) ·)⟩
    simp +contextual [← Quotient.eq]
  sup_parts := by
    ext a
    simp_rw [sup_image, id_comp, mem_sup, mem_filter]
    refine ⟨(·.choose_spec.2.1), fun _ ↦ by use a⟩
  bot_notMem := by
    suffices ∀ x₁ ∈ x, ∃ x₂ ∈ x, s x₁ x₂ by simpa [filter_eq_empty_iff]
    intro x _
    use x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9ead71e18f58cfbf6ffe811e2707e873b3ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
