# ofSetSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a36306a7314c6cc5524005473a2779d4f5abb96699920bf2ba4d8bd693c8b337",
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
  "slug": "ofsetsetoid--25204cffc2f6b9389b046e34",
  "source": {
    "blob": "88330105806f78712c4ad7f3ce5f1dc80f498599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 840,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25204cffc2f6b9389b046e34009ea310327831ae5839a4bbee691048e1a8d381",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a36306a7314c6cc5524005473a2779d4f5abb96699920bf2ba4d8bd693c8b337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSetSetoid (s : Setoid α) (x : Finset α) [DecidableRel s.r] : Finpartition x where
  parts := x.image fun a ↦ {b ∈ x | s.r a b}
  supIndep := by
    suffices ∀ (a b c d : α), s a d → s b d → (s a c ↔ s b c) by
      simp only [supIndep_iff_pairwiseDisjoint, Set.PairwiseDisjoint, Set.Pairwise, coe_image,
        Set.mem_image, mem_coe, ne_eq, onFun, id_eq, disjoint_iff_ne, forall_mem_not_eq,
        forall_exists_index, and_imp, forall_apply_eq_imp_iff₂, mem_filter, not_and, filter_inj',
        not_forall, @not_imp_comm (_ ↔ _), Decidable.not_not]
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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88330105806f78712c4ad7f3ce5f1dc80f498599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
