# expand_encoded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31df4881-64b4-0437-742d-e12cbcfa730c",
  "kind": "theorem",
  "lexical_name": "expand_encoded",
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
  "slug": "expand-encoded--053c5d5e65d4541121bcc2f9",
  "source": {
    "blob": "8773b305729b117baed9151bfcf5425f50041a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 174,
    "path": "GRWTSK/Combinatorics/DirectedGraph/ParentTraceDictionary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:053c5d5e65d4541121bcc2f9dc1e0e1afe720a8dabb1d5b87f8ceb857f921213",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31df4881-64b4-0437-742d-e12cbcfa730c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expand_encoded (rows : List (Key × Occurrence root)) (fuel : Nat) :
    ∀ (initial : List (EdgeTrace.TotalEdge V)) (slot : Nat),
      initial ∈ inventory rows → (inventory rows)[slot]? = some initial →
      initial.length ≤ fuel → expand (encodedNodes rows) fuel slot = some initial := by
  induction fuel with
  | zero =>
    intro initial slot hmem hlookup hlength
    have hnil : initial = [] := List.length_eq_zero_iff.mp (by omega)
    subst initial
    simp [expand, encoded_lookup rows slot [] hlookup, nodeFor]
  | succ fuel ih =>
    intro initial slot hmem hlookup hlength
    by_cases hnil : initial = []
    · subst initial
      simp [expand, encoded_lookup rows slot [] hlookup, nodeFor]
    · have hparent := parent_mem rows initial hmem
      have hparentLookup := position_lookup rows initial.dropLast hparent
      have hrecursive := ih initial.dropLast (position rows initial.dropLast) hparent
        hparentLookup (by have := parent_rank_lt initial hnil; omega)
      simp only [expand, encoded_lookup rows slot initial hlookup, Option.bind_eq_bind, Option.bind,
        nodeFor, dif_neg hnil]
      rw [encoded_lookup rows _ _ hparentLookup]
      simp only [nodeFor, parent_rank_lt initial hnil, ite_true,
        hrecursive, List.dropLast_append_getLast hnil]

/-- Every valid encoded slot is reconstructed by the actual rank-fuel decoder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/ParentTraceDictionary.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8773b305729b117baed9151bfcf5425f50041a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
