# Module.algebraMap_bijective_iff_rankAtStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17330a5d6a6f0ed1ce8b747a5fc95256d95f5e3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:751a1e58-b35d-03bf-364b-0096998a2166",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d3e1df6-3d8b-97d7-d38c-359c60627f06",
  "kind": "lemma",
  "lexical_name": "Module.algebraMap_bijective_iff_rankAtStalk",
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
  "slug": "module-algebramap-bijective-iff-rankatstalk--8ca7ae0fb6be5b2f4a1b6b90",
  "source": {
    "blob": "17330a5d6a6f0ed1ce8b747a5fc95256d95f5e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ca7ae0fb6be5b2f4a1b6b9089508738f4db2b880a18d50c83f5a3d281a09dc0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d3e1df6-3d8b-97d7-d38c-359c60627f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.algebraMap_bijective_iff_rankAtStalk :
    Module.rankAtStalk (R := R) S = 1 ↔ Function.Bijective (algebraMap R S) := by
  rw [Function.Bijective, ← rankAtStalk_pos_iff_algebraMap_injective,
    ← rankAtStalk_le_one_iff_surjective]
  refine ⟨fun h ↦ by simp [h], fun h ↦ ?_⟩
  ext p
  rw [Pi.one_apply]
  grind

alias ⟨Module.algebraMap_bijective_of_rankAtStalk, _⟩ := Module.algebraMap_bijective_iff_rankAtStalk

end

section

/-- The rank of a ring homomorphism `f : R →+* S` at a prime `x` of `R` is the rank of
`S` as an `R`-module at the stalk of `x`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant966fc8729d473eb71f1cd548279525231d0e46220af93801b15033c578cfc161.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17330a5d6a6f0ed1ce8b747a5fc95256d95f5e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
