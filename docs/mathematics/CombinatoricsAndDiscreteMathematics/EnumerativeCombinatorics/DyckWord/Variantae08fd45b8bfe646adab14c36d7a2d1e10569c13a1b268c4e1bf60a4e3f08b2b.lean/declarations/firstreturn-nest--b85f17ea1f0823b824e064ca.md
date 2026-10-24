# firstReturn_nest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:904c0cbe-234d-b599-0bcd-40e45cee51d3",
  "kind": "lemma",
  "lexical_name": "firstReturn_nest",
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
  "slug": "firstreturn-nest--b85f17ea1f0823b824e064ca",
  "source": {
    "blob": "ab1681b522b333865243d333276793972141df09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 314,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b85f17ea1f0823b824e064ca4564da4357bb56a8c4537a25dc3bc8840a0ddbe7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:904c0cbe-234d-b599-0bcd-40e45cee51d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma firstReturn_nest : p.nest.firstReturn = p.toList.length + 1 := by
  have u : p.nest.toList = U :: p.toList ++ [D] := rfl
  rw [firstReturn, findIdx_eq]
  · simp_rw [u, decide_eq_true_eq, getElem_range]
    constructor
    · rw [take_of_length_le (by simp), ← u, p.nest.count_U_eq_count_D]
    · intro j hj
      simp_rw [cons_append, take_succ_cons, count_cons, beq_self_eq_true, ite_true,
        beq_iff_eq, reduceCtorEq, ite_false, take_append_eq_append_take,
        show j - p.toList.length = 0 by omega, take_zero, append_nil]
      have := p.count_D_le_count_U j
      simp only [add_zero, decide_eq_false_iff_not, ne_eq]
      omega
  · simp_rw [length_range, u, length_append, length_cons]
    exact Nat.lt_add_one _

variable (p) in
/-- The left part of the Dyck word decomposition,
inside the `U, D` pair that `firstReturn` refers to. `insidePart 0 = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab1681b522b333865243d333276793972141df09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
