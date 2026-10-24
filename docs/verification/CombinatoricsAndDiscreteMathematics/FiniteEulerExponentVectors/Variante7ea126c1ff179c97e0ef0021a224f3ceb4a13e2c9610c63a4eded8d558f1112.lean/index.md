# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerExponentVectors.Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "663d40e3ddfc9954bf96977c82896a9d91b74e04",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `663d40e3ddfc9954bf96977c82896a9d91b74e04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExponentVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/declarations/exponentvector--0c9d770787f4f7f1b59ce8b9.md) | 16 | `declaration-track:0c9d770787f4f7f1b59ce8b9d86e3529bea3b60e827c1cb23dca3d42d6782b95` |
| 2 | `instance` | [exponentVectorFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/declarations/exponentvectorfintype--3c586284b35ffbd3330aed0c.md) | 21 | `declaration-track:3c586284b35ffbd3330aed0cb4d90bf98b836f52b9d84acf46fbb8e87a5fe725` |
| 3 | `instance` | [exponentVectorDecidableEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/declarations/exponentvectordecidableeq--c80dc419eafa4e88f5f1daae.md) | 28 | `declaration-track:c80dc419eafa4e88f5f1daaee80f791a6eb906b6368382dc4be821f726a8cd42` |
| 4 | `def` | [exponentVectorWeightReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/declarations/exponentvectorweightreal--1fe598b17326de352c21ecc4.md) | 35 | `declaration-track:1fe598b17326de352c21ecc40b0135ca76570f6715515c2acceabd0b1af5bbcc` |
| 5 | `theorem` | [finiteZetaEulerFactorReal_eq_fin_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/declarations/finitezetaeulerfactorreal-eq-fin-sum--351443d1ab5296412b937fdd.md) | 43 | `result-track:351443d1ab5296412b937fdda77395e28a6d97be2f2d1be24a7c840b46d2ebc9` |
| 6 | `theorem` | [finite_product_sum_expansion_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/declarations/finite-product-sum-expansion-subtype--d81c1cfcaac62dff6d5ad118.md) | 52 | `result-track:d81c1cfcaac62dff6d5ad118f2e0a4b34b493e25c2c108737135e68ce1ce9ed9` |
| 7 | `theorem` | [finiteZetaEulerProductReal_expands_exponent_vectors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/declarations/finitezetaeulerproductreal-expands-exponent-vectors--edc2b5acbe56626ea50720ee.md) | 76 | `result-track:edc2b5acbe56626ea50720ee2a5fefe8b0ca76adf8f4ab2739e5a37b1e07aaff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
