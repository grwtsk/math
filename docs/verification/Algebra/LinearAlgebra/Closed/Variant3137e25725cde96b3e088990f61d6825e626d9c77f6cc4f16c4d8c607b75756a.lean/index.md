# Verification target: GRWTSK.Algebra.LinearAlgebra.Closed.Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a51e4ccac4e82a96521b5355b26219500274a290",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a51e4ccac4e82a96521b5355b26219500274a290`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Yoneda` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalClosedHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/monoidalclosedhomequiv--5632bf3803e214b276e27c9d.md) | 35 | `declaration-track:5632bf3803e214b276e27c9d26c4869be63a9e81661cfd38027afd45d16b9626` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/instance--1d3c1dbc22ffb5347d49f592.md) | 48 | `declaration-track:1d3c1dbc22ffb5347d49f592abc019b69ac4ebc012c2b24e59d575ea6bac6400` |
| 3 | `theorem` | [ihom_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/ihom-map-apply--49acb4404be87f404697cbe7.md) | 61 | `result-track:49acb4404be87f404697cbe792b13d9a165d5820fc0b213e6e9b83faddd368ff` |
| 4 | `theorem` | [monoidalClosed_curry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/monoidalclosed-curry--f0db3bbef498b08bd3478deb.md) | 67 | `result-track:f0db3bbef498b08bd3478deb72aa5d49ee5cc62a289df1d3ebc8a8be7228662a` |
| 5 | `theorem` | [monoidalClosed_uncurry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/monoidalclosed-uncurry--3eb481dd1a2eb958180b9eb2.md) | 72 | `result-track:3eb481dd1a2eb958180b9eb22bd4bec7c8893d270c2dca792601060bf9ea7bf8` |
| 6 | `theorem` | [ihom_ev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/ihom-ev-app--1563ac24a144f2cf677287fd.md) | 80 | `result-track:1563ac24a144f2cf677287fd6885dd1cd382e6500ef2875dbcb4be30c60b1f9a` |
| 7 | `theorem` | [ihom_coev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/ihom-coev-app--b5475e721ebf7ce29edd2173.md) | 91 | `result-track:b5475e721ebf7ce29edd2173c19f2f0a7804aac661fd716c6d59ebf2c8f1622e` |
| 8 | `theorem` | [monoidalClosed_pre_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant3137e25725cde96b3e088990f61d6825e626d9c77f6cc4f16c4d8c607b75756a.lean/declarations/monoidalclosed-pre-app--74137315446cf8946391a644.md) | 95 | `result-track:74137315446cf8946391a644743993b39f1496ef633375e88fec811f08f66781` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
