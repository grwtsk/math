# even_succAbove_add_predAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d99b45e4a898c2ea5ab9b98933e3da64026b65e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1c2198f-61c3-93de-a3ca-98aa284e05f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d083b913-7f48-aa48-c3ed-4e6e540d6935",
  "kind": "theorem",
  "lexical_name": "even_succAbove_add_predAbove",
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
  "slug": "even-succabove-add-predabove--492d7f31313ef1edca0e72b4",
  "source": {
    "blob": "d99b45e4a898c2ea5ab9b98933e3da64026b65e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 26,
    "path": "GRWTSK/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:492d7f31313ef1edca0e72b4dd659251712573ee3651e64062f1769830f6a972",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d083b913-7f48-aa48-c3ed-4e6e540d6935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_succAbove_add_predAbove (i : Fin (n + 1)) (j : Fin n) :
    Even (i.succAbove j + j.predAbove i : ℕ) ↔ Odd (i + j : ℕ) := by
  rcases lt_or_le j.castSucc i with hji | hij
  · have : 1 ≤ (i : ℕ) := (Nat.zero_le j).trans_lt hji
    simp [succAbove_of_castSucc_lt _ _ hji, predAbove_of_castSucc_lt _ _ hji, this, iff_comm,
      parity_simps]
  · simp [succAbove_of_le_castSucc _ _ hij, predAbove_of_le_castSucc _ _ hij,
      ← Nat.not_even_iff_odd, not_iff, not_iff_comm, parity_simps]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d99b45e4a898c2ea5ab9b98933e3da64026b65e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
