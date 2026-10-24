# forall_mem_pwFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b6cc2bb-c18a-90f4-4c2f-39b115f88806",
  "kind": "theorem",
  "lexical_name": "forall_mem_pwFilter",
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
  "slug": "forall-mem-pwfilter--b59a771f6d4757550ee2e173",
  "source": {
    "blob": "f34d668781c62f2d4f6f286cc5f277b210a50a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b59a771f6d4757550ee2e173ab5092b22c5ff698c0450e6f9a188ae0877406e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b6cc2bb-c18a-90f4-4c2f-39b115f88806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_mem_pwFilter [DecidableRel (α := α) R]
    (neg_trans : ∀ {x y z}, R x z → R x y ∨ R y z) (a : α) (l : List α) :
    (∀ b ∈ pwFilter R l, R a b) ↔ ∀ b ∈ l, R a b := by
  refine ⟨?_, fun h b hb => h _ <| pwFilter_subset (R := R) _ hb⟩
  induction l with
  | nil => exact fun _ _ h => (not_mem_nil _ h).elim
  | cons x l IH =>
    simp only [forall_mem_cons]
    if h : ∀ y ∈ pwFilter R l, R x y then
      simpa [pwFilter_cons_of_pos h] using fun r H => ⟨r, IH H⟩
    else
      refine pwFilter_cons_of_neg h ▸ fun H => ⟨?_, IH H⟩
      match e : find? (fun y => ¬R x y) (pwFilter R l) with
      | none => exact h.elim fun y hy => by simpa using find?_eq_none.1 e y hy
      | some k =>
        have := find?_some e
        apply (neg_trans (H k (mem_of_find?_eq_some e))).resolve_right
        rw [decide_eq_true_iff] at this; exact this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34d668781c62f2d4f6f286cc5f277b210a50a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
