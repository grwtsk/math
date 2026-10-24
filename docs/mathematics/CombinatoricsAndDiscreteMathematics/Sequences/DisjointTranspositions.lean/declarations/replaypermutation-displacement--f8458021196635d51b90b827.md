# replayPermutation_displacement

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
      "line": 122,
      "path": "GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cb10a79-610d-a71a-7a5b-6053ebb6bae9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91813ef6-8c0b-1010-2b6a-1efedd287f7c",
  "kind": "theorem",
  "lexical_name": "replayPermutation_displacement",
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
  "slug": "replaypermutation-displacement--f8458021196635d51b90b827",
  "source": {
    "blob": "81deca9ed7b0dadc7f4f0e9ac610df537fee3071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8458021196635d51b90b8272dc8e55e447d26df44b956c2f69ff987014d9578",
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

Occurrence: `result:91813ef6-8c0b-1010-2b6a-1efedd287f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replayPermutation_displacement {n D : ℕ} (trace : SwapTrace n)
    (hd : SupportsDisjoint trace) (hb : TraceBounded D trace) (i : Fin n) :
    Nat.dist (replayPermutation trace i).val i.val ≤ 5 * D := by
  induction trace with
  | nil => simp
  | cons s trace ih =>
    have hparts : s.support.Nodup ∧ (traceSupport trace).Nodup ∧
        List.Disjoint s.support (traceSupport trace) := by
      simpa only [SupportsDisjoint, traceSupport, List.flatMap_cons, List.nodup_append'] using hd
    have hbound : TraceBounded D trace := fun t ht => hb t (List.mem_cons_of_mem _ ht)
    by_cases hs : i ∈ s.support
    · have hi : i ∉ traceSupport trace := fun hm => hparts.2.2 hs hm
      rw [replayPermutation_cons, Equiv.Perm.mul_apply, replayPermutation_fixes trace hi]
      exact s.displacement (hb s (by simp)) i
    · have hs' : replayPermutation trace i ∉ s.support := by
        by_cases hi : i ∈ traceSupport trace
        · exact fun hm => hparts.2.2 hm (replayPermutation_mem_support trace hi)
        · simpa [replayPermutation_fixes trace hi] using hs
      rw [replayPermutation_cons, Equiv.Perm.mul_apply, s.fixes hs']
      exact ih hparts.2.1 hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/DisjointTranspositions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81deca9ed7b0dadc7f4f0e9ac610df537fee3071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
