# exists_factorization_of_comp_eq_zero_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19b54be750c72568162d817d87416d94f9298328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5d52c89-e34e-1660-2e5d-e5f915f7a56e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9997df8-c726-5fdf-cafa-db8872b9f612",
  "kind": "theorem",
  "lexical_name": "exists_factorization_of_comp_eq_zero_of_free",
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
  "slug": "exists-factorization-of-comp-eq-zero-of-free--173555b55cff278d3a9da783",
  "source": {
    "blob": "19b54be750c72568162d817d87416d94f9298328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 258,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:173555b55cff278d3a9da783943f6d6b83d8b87fb5fdb034a0020ee12460880f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9997df8-c726-5fdf-cafa-db8872b9f612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_factorization_of_comp_eq_zero_of_free [Flat R M] {K N : Type*} [AddCommGroup K]
    [Module R K] [Module.Finite R K] [AddCommGroup N] [Module R N] [Free R N] [Module.Finite R N]
    {f : K →ₗ[R] N} {x : N →ₗ[R] M} (h : x ∘ₗ f = 0) :
    ∃ (k : ℕ) (a : N →ₗ[R] (Fin k →₀ R)) (y : (Fin k →₀ R) →ₗ[R] M),
      x = y ∘ₗ a ∧ a ∘ₗ f = 0 :=
  have e := ((Module.Free.chooseBasis R N).reindex (Fintype.equivFin _)).repr.symm
  have ⟨k, a, y, hya, haf⟩ := exists_factorization_of_comp_eq_zero_of_free_aux
    (f := e.symm ∘ₗ f) (x := x ∘ₗ e.toLinearMap) (by ext; simpa [comp_assoc] using congr($h _))
  ⟨k, a ∘ₗ e.symm, y, by rwa [← comp_assoc, LinearEquiv.eq_comp_toLinearMap_symm], by
    rwa [comp_assoc]⟩

/-- Every homomorphism from a finitely presented module to a flat module factors through a finite
free module. -/
@[stacks 058E "only if"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19b54be750c72568162d817d87416d94f9298328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
