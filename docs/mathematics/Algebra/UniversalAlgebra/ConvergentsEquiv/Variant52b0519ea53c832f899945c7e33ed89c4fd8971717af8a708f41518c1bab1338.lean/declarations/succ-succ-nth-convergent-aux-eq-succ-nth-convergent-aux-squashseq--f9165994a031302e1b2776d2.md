# succ_succ_nth_convergent'_aux_eq_succ_nth_convergent'_aux_squashSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab64504f6d613732c16b49fd7d524195dda74f26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e86fa436-2bc8-26f1-956e-d03acde74dce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab25067d-2cc1-8522-b319-0bf6dcfd0699",
  "kind": "theorem",
  "lexical_name": "succ_succ_nth_convergent'_aux_eq_succ_nth_convergent'_aux_squashSeq",
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
  "slug": "succ-succ-nth-convergent-aux-eq-succ-nth-convergent-aux-squashseq--f9165994a031302e1b2776d2",
  "source": {
    "blob": "ab64504f6d613732c16b49fd7d524195dda74f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 157,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9165994a031302e1b2776d21f9fced36d2499b9672dc13351652f57737feee7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab25067d-2cc1-8522-b319-0bf6dcfd0699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_succ_nth_convergent'_aux_eq_succ_nth_convergent'_aux_squashSeq :
    convergents'Aux s (n + 2) = convergents'Aux (squashSeq s n) (n + 1) := by
  cases' s_succ_nth_eq : s.get? <| n + 1 with gp_succ_n
  case none =>
    rw [squashSeq_eq_self_of_terminated s_succ_nth_eq,
      convergents'Aux_stable_step_of_terminated s_succ_nth_eq]
  case some =>
    induction' n with m IH generalizing s gp_succ_n
    case zero =>
      obtain ⟨gp_head, s_head_eq⟩ : ∃ gp_head, s.head = some gp_head
      exact s.ge_stable zero_le_one s_succ_nth_eq
      have : (squashSeq s 0).head = some ⟨gp_head.a, gp_head.b + gp_succ_n.a / gp_succ_n.b⟩ :=
        squashSeq_nth_of_not_terminated s_head_eq s_succ_nth_eq
      simp_all [convergents'Aux, Stream'.Seq.head, Stream'.Seq.get?_tail]
    case succ =>
      obtain ⟨gp_head, s_head_eq⟩ : ∃ gp_head, s.head = some gp_head
      exact s.ge_stable (m + 2).zero_le s_succ_nth_eq
      suffices
        gp_head.a / (gp_head.b + convergents'Aux s.tail (m + 2)) =
          convergents'Aux (squashSeq s (m + 1)) (m + 2)
        by simpa only [convergents'Aux, s_head_eq]
      have : convergents'Aux s.tail (m + 2) = convergents'Aux (squashSeq s.tail m) (m + 1) := by
        refine' IH gp_succ_n _
        simpa [Stream'.Seq.get?_tail] using s_succ_nth_eq
      have : (squashSeq s (m + 1)).head = some gp_head :=
        (squashSeq_nth_of_lt m.succ_pos).trans s_head_eq
      simp_all [convergents'Aux, squashSeq_succ_n_tail_eq_squashSeq_tail_n]
#align generalized_continued_fraction.succ_succ_nth_convergent'_aux_eq_succ_nth_convergent'_aux_squash_seq GeneralizedContinuedFraction.succ_succ_nth_convergent'_aux_eq_succ_nth_convergent'_aux_squashSeq

/-! Let us now lift the squashing operation to gcfs. -/


/-- Given a gcf `g = [h; (a₀, bₒ), (a₁, b₁), ...]`, we have
- `squashGCF g 0 = [h + a₀ / b₀); (a₀, bₒ), ...]`,
- `squashGCF g (n + 1) = ⟨g.h, squashSeq g.s n⟩`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab64504f6d613732c16b49fd7d524195dda74f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
