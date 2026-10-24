# vaughanFourthRootCutoff_le_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3588618c4e8d160963f798921b98c546ae7e8142",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55990352-2ee1-1d06-54c4-17256fea302e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d894c77c-25bd-c612-1723-3b51b2dc7178",
  "kind": "lemma",
  "lexical_name": "vaughanFourthRootCutoff_le_two_mul",
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
  "slug": "vaughanfourthrootcutoff-le-two-mul--d16f36aba9a24ea03b505f7d",
  "source": {
    "blob": "3588618c4e8d160963f798921b98c546ae7e8142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 529,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d16f36aba9a24ea03b505f7de9a179b550a43929f8bb8ecbd120238ec27c6c8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d894c77c-25bd-c612-1723-3b51b2dc7178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma vaughanFourthRootCutoff_le_two_mul
    (N : ℕ) (hN : 2 ≤ N) :
    vaughanFourthRootCutoff N ≤ 2 * N := by
  unfold vaughanFourthRootCutoff
  rw [max_le_iff]
  constructor
  · omega
  · exact (Nat.sqrt_le_self _).trans (Nat.sqrt_le_self _)

/-- The expanded elementary Type I total at the repository's fixed cutoff. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variantd244114d89f03bdb4a758aa74e632258b3a732c7baa7588b5bdde4580f9e41b8.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3588618c4e8d160963f798921b98c546ae7e8142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
