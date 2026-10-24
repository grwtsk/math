# IsZeckendorfRep.sum_fib_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e0217a7dc2f1830d81f33ecae712e68ac06f03d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e9e6d73-2c22-4a0a-81ee-eca5e38991d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78c11d31-0b77-d901-bf5f-ab6293ebc2d9",
  "kind": "lemma",
  "lexical_name": "IsZeckendorfRep.sum_fib_lt",
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
  "slug": "iszeckendorfrep-sum-fib-lt--ab89ac835a2b38e329e3a9d8",
  "source": {
    "blob": "8e0217a7dc2f1830d81f33ecae712e68ac06f03d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab89ac835a2b38e329e3a9d8ab2facf7cbc5b98c230ad0705fddd82a805fa9f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78c11d31-0b77-d901-bf5f-ab6293ebc2d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsZeckendorfRep.sum_fib_lt : ∀ {n l}, IsZeckendorfRep l → (∀ a ∈ (l ++ [0]).head?, a < n) →
    (l.map fib).sum < fib n
  | _, [], _, hn => fib_pos.2 <| hn _ rfl
  | n, a :: l, hl, hn => by
    simp only [IsZeckendorfRep, cons_append, chain'_iff_pairwise, pairwise_cons] at hl
    have : ∀ b, b ∈ head? (l ++ [0]) → b < a - 1 :=
      fun b hb ↦ lt_tsub_iff_right.2 <| hl.1 _ <| mem_of_mem_head? hb
    simp only [mem_append, mem_singleton, ← chain'_iff_pairwise, or_imp, forall_and, forall_eq,
      zero_add] at hl
    simp only [map, List.sum_cons]
    refine (add_lt_add_left (sum_fib_lt hl.2 this) _).trans_le ?_
    rw [add_comm, ← fib_add_one (hl.1.2.trans_lt' zero_lt_two).ne']
    exact fib_mono (hn _ rfl)

end List

namespace Nat
variable {m n : ℕ}

/-- The greatest index of a Fibonacci number less than or equal to `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0217a7dc2f1830d81f33ecae712e68ac06f03d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
