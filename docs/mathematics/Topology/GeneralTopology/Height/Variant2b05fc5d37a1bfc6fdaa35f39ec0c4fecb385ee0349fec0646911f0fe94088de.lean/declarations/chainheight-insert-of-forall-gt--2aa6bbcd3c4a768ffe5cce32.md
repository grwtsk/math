# chainHeight_insert_of_forall_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf5be7f4-f05d-580e-2f57-0402cae22f1a",
  "kind": "theorem",
  "lexical_name": "chainHeight_insert_of_forall_gt",
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
  "slug": "chainheight-insert-of-forall-gt--2aa6bbcd3c4a768ffe5cce32",
  "source": {
    "blob": "b9e91d9826e1c6a06557f242ca2bca1374a91406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 289,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aa6bbcd3c4a768ffe5cce32d3776a50be7f9e0c4c9a09cc002f68ab80551ce1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf5be7f4-f05d-580e-2f57-0402cae22f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chainHeight_insert_of_forall_gt (a : α) (hx : ∀ b ∈ s, a < b) :
    (insert a s).chainHeight = s.chainHeight + 1 := by
  rw [← add_zero (insert a s).chainHeight]
  change (insert a s).chainHeight + (0 : ℕ) = s.chainHeight + (1 : ℕ)
  apply le_antisymm <;> rw [chainHeight_add_le_chainHeight_add]
  · rintro (_ | ⟨y, ys⟩) h
    · exact ⟨[], nil_mem_subchain _, zero_le _⟩
    · have h' := cons_mem_subchain_iff.mp h
      refine' ⟨ys, ⟨h'.2.1.1, fun i hi ↦ _⟩, by simp⟩
      apply (h'.2.1.2 i hi).resolve_left
      rintro rfl
      cases' chain'_iff_pairwise.mp h.1 with _ _ hy
      cases' h'.1 with h' h'
      exacts [(hy _ hi).ne h', not_le_of_gt (hy _ hi) (hx _ h').le]
  · intro l hl
    refine' ⟨a::l, ⟨_, _⟩, by simp⟩
    · rw [chain'_cons']
      exact ⟨fun y hy ↦ hx _ (hl.2 _ (mem_of_mem_head? hy)), hl.1⟩
    · -- Porting note: originally this was
        -- rintro x (rfl | hx)
        -- exacts [Or.inl (Set.mem_singleton x), Or.inr (hl.2 x hx)]
      -- but this fails because `List.Mem` is now an inductive prop.
      -- I couldn't work out how to drive `rcases` here but asked at
      -- https://leanprover.zulipchat.com/#narrow/stream/348111-std4/topic/rcases.3F/near/347976083
      rintro x (_ | _)
      exacts [Or.inl (Set.mem_singleton a), Or.inr (hl.2 x ‹_›)]
#align set.chain_height_insert_of_forall_gt Set.chainHeight_insert_of_forall_gt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e91d9826e1c6a06557f242ca2bca1374a91406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
