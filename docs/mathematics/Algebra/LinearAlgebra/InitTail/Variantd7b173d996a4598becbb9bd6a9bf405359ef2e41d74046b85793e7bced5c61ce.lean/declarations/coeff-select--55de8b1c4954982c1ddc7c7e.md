# coeff_select

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a57293c160bc39fa76097e5767fb8c5edd8b5e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60094dc6-fe1f-541b-6a73-9d89adb37535",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6e8bd8a-26e3-92ae-8b2b-638d3067ffa1",
  "kind": "theorem",
  "lexical_name": "coeff_select",
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
  "slug": "coeff-select--55de8b1c4954982c1ddc7c7e",
  "source": {
    "blob": "3a57293c160bc39fa76097e5767fb8c5edd8b5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55de8b1c4954982c1ddc7c7e794b63f4ec1d573ce8c4f7756fb1e8e71cac6abf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6e8bd8a-26e3-92ae-8b2b-638d3067ffa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_select (x : 𝕎 R) (n : ℕ) :
    (select P x).coeff n = aeval x.coeff (selectPoly P n) := by
  dsimp [select, selectPoly]
  split_ifs with hi
  · rw [aeval_X, mk]; simp only [hi]; rfl
  · rw [AlgHom.map_zero, mk]; simp only [hi]; rfl
#align witt_vector.coeff_select WittVector.coeff_select

-- Porting note: replaced `@[is_poly]` with `instance`. Made the argument `P` implicit in doing so.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a57293c160bc39fa76097e5767fb8c5edd8b5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
