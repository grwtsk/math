# dirichletPolynomialPairProductComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8af495c0dd1cc3d5f1a0d448b93f5fc318b025d671a0fc61f21e67689edbd718",
  "kind": "def",
  "lexical_name": "dirichletPolynomialPairProductComplex",
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
  "slug": "dirichletpolynomialpairproductcomplex--56bcf3991669f63fc28e68d2",
  "source": {
    "blob": "a9838709d88a2425a6882c3b03fb36ea6c86421a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56bcf3991669f63fc28e68d21309d12c2b36aab51a829968693ad0b998c3ff5d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8af495c0dd1cc3d5f1a0d448b93f5fc318b025d671a0fc61f21e67689edbd718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dirichletPolynomialPairProductComplex
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) : Complex :=
  ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
    a de.1 * b de.2 *
      (((posWeightReal σ (de.1 * de.2) : Real) : Complex))

/--
Checked weighted finite Cauchy product in pair-indexed form.

This is a finite identity for Dirichlet polynomials. It is not the infinite
Dirichlet-series Cauchy product and does not assert analytic Euler products.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9838709d88a2425a6882c3b03fb36ea6c86421a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
