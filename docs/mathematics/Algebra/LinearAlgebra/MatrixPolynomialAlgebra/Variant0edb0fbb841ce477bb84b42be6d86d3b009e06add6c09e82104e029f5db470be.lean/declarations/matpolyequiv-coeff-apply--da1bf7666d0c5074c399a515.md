# matPolyEquiv_coeff_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c3e142fa7ce5cc7e25ee93e13d43742e9822d1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8820f55c-e348-a261-6d0f-273a948b503b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4de3bc67-297b-3e6b-83e7-f2b38056be5c",
  "kind": "theorem",
  "lexical_name": "matPolyEquiv_coeff_apply",
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
  "slug": "matpolyequiv-coeff-apply--da1bf7666d0c5074c399a515",
  "source": {
    "blob": "6c3e142fa7ce5cc7e25ee93e13d43742e9822d1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da1bf7666d0c5074c399a5153df77838707e916b0ccb21e77604484ac2ce255c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4de3bc67-297b-3e6b-83e7-f2b38056be5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matPolyEquiv_coeff_apply (m : Matrix n n R[X]) (k : ℕ) (i j : n) :
    coeff (matPolyEquiv m) k i j = coeff (m i j) k := by
  refine Matrix.induction_on' m ?_ ?_ ?_
  · simp
  · intro p q hp hq
    simp [hp, hq]
  · intro i' j' x
    rw [matPolyEquiv_coeff_apply_aux_2]
    dsimp [single]
    split_ifs <;> rename_i h
    · rcases h with ⟨rfl, rfl⟩
      simp [single]
    · simp [single, h]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3e142fa7ce5cc7e25ee93e13d43742e9822d1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
