# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Definitions.Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ea8e4c23269b9ff1a68ce3916f02038eb144b10",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ea8e4c23269b9ff1a68ce3916f02038eb144b10`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NontrivialZetaZero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean/declarations/nontrivialzetazero--dec8d60b56756ddb764df433.md) | 22 | `declaration-track:dec8d60b56756ddb764df433fb3d681a95f912fc608ad52b5ac3f4d8d2b352b5` |
| 2 | `def` | [zeroConjugate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean/declarations/zeroconjugate--8f567166dfdf6f8d3ea47d26.md) | 26 | `declaration-track:8f567166dfdf6f8d3ea47d26997942d533a0bfdfe79b67161e0d6dbd4c8cabac` |
| 3 | `def` | [zeroReflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean/declarations/zeroreflect--924463524171194bfdc82a76.md) | 29 | `declaration-track:924463524171194bfdc82a76bb6ee44ca39bc3b34e38b58703bc16a74006d76e` |
| 4 | `def` | [criticalReflection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean/declarations/criticalreflection--b4b7f73fcbe84a5b431fe0ba.md) | 32 | `declaration-track:b4b7f73fcbe84a5b431fe0ba6a2dbc600eb78a3f87126957d9acd0e5585c0a1c` |
| 5 | `def` | [rhDefect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Definitions/Variantb7f5d694ca8b19d164af1fd680a8ddf7ca88ca6317bc0d0d64a4b89c2c750806.lean/declarations/rhdefect--23845e71f8658f4717f62f01.md) | 35 | `declaration-track:23845e71f8658f4717f62f01fc180a53a2cdf8829cb8d56581067b5d5b7715a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
