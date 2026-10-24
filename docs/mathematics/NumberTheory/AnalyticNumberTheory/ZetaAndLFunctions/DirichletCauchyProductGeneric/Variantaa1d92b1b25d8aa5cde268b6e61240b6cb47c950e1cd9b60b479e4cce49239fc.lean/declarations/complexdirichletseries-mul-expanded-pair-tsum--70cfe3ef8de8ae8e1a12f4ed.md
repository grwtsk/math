# complexDirichletSeries_mul_expanded_pair_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33dfb6c9-cc41-6f73-013e-6499f222213c",
  "kind": "theorem",
  "lexical_name": "complexDirichletSeries_mul_expanded_pair_tsum",
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
  "slug": "complexdirichletseries-mul-expanded-pair-tsum--70cfe3ef8de8ae8e1a12f4ed",
  "source": {
    "blob": "0431e04b711b98794c4db30bd180d84df7400b68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70cfe3ef8de8ae8e1a12f4edf8f8f3f44d8e86060157e6b1e8ddec66f18ccfee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33dfb6c9-cc41-6f73-013e-6499f222213c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexDirichletSeries_mul_expanded_pair_tsum
    (a b : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s)
    (hb : ComplexDirichletAbsSummable b s) :
    complexDirichletSeries a s * complexDirichletSeries b s =
      ∑' mn : Nat × Nat,
        complexDirichletTerm a s mn.1 *
          complexDirichletTerm b s mn.2 := by
  simpa [complexDirichletSeries] using
    (tsum_mul_tsum_of_summable_norm
      (R := Complex)
      (ι := Nat)
      (ι' := Nat)
      (f := fun n => complexDirichletTerm a s n)
      (g := fun n => complexDirichletTerm b s n)
      ha hb)

/--
Absolutely convergent Dirichlet-series Cauchy product.

If the Dirichlet series for `a` and `b` are absolutely summable at `s`, then
the product of their sums is the Dirichlet series of their Dirichlet convolution.

This is a theorem only in the region of absolute convergence. It is not analytic
continuation and does not imply PNT, RH, or generalized RH.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0431e04b711b98794c4db30bd180d84df7400b68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
