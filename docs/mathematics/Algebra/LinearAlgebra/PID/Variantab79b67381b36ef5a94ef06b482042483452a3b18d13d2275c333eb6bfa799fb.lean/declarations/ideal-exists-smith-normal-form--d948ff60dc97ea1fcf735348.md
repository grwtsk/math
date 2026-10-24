# Ideal.exists_smith_normal_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 699,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20bfd957-f424-66b4-5c18-c70284ddb237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9f6a2c2-11bc-702b-fe60-a2db5d3d660c",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_smith_normal_form",
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
  "slug": "ideal-exists-smith-normal-form--d948ff60dc97ea1fcf735348",
  "source": {
    "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 699,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d948ff60dc97ea1fcf7353482b66f20009a0b93c002d6c9863c6030d6b6413f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9f6a2c2-11bc-702b-fe60-a2db5d3d660c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_smith_normal_form (b : Basis ι R S) (I : Ideal S) (hI : I ≠ ⊥) :
    ∃ (b' : Basis ι R S) (a : ι → R) (ab' : Basis ι R I), ∀ i, (ab' i : S) = a i • b' i :=
  Submodule.exists_smith_normal_form_of_rank_eq b (finrank_eq_finrank b I hI)

/-- If `S` a finite-dimensional ring extension of a PID `R` which is free as an `R`-module,
then any nonzero `S`-ideal `I` is free as an `R`-submodule of `S`, and we can
find a basis for `S` and `I` such that the inclusion map is a square diagonal
matrix; this is the basis for `S`. See
* `Ideal.selfBasis` for the basis on `I`,
* `Ideal.smithCoeffs` for the entries of the diagonal matrix
* `Ideal.selfBasis_def` for the proof that the inclusion map forms a square diagonal matrix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `393373167928c6a90d2d42a212fc7b66a0e98b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
