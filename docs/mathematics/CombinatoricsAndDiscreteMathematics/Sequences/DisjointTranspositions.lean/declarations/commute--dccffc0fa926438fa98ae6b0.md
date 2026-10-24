# commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81deca9ed7b0dadc7f4f0e9ac610df537fee3071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d70c2691-9224-e311-0aa5-59eb5e42825b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4807a1e9-20d9-25ee-24da-260bf30f3432",
  "kind": "theorem",
  "lexical_name": "commute",
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
  "slug": "commute--dccffc0fa926438fa98ae6b0",
  "source": {
    "blob": "81deca9ed7b0dadc7f4f0e9ac610df537fee3071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 53,
    "path": "GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dccffc0fa926438fa98ae6b0cddce60ffc99febd2461d8c0908152b034b3d360",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4807a1e9-20d9-25ee-24da-260bf30f3432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute {n : ℕ} (s t : PositionSwap n)
    (h : List.Disjoint s.support t.support) : Commute s.permutation t.permutation := by
  have hll : s.left ≠ t.left := fun e => h (a := s.left) (by simp [support]) (by simp [support, e])
  have hlr : s.left ≠ t.right := fun e => h (a := s.left) (by simp [support]) (by simp [support, e])
  have hrl : s.right ≠ t.left := fun e => h (a := s.right) (by simp [support]) (by simp [support, e])
  have hrr : s.right ≠ t.right := fun e => h (a := s.right) (by simp [support]) (by simp [support, e])
  change s.permutation * t.permutation = t.permutation * s.permutation
  ext i
  by_cases hs : i = s.left ∨ i = s.right
  · rcases hs with rfl | rfl
    · simp [permutation, Equiv.Perm.mul_apply, Equiv.swap_apply_of_ne_of_ne,
        hll, hlr, hrl, hrr]
    · simp [permutation, Equiv.Perm.mul_apply, Equiv.swap_apply_of_ne_of_ne,
        hll, hlr, hrl, hrr]
  · by_cases ht : i = t.left ∨ i = t.right
    · rcases ht with rfl | rfl <;>
        simp [permutation, Equiv.Perm.mul_apply, Equiv.swap_apply_of_ne_of_ne,
          Ne.symm hll, Ne.symm hlr, Ne.symm hrl, Ne.symm hrr]
    · simp only [not_or] at hs ht
      simp [permutation, Equiv.Perm.mul_apply,
        Equiv.swap_apply_of_ne_of_ne hs.1 hs.2,
        Equiv.swap_apply_of_ne_of_ne ht.1 ht.2]

end PositionSwap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81deca9ed7b0dadc7f4f0e9ac610df537fee3071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
