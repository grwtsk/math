# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Assembly.Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55b15bf9a6b655522821198485b63514f00e2e12",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55b15bf9a6b655522821198485b63514f00e2e12`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/declarations/primitivecharacterhalfplusepsilonfamily--605da4912e891706a152ba1e.md) | 35 | `declaration-track:605da4912e891706a152ba1ee50889ee499de70ee11da7ef60790751d2f5a0c8` |
| 2 | `def` | [UniformHybridDirichletHalfPlusEpsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/declarations/uniformhybriddirichlethalfplusepsilon--c49f9a474386957f1785cf9c.md) | 45 | `declaration-track:c49f9a474386957f1785cf9cc0eeb626b84dfde03b0a6762ed9353fbda0d2dfa` |
| 3 | `theorem` | [primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/declarations/primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--e681bc532c8627de6f92366e.md) | 59 | `result-track:e681bc532c8627de6f92366e142cbbddb41b9ca1d92626be733b6f6477d1843c` |
| 4 | `theorem` | [dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/declarations/dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--6580e837887fad22ceef5fc1.md) | 79 | `result-track:6580e837887fad22ceef5fc18e9924e2f708f06cc280c4e9515e3def6fd31a70` |
| 5 | `theorem` | [dirichletGRH_iff_halfPlusEpsilonFamily](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/declarations/dirichletgrh-iff-halfplusepsilonfamily--84232f324ce88795c4b790a4.md) | 99 | `result-track:84232f324ce88795c4b790a41dde30b6e547019d0c3add941dd6db4e20f1b107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
