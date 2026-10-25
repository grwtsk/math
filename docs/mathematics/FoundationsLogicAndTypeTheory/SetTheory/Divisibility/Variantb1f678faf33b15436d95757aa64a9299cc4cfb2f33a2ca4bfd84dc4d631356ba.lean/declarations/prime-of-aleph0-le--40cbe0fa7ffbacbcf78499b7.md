# prime_of_aleph0_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52eb4d48fd33849651de402b2396f26d1a0a329d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1f678faf33b15436d95757aa64a9299cc4cfb2f33a2ca4bfd84dc4d631356ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dcb6ce8-0d2c-7775-1811-3cc18ed89fe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcf1565f-16f5-2063-a184-f65d5914e961",
  "kind": "theorem",
  "lexical_name": "prime_of_aleph0_le",
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
  "slug": "prime-of-aleph0-le--40cbe0fa7ffbacbcf78499b7",
  "source": {
    "blob": "52eb4d48fd33849651de402b2396f26d1a0a329d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantb1f678faf33b15436d95757aa64a9299cc4cfb2f33a2ca4bfd84dc4d631356ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40cbe0fa7ffbacbcf78499b7f495b1cf6ce966e5983d07af7cf5d9b7fdcafce8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantb1f678faf33b15436d95757aa64a9299cc4cfb2f33a2ca4bfd84dc4d631356ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcf1565f-16f5-2063-a184-f65d5914e961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_of_aleph0_le (ha : ℵ₀ ≤ a) : Prime a := by
  refine ⟨(aleph0_pos.trans_le ha).ne', ?_, fun b c hbc => ?_⟩
  · rw [isUnit_iff]
    exact (one_lt_aleph0.trans_le ha).ne'
  rcases eq_or_ne (b * c) 0 with hz | hz
  · rcases mul_eq_zero.mp hz with (rfl | rfl) <;> simp
  wlog h : c ≤ b
  · cases le_total c b <;> [solve_by_elim; rw [or_comm]]
    apply_assumption
    assumption'
    all_goals rwa [mul_comm]
  left
  have habc := le_of_dvd hz hbc
  rwa [mul_eq_max' <| ha.trans <| habc, max_def', ite_eq_left h] at hbc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantb1f678faf33b15436d95757aa64a9299cc4cfb2f33a2ca4bfd84dc4d631356ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantb1f678faf33b15436d95757aa64a9299cc4cfb2f33a2ca4bfd84dc4d631356ba.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52eb4d48fd33849651de402b2396f26d1a0a329d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
