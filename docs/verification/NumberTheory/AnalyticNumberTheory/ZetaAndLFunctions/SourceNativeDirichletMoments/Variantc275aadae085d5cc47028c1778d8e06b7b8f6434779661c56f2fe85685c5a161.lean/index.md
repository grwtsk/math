# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SourceNativeDirichletMoments.Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6f4d69dcb738e6cf19f34913b283ebace17a22b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6f4d69dcb738e6cf19f34913b283ebace17a22b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean/declarations/dirichletmoment--de4b44163c42dbf48c0592b1.md) | 23 | `declaration-track:de4b44163c42dbf48c0592b1faa13446ee40090d4b82800995565c4a961ae0b2` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean/declarations/dirichletmoment-nonneg--824cece79254e2c767d307c3.md) | 27 | `result-track:824cece79254e2c767d307c3692e05ffae5e79965f0406cef8e9e7c074b82203` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean/declarations/mangoldt-abscissa-le-one--8ad573ae99ac3ab1884b92bf.md) | 34 | `result-track:8ad573ae99ac3ab1884b92bf02ed23d84de4da7a8724bb06e0bc10f50f3c8c71` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean/declarations/iterate-logmul-eq--a644113ab7b613b0c320ab92.md) | 40 | `result-track:a644113ab7b613b0c320ab92d2acee1c618c06a43c5ebeeec5bc8061e639bf1a` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variantc275aadae085d5cc47028c1778d8e06b7b8f6434779661c56f2fe85685c5a161.lean/declarations/dirichletmoment-summable--404ec79160aadad69b9fce62.md) | 49 | `result-track:404ec79160aadad69b9fce62964d044be756f94b679c4363991b82abce7869df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
