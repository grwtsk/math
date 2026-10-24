# expand_nodes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fa88cb3-8597-6b8b-f73a-08853ba86fa6",
  "kind": "theorem",
  "lexical_name": "expand_nodes",
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
  "slug": "expand-nodes--b88e315071893e83fa60a9eb",
  "source": {
    "blob": "fe8c0cca68875e6bc04b84026459a5e6a672e6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b88e315071893e83fa60a9eb3303b935c6a7ee9bc9f3084209b55c7745b0cb76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fa88cb3-8597-6b8b-f73a-08853ba86fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expand_nodes (oldRows newRows : List (Key × Occurrence root)) (fuel : Nat) :
    ∀ (initial : List (EdgeTrace.TotalEdge V)) (slot : Nat),
      initial ∈ dictionary oldRows newRows →
      (dictionary oldRows newRows)[slot]? = some initial → initial.length ≤ fuel →
      expand (nodes oldRows newRows) fuel slot = some initial := by
  induction fuel with
  | zero =>
    intro initial slot hmem hlookup hlength
    have hnil : initial = [] := List.length_eq_zero_iff.mp (by omega)
    subst initial
    simp [expand, node_lookup oldRows newRows slot [] hlookup, cell]
  | succ fuel ih =>
    intro initial slot hmem hlookup hlength
    by_cases hnil : initial = []
    · subst initial
      simp [expand, node_lookup oldRows newRows slot [] hlookup, cell]
    · have hparent := dictionary_closed oldRows newRows hmem (List.dropLast_prefix initial)
      have hparentLookup := parent_lookup oldRows newRows initial hmem
      have hrecursive := ih initial.dropLast _ hparent hparentLookup
        (by have := parent_rank_lt initial hnil; omega)
      simp only [expand, node_lookup oldRows newRows slot initial hlookup,
        Option.bind_eq_bind, Option.bind, cell, dif_neg hnil]
      rw [node_lookup oldRows newRows _ _ hparentLookup]
      simp only [cell, parent_rank_lt initial hnil, ite_true, hrecursive,
        List.dropLast_append_getLast hnil]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8c0cca68875e6bc04b84026459a5e6a672e6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
