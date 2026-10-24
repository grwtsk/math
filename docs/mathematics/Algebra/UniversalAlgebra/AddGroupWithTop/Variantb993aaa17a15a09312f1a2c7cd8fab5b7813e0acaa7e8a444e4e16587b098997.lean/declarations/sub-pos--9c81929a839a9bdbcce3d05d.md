# sub_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b52f6922-984a-b1d9-06ed-99999de3fcdf",
  "kind": "lemma",
  "lexical_name": "sub_pos",
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
  "slug": "sub-pos--9c81929a839a9bdbcce3d05d",
  "source": {
    "blob": "0b77f469f9f0e187bca3a1a0e25967953e7bf108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 222,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c81929a839a9bdbcce3d05ddd4f60237f51b2f231c6ed90774c7154796d7207",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b52f6922-984a-b1d9-06ed-99999de3fcdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sub_pos (a b : α) : 0 < a - b ↔ b < a ∨ b = ⊤ where
  mp h := by
    refine or_iff_not_imp_right.mpr fun h2 ↦ ?_
    replace h := strictMono_add_left_of_ne_top _ h2 h
    simp only [zero_add] at h
    rw [sub_eq_add_neg, add_assoc, add_comm (-b),
      add_neg_cancel_of_ne_top h2, add_zero] at h
    exact h
  mpr h := by
    rcases h with h | h
    · convert strictMono_add_left_of_ne_top (-b) (by simp [h.ne_top]) h using 1
      · simp [add_neg_cancel_of_ne_top h.ne_top]
      · simp [sub_eq_add_neg]
    · rw [h]
      simp only [sub_eq_add_neg, LinearOrderedAddCommGroupWithTop.neg_top, add_top]
      apply lt_of_le_of_ne le_top
      exact Ne.symm top_ne_zero

end LinearOrderedAddCommGroupWithTop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variantb993aaa17a15a09312f1a2c7cd8fab5b7813e0acaa7e8a444e4e16587b098997.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b77f469f9f0e187bca3a1a0e25967953e7bf108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
