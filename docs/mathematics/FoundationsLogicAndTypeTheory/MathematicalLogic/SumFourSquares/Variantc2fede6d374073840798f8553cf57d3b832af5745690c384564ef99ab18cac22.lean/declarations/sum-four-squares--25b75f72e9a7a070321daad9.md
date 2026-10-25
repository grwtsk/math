# sum_four_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcfb3a66d7b09739275228c410ce999097002ea3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:242592d3-88c0-9497-be2d-dbc1a1b81ee6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:986f3b96-24b0-a117-db92-f827f701daab",
  "kind": "theorem",
  "lexical_name": "sum_four_squares",
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
  "slug": "sum-four-squares--25b75f72e9a7a070321daad9",
  "source": {
    "blob": "bcfb3a66d7b09739275228c410ce999097002ea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25b75f72e9a7a070321daad9a328e58d1f61af02ac6e0979b90687e270a871f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986f3b96-24b0-a117-db92-f827f701daab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_four_squares (n : ℕ) : ∃ a b c d : ℕ, a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = n := by
  -- The proof is by induction on prime factorization. The case of prime `n` was proved above,
  -- the inductive step follows from `Nat.euler_four_squares`.
  induction n using Nat.recOnMul with
  | h0 => exact ⟨0, 0, 0, 0, rfl⟩
  | h1 => exact ⟨1, 0, 0, 0, rfl⟩
  | hp p hp => exact hp.sum_four_squares
  | h m n hm hn =>
    rcases hm with ⟨a, b, c, d, rfl⟩
    rcases hn with ⟨w, x, y, z, rfl⟩
    exact ⟨_, _, _, _, euler_four_squares _ _ _ _ _ _ _ _⟩

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfb3a66d7b09739275228c410ce999097002ea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
