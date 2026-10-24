# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SourcePhasePolynomialBudget.Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca18dff60385b06c24ddf50547ba4228350bc7a1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca18dff60385b06c24ddf50547ba4228350bc7a1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePhaseMassFTC` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phasePolynomialCoefficient](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/declarations/phasepolynomialcoefficient--6047734656e6a216be65a93e.md) | 29 | `declaration-track:6047734656e6a216be65a93ebbe7f4258f85836af658c35b5e5b821d52dc5a4e` |
| 2 | `theorem` | [phasePolynomialCoefficient_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/declarations/phasepolynomialcoefficient-pos--773d3d97e6f93c170a525a4f.md) | 32 | `result-track:773d3d97e6f93c170a525a4f655deefca1f1e57850a11070b0cfa29d929bee78` |
| 3 | `theorem` | [positiveMass_ge_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/declarations/positivemass-ge-taylor--72886ff0ec0ca4081685f980.md) | 37 | `result-track:72886ff0ec0ca4081685f9804aea3631cb834b3da73696379c968226f44eadbb` |
| 4 | `theorem` | [positiveMass_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/declarations/positivemass-gt-polynomial--fc01ddbc1c8af4a40a7d45d1.md) | 52 | `result-track:fc01ddbc1c8af4a40a7d45d1d296767ec6f9d381bc4cba48fd9ce94a305507ec` |
| 5 | `theorem` | [positiveMass_eventually_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/declarations/positivemass-eventually-gt-polynomial--a0acd306300f7ab2203a8baa.md) | 69 | `result-track:a0acd306300f7ab2203a8baa8caf660ddff75595597c81a096756e1c577eafa5` |
| 6 | `theorem` | [positiveMass_not_eventually_polynomial_bounded](../../../../../mathematics/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variantdd453deecdc3d49c679eff2a9b647297ec1e29b4c539fda0050256ec7050b55a.lean/declarations/positivemass-not-eventually-polynomial-bounded--80db0f434f871ce8466b74d1.md) | 77 | `result-track:80db0f434f871ce8466b74d11f31026811eaa0cd5f7bcaeecef2a85a4719b8ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
