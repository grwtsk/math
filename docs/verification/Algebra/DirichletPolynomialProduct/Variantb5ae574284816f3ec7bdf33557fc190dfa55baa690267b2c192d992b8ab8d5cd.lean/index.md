# Verification target: GRWTSK.Algebra.DirichletPolynomialProduct.Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecf1ece28faea26acd7afba60a0f028d3d45d43a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecf1ece28faea26acd7afba60a0f028d3d45d43a`.

Source path: `GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.DirichletConvolution` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPolynomialComplex](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/declarations/dirichletpolynomialcomplex--8c6837786ecadd8e576e873a.md) | 20 | `declaration-track:8c6837786ecadd8e576e873a46783dd8f3c4cebb0543d5fe694381a646fb27dc` |
| 2 | `theorem` | [dirichletPolynomialComplex_zero_coeff](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/declarations/dirichletpolynomialcomplex-zero-coeff--a4294245cc474a5b868f81c9.md) | 27 | `result-track:a4294245cc474a5b868f81c909acb2a573c498f08cbea60746880c6881c4c186` |
| 3 | `theorem` | [dirichletPolynomialComplex_add](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/declarations/dirichletpolynomialcomplex-add--b22aa25571d63492bafdd8dd.md) | 33 | `result-track:b22aa25571d63492bafdd8ddca5550984d8dbb16ebfe0ee3da98531992b40d15` |
| 4 | `def` | [boundedDirichletConv](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/declarations/boundeddirichletconv--6cc89d2add88da556da19764.md) | 42 | `declaration-track:6cc89d2add88da556da19764aad67c22e2ea33536fcf5bca34098c61f475f203` |
| 5 | `theorem` | [finite_dirichlet_cauchy_product_unweighted](../../../../mathematics/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/declarations/finite-dirichlet-cauchy-product-unweighted--a60106ed1d40144d9e768cac.md) | 50 | `result-track:a60106ed1d40144d9e768cacefc12d628303360eddd347de95191ace15bc0fcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
