# nodup_iff_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1511425c-66b4-8a49-9c3b-81b3bba3372c",
  "kind": "theorem",
  "lexical_name": "nodup_iff_count",
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
  "slug": "nodup-iff-count--56d9f4bcc4ff786012d5fa57",
  "source": {
    "blob": "3610292b5ee3b4496e236e6209cda357f8f58ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 370,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d9f4bcc4ff786012d5fa5746aba845c778cb42326994ebb42c2538ca85fd09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1511425c-66b4-8a49-9c3b-81b3bba3372c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_iff_count [BEq α] [LawfulBEq α] {l : List α} : l.Nodup ↔ ∀ a, count a l ≤ 1 := by
  induction l with
  | nil => simp
  | cons x l ih =>
    constructor
    · intro h a
      simp at h
      rw [count_cons]
      split <;> rename_i h'
      · simp at h'
        rw [count_eq_zero.mpr ?_]
        · exact Nat.le_refl _
        · exact h' ▸ h.1
      · simp at h'
        refine ih.mp h.2 a
    · intro h
      simp only [count_cons] at h
      simp only [nodup_cons]
      constructor
      · intro w
        specialize h x
        simp at h
        have := count_pos_iff.mpr w
        replace h := le_of_lt_succ h
        apply Nat.lt_irrefl _ (Nat.lt_of_lt_of_le this h)
      · rw [ih]
        intro a
        specialize h a
        exact le_of_add_right_le h

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3610292b5ee3b4496e236e6209cda357f8f58ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
