# dirichletPolynomialComplex_mul_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9838709d88a2425a6882c3b03fb36ea6c86421a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bf12fa5-03e1-7218-8efa-433165b97761",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b6d84c1-0ac4-5603-1ea7-cce324e16cd5",
  "kind": "theorem",
  "lexical_name": "dirichletPolynomialComplex_mul_pair",
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
  "slug": "dirichletpolynomialcomplex-mul-pair--80e01db11cd1b0f8bcecf6c9",
  "source": {
    "blob": "a9838709d88a2425a6882c3b03fb36ea6c86421a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80e01db11cd1b0f8bcecf6c90fa05faf5c2f87ea353ed73b2f1e5a0647092747",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b6d84c1-0ac4-5603-1ea7-cce324e16cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletPolynomialComplex_mul_pair
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex a σ N *
      dirichletPolynomialComplex b σ N =
    dirichletPolynomialPairProductComplex a b σ N := by
  rw [dirichletPolynomialComplex_mul_pair_expanded]
  unfold dirichletPolynomialPairProductComplex
  exact
    (Finset.sum_product
      (Finset.Icc 1 N)
      (Finset.Icc 1 N)
      (fun de : Nat × Nat =>
        a de.1 * b de.2 *
          (((posWeightReal σ (de.1 * de.2) : Real) : Complex)))).symm

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9838709d88a2425a6882c3b03fb36ea6c86421a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
