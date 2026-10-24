# eraseLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18442fade2170fce2a7c453a354296292634c8b6bea290ba2be9d96b2842ac45",
  "kind": "def",
  "lexical_name": "eraseLeft",
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
  "slug": "eraseleft--a65e753a9bbef41252b0b8f7",
  "source": {
    "blob": "b0850d20114feb43c262202e4c74e29984503f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 466,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a65e753a9bbef41252b0b8f750f290a67ec0fad9be968031385a6f5781a46b4c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18442fade2170fce2a7c453a354296292634c8b6bea290ba2be9d96b2842ac45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eraseLeft (c : OrderedFinpartition (n + 1)) (hc : range (c.emb 0) = {0}) :
    OrderedFinpartition n where
  length := c.length - 1
  partSize := by
    have : c.length - 1 + 1 = c.length := Nat.sub_add_cancel (c.length_pos (Nat.zero_lt_succ n))
    exact fun i ↦ c.partSize (Fin.cast this (succ i))
  partSize_pos i := c.partSize_pos _
  emb i j := by
    have : c.length - 1 + 1 = c.length := Nat.sub_add_cancel (c.length_pos (Nat.zero_lt_succ n))
    refine Fin.pred (c.emb (Fin.cast this (succ i)) j) ?_
    have := c.disjoint (mem_univ (Fin.cast this (succ i))) (mem_univ 0) (ne_of_beq_false rfl)
    exact Set.disjoint_iff_forall_ne.1 this (by simp) (by simp only [mem_singleton_iff, hc])
  emb_strictMono i a b hab := by
    simp only [pred_lt_pred_iff, Nat.succ_eq_add_one]
    apply c.emb_strictMono _ hab
  parts_strictMono := by
    intro i j hij
    simp only [pred_lt_pred_iff, Nat.succ_eq_add_one]
    apply c.parts_strictMono (cast_strictMono _ (strictMono_succ hij))
  disjoint i _ j _ hij := by
    apply Set.disjoint_iff_forall_ne.2
    simp only [mem_range, ne_eq, forall_exists_index, forall_apply_eq_imp_iff, pred_inj]
    intro a b
    exact c.emb_ne_emb_of_ne ((cast_injective _).ne (by simpa using hij))
  cover x := by
    simp only [mem_iUnion, mem_range]
    obtain ⟨i, j, hij⟩ : ∃ (i : Fin c.length), ∃ (j : Fin (c.partSize i)), c.emb i j = succ x :=
      ⟨c.index (succ x), c.invEmbedding (succ x), by simp⟩
    have A : c.length = c.length - 1 + 1 :=
      (Nat.sub_add_cancel (c.length_pos (Nat.zero_lt_succ n))).symm
    have i_ne : i ≠ 0 := by
      intro h
      have : succ x ∈ range (c.emb i) := by rw [← hij]; apply mem_range_self
      rw [h, hc, mem_singleton_iff] at this
      exact Fin.succ_ne_zero _ this
    refine ⟨pred (Fin.cast A i) (by simpa using i_ne), Fin.cast (by simp) j, ?_⟩
    have : x = pred (succ x) (succ_ne_zero x) := rfl
    rw [this]
    congr
    rw [← hij]
    congr 1
    · simp
    · simp [Fin.heq_ext_iff]

/-- Given an ordered finpartition of `n+1`, with a leftmost atom different from `{0}`, remove `{0}`
from the atom that contains it, to form an ordered finpartition of `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0850d20114feb43c262202e4c74e29984503f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
