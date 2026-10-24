# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EntryError.Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f8720428b276926fb1310827167a982a1006e88",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f8720428b276926fb1310827167a982a1006e88`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/cauchyk--8d949240ec17d409ab30ac3c.md) | 29 | `declaration-track:8d949240ec17d409ab30ac3c47386c2daeb692c66a46f8fd8e062666d0bf3cab` |
| 2 | `theorem` | [cauchyK_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/cauchyk-pos--da5d62f191f705288e197977.md) | 31 | `result-track:da5d62f191f705288e1979773d2b9a8f260766041c333a640654011c5a10e006` |
| 3 | `theorem` | [cauchyK_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/cauchyk-nonneg--8fb151bd5c1c171ca73f851b.md) | 32 | `result-track:8fb151bd5c1c171ca73f851b23fa7de669fc69f64c2ff416eeef36ca2abeb77a` |
| 4 | `theorem` | [cauchyK_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/cauchyk-le-one--cde5208380abfc59e06f4c0f.md) | 33 | `result-track:cde5208380abfc59e06f4c0f83b1fa182b2f0324bc2c20e2a63eaf4fb80a2e59` |
| 5 | `theorem` | [continuous_cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/continuous-cauchyk--839453455c7698fc5cadb0bf.md) | 36 | `result-track:839453455c7698fc5cadb0bf7b82b1e1d3cece040497d3513d002a03b9a8bf17` |
| 6 | `theorem` | [integrable_cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/integrable-cauchyk--c38203ab68327648dc9a1fdc.md) | 40 | `result-track:c38203ab68327648dc9a1fdc6d907341a9f1364e4828c7d399af46aed98ce0ed` |
| 7 | `theorem` | [integral_cauchyK](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/integral-cauchyk--7f44d03fa68a98542fa384ed.md) | 44 | `result-track:7f44d03fa68a98542fa384ed27fd345b5858bff545cee99b23071a01cdd3a255` |
| 8 | `theorem` | [cauchyK_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/cauchyk-mul-le--fa6a61a97ee131fd4f70e052.md) | 51 | `result-track:fa6a61a97ee131fd4f70e052bc4c5b50b3f13b8de8ef5e0901eaf756d1d5832f` |
| 9 | `theorem` | [integrable_cauchyK_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/integrable-cauchyk-mul--06a6a717f63a26d2cb614eac.md) | 69 | `result-track:06a6a717f63a26d2cb614eac7e0a3b8d544bd4a69355deac50603d879cbcd6fe` |
| 10 | `theorem` | [integral_cauchyK_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/integral-cauchyk-mul-le--455f855174a4c25d9eb33f13.md) | 76 | `result-track:455f855174a4c25d9eb33f1301e7c660f7153a214f01d378bf1e4dd3cab7ea0d` |
| 11 | `theorem` | [cauchyK_far](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/cauchyk-far--27ca933bc1158adfcaecf8df.md) | 89 | `result-track:27ca933bc1158adfcaecf8df0775d3aa99c7f5a986fbaa4779309e1c3168d843` |
| 12 | `theorem` | [setIntegral_cauchyK_mul_far](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/setintegral-cauchyk-mul-far--b889393bd1c57f6236fa3eda.md) | 100 | `result-track:b889393bd1c57f6236fa3eda8cefdfea588ecb1442c1f4c1a96947f378fcf6cc` |
| 13 | `theorem` | [abs_sub_midpoint_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/abs-sub-midpoint-le--5e7ee1d825fcc7c08a607fa5.md) | 115 | `result-track:5e7ee1d825fcc7c08a607fa5cc23dc42536575a4a33d8c00e99494f97ca167bf` |
| 14 | `theorem` | [entry_core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/entry-core--ceaa5ca622036bb05b162b88.md) | 121 | `result-track:ceaa5ca622036bb05b162b883eb499996d5196bdfe50f6e85b92ee196b7c5714` |
| 15 | `theorem` | [entry_core_mirror](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/declarations/entry-core-mirror--dfe02b9f9df72f0e25c322dd.md) | 199 | `result-track:dfe02b9f9df72f0e25c322dd56b662f8392fb39ed8a9ffc54ac88f36b5a1e571` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
