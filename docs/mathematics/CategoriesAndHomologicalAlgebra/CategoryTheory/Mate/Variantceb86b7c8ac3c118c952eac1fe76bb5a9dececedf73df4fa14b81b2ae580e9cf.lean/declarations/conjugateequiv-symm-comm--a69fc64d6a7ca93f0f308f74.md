# conjugateEquiv_symm_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2484df9419329193a4be3e527158a0826c4f286e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f873644-4348-a287-a1cc-1ee166cd10bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f2c0a65-9e0d-760b-2d3e-b854c01fe95d",
  "kind": "theorem",
  "lexical_name": "conjugateEquiv_symm_comm",
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
  "slug": "conjugateequiv-symm-comm--a69fc64d6a7ca93f0f308f74",
  "source": {
    "blob": "2484df9419329193a4be3e527158a0826c4f286e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 405,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a69fc64d6a7ca93f0f308f7431f5975ccd657799616931f190e7d9ed89f85b67",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f2c0a65-9e0d-760b-2d3e-b854c01fe95d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjugateEquiv_symm_comm {α : r₁ ⟶ r₂} {β : r₂ ⟶ r₁} (αβ : α ≫ β = 𝟙 _) :
    (conjugateEquiv adj₂ adj₁).symm β ≫ (conjugateEquiv adj₁ adj₂).symm α = 𝟙 _ := by
  rw [conjugateEquiv_symm_comp, αβ, conjugateEquiv_symm_id]

end ConjugateComposition

section ConjugateIsomorphism

variable {c d : B}
variable {l₁ l₂ : c ⟶ d} {r₁ r₂ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂)

/-- If `α` is an isomorphism between left adjoints, then its conjugate transformation is an
isomorphism. The converse is given in `conjugateEquiv_of_iso`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variantceb86b7c8ac3c118c952eac1fe76bb5a9dececedf73df4fa14b81b2ae580e9cf.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2484df9419329193a4be3e527158a0826c4f286e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
