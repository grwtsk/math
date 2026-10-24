# extendLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c72308a141858138dc241b16a83067924bfb4347fe181fe498848ca70171dba",
  "kind": "def",
  "lexical_name": "extendLeft",
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
  "slug": "extendleft--476c831c3ed145b72a0dc63f",
  "source": {
    "blob": "b0850d20114feb43c262202e4c74e29984503f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 287,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:476c831c3ed145b72a0dc63f3f1ef1d499cdfe672f37fdb0e7e615a8e0b6a53c",
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

Occurrence: `declaration:9c72308a141858138dc241b16a83067924bfb4347fe181fe498848ca70171dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendLeft (c : OrderedFinpartition n) : OrderedFinpartition (n + 1) where
  length := c.length + 1
  partSize := Fin.cons 1 c.partSize
  partSize_pos := Fin.cases (by simp) (by simp [c.partSize_pos])
  emb := Fin.cases (fun _ ↦ 0) (fun m ↦ Fin.succ ∘ c.emb m)
  emb_strictMono := by
    refine Fin.cases ?_ (fun i ↦ ?_)
    · exact @Subsingleton.strictMono _ _ _ _ (by simp; infer_instance) _
    · exact strictMono_succ.comp (c.emb_strictMono i)
  parts_strictMono i j hij := by
    induction j using Fin.induction with
    | zero => simp at hij
    | succ j => induction i using Fin.induction with
      | zero => simp
      | succ i =>
        simp only [cons_succ, cases_succ, comp_apply, succ_lt_succ_iff]
        exact c.parts_strictMono (by simpa using hij)
  disjoint i hi j hj hij := by
    wlog h : j < i generalizing i j
    · exact .symm
        (this j (mem_univ j) i (mem_univ i) hij.symm (lt_of_le_of_ne (le_of_not_lt h) hij))
    induction i using Fin.induction with
    | zero => simp at h
    | succ i =>
      induction j using Fin.induction with
      | zero =>
        simp only [onFun, cases_succ, cases_zero]
        apply Set.disjoint_iff_forall_ne.2
        simp only [mem_range, comp_apply, exists_prop', cons_zero, ne_eq, and_imp,
          Nonempty.forall, forall_const, forall_eq', forall_exists_index, forall_apply_eq_imp_iff]
        exact fun _ ↦ succ_ne_zero _
      | succ j =>
        simp only [onFun, cases_succ]
        apply Set.disjoint_iff_forall_ne.2
        simp only [mem_range, comp_apply, ne_eq, forall_exists_index, forall_apply_eq_imp_iff,
          succ_inj]
        intro a b
        apply c.emb_ne_emb_of_ne (by simpa using hij)
  cover := by
    refine Fin.cases ?_ (fun i ↦ ?_)
    · simp only [mem_iUnion, mem_range]
      exact ⟨0, ⟨0, by simp⟩, by simp⟩
    · simp only [mem_iUnion, mem_range]
      exact ⟨Fin.succ (c.index i), Fin.cast (by simp) (c.invEmbedding i), by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0850d20114feb43c262202e4c74e29984503f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
