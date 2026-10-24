# Matrix.toBilin'Aux_stdBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fef72ee7fe08a7925e10a3b024df46967f9f71eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c476ba23-a3d7-06ef-e439-435963c06237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5ce3f82-9e92-7230-3a77-c24fbb86ba8f",
  "kind": "theorem",
  "lexical_name": "Matrix.toBilin'Aux_stdBasis",
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
  "slug": "matrix-tobilin-aux-stdbasis--d85458d722adba495cc28bf5",
  "source": {
    "blob": "fef72ee7fe08a7925e10a3b024df46967f9f71eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d85458d722adba495cc28bf5775bf0cf529f558344fe4cdd6ba1caa260141acb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5ce3f82-9e92-7230-3a77-c24fbb86ba8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.toBilin'Aux_stdBasis [Fintype n] [DecidableEq n] (M : Matrix n n R₂) (i j : n) :
    M.toBilin'Aux (LinearMap.stdBasis R₂ (fun _ => R₂) i 1)
      (LinearMap.stdBasis R₂ (fun _ => R₂) j 1) = M i j := by
  rw [Matrix.toBilin'Aux]
  dsimp only -- Porting note: had to add `dsimp only` to get rid of the projections
  rw [sum_eq_single i, sum_eq_single j]
  · simp only [stdBasis_same, stdBasis_same, one_mul, mul_one]
  · rintro j' - hj'
    apply mul_eq_zero_of_right
    exact stdBasis_ne R₂ (fun _ => R₂) _ _ hj' 1
  · intros
    have := Finset.mem_univ j
    contradiction
  · rintro i' - hi'
    refine' Finset.sum_eq_zero fun j _ => _
    apply mul_eq_zero_of_left
    apply mul_eq_zero_of_left
    exact stdBasis_ne R₂ (fun _ => R₂) _ _ hi' 1
  · intros
    have := Finset.mem_univ i
    contradiction
#align matrix.to_bilin'_aux_std_basis Matrix.toBilin'Aux_stdBasis

/-- The linear map from bilinear forms to `Matrix n n R` given an `n`-indexed basis.

This is an auxiliary definition for the equivalence `Matrix.toBilin'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef72ee7fe08a7925e10a3b024df46967f9f71eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
