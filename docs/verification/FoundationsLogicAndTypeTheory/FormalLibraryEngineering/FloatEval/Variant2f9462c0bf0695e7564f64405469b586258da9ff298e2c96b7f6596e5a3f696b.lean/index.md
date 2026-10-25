# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatEval.Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f382bb429f6893147bccb9d9d1c3837d8ba4387",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f382bb429f6893147bccb9d9d1c3837d8ba4387`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FloatEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/declarations/floatenv--b504fe20602d9a489fb11a72.md) | 49 | `declaration-track:b504fe20602d9a489fb11a72aabea2ce533232dc8bfc984087a0279b8d1624bb` |
| 2 | `def` | [floatErf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/declarations/floaterf--2e9fe29b4e427d813ad327b7.md) | 55 | `declaration-track:2e9fe29b4e427d813ad327b70d1fd48ac3d33915454f7f6e98a7880015b24a00` |
| 3 | `def` | [intToFloat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/declarations/inttofloat--683ae085e0a63deba2af90ea.md) | 68 | `declaration-track:683ae085e0a63deba2af90ea099f0172f929c56ab6b60a1c7f447e1482282bd1` |
| 4 | `def` | [ratToFloat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/declarations/rattofloat--1ae8a21cf1afe63e75255509.md) | 73 | `declaration-track:1ae8a21cf1afe63e752555095adf494ec94edb9d881812aeafca0c141ab9f6c2` |
| 5 | `def` | [evalFloat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/declarations/evalfloat--e45957c2489b970c54bd90ea.md) | 80 | `declaration-track:e45957c2489b970c54bd90ea61177526090c3f6e119df611c0da371b87e4c2c5` |
| 6 | `def` | [evalFloatList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/declarations/evalfloatlist--9e51ec4a13c2554f46cc7eba.md) | 118 | `declaration-track:9e51ec4a13c2554f46cc7eba34fd3ef62c4e95dee31001ad9d0de779d9beb25b` |
| 7 | `def` | [evalFloatArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/declarations/evalfloatarray--6a5d4746c15bd20d23c683ad.md) | 122 | `declaration-track:6a5d4746c15bd20d23c683adc39edc16cf90b5fb864ba723484c594e0a2bdc36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
