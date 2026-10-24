# AddSubgroup.cyclic_of_isolated_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee4c24b0bd4eea6b9c7a452fb482ad47e82118d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe84502f-6fe4-37a3-0664-2cd4bb4f0e39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1a4f84e-8020-1d0f-4d8d-719e04fa643b",
  "kind": "theorem",
  "lexical_name": "AddSubgroup.cyclic_of_isolated_zero",
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
  "slug": "addsubgroup-cyclic-of-isolated-zero--5623c974c16cf5854f1c85cb",
  "source": {
    "blob": "ee4c24b0bd4eea6b9c7a452fb482ad47e82118d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5623c974c16cf5854f1c85cbb06cd322a36a080f347113b62600bcd02122870e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1a4f84e-8020-1d0f-4d8d-719e04fa643b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubgroup.cyclic_of_isolated_zero {H : AddSubgroup G} {a : G} (h₀ : 0 < a)
    (hd : Disjoint (H : Set G) (Ioo 0 a)) : ∃ b, H = closure {b} := by
  rcases eq_or_ne H ⊥ with rfl | hbot
  · exact ⟨0, closure_singleton_zero.symm⟩
  · exact (exists_isLeast_pos hbot h₀ hd).imp fun _ => cyclic_of_min

/-- Every subgroup of `ℤ` is cyclic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant35d839039ba027b89e6c2a0e0900a47d9f7f01fa053fd106634a530cc61cb77b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4c24b0bd4eea6b9c7a452fb482ad47e82118d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
