# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Template.Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Boundary` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Tally` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ValueSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/valuesort--27b209077c2c4440fae6060d.md) | 15 | `declaration-track:27b209077c2c4440fae6060d8fc5ca1b97c84cee0dfbd546203f1310c5bac7f5` |
| 2 | `inductive` | [DependencyPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/dependencypartition--89ed369dbeffe99fc83dfce8.md) | 23 | `declaration-track:89ed369dbeffe99fc83dfce891dccb1917b47628fed5982dbe787f71aa418cfa` |
| 3 | `structure` | [Symbol](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/symbol--8bd7c7311dee9deb4fec44a4.md) | 31 | `declaration-track:8bd7c7311dee9deb4fec44a4ad60ea8df17c0611f631a669d2972b0be316001f` |
| 4 | `inductive` | [Term](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/term--ef7378571dc5738fbbdd3eb3.md) | 37 | `declaration-track:ef7378571dc5738fbbdd3eb3c6d53338bbc931e75fa9c76ce6d51cd2cfd2b4f4` |
| 5 | `inductive` | [Value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/value--26e17b0cd386665d8920b23c.md) | 51 | `declaration-track:26e17b0cd386665d8920b23c09a7620a3a3ded459a8dd7295a654ec3ff83b1cc` |
| 6 | `def` | [Value.sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/value-sort--9831b6d0ed9ee47a66eb7589.md) | 59 | `declaration-track:9831b6d0ed9ee47a66eb758927426017afb16e019a54adabb7cd0f9e612ea3f9` |
| 7 | `abbrev` | [Environment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/environment--8bbbedce3f2f5eb0b3210ad8.md) | 66 | `declaration-track:8bbbedce3f2f5eb0b3210ad8ef57e042da5344169b4cf997679844f5cf043d0c` |
| 8 | `def` | [Environment.lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/environment-lookup--b388db7abacb6c1788508051.md) | 68 | `declaration-track:b388db7abacb6c17885080519c5fee9d5a64e360459b91d67413a93b7b72fc90` |
| 9 | `def` | [Term.infer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/term-infer--34fbd011f3a9f025bdfcf74b.md) | 76 | `declaration-track:34fbd011f3a9f025bdfcf74be738f5600e79dde2368bf3dd3242285cb1ef7c01` |
| 10 | `def` | [Term.freeVariables](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/term-freevariables--5cc2f56588fb96d29f2270f5.md) | 99 | `declaration-track:5cc2f56588fb96d29f2270f546f72619d06ac0fc9ff33b1b73c2426b89c7afea` |
| 11 | `inductive` | [EvalResult](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/evalresult--7e7cd7e409cb23ed1643be32.md) | 115 | `declaration-track:7e7cd7e409cb23ed1643be326b08e3688f9ec6850c9691e376537e9b449953fe` |
| 12 | `inductive` | [PrimeHoleValidation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/primeholevalidation--d54635e960ef444c7d9aac0c.md) | 121 | `declaration-track:d54635e960ef444c7d9aac0cf1d6724b832aee87f42a56025b6a89d34c8e1da2` |
| 13 | `structure` | [PrimeHole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/primehole--48131e6610fcbdfc72b95d55.md) | 128 | `declaration-track:48131e6610fcbdfc72b95d557a95b5a44d617de0a068041d1ebb21ae6ad67be4` |
| 14 | `inductive` | [TemplateFieldScope](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/templatefieldscope--89f33014a48155faf62e9c8a.md) | 139 | `declaration-track:89f33014a48155faf62e9c8a52a7b19dc00ff6cc98d52b402ff31f2d6d5a2d8a` |
| 15 | `def` | [Term.eval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/term-eval--fdc5ecafa77170585aeefb37.md) | 145 | `declaration-track:fdc5ecafa77170585aeefb37d369410b213ce025b015a7b85bfabc3464b48e35` |
| 16 | `structure` | [TemplateField](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/templatefield--07079732419e1ef245b47aee.md) | 186 | `declaration-track:07079732419e1ef245b47aee2d30701b58e684495663bf273a5420ab9574daf6` |
| 17 | `def` | [TemplateField.ClassReusable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/templatefield-classreusable--7125f81e1669436aaeaf2be9.md) | 210 | `declaration-track:7125f81e1669436aaeaf2be99c7916030c65cfa2a8da5044528cae1eaf94264a` |
| 18 | `theorem` | [TemplateField.classReusable_has_no_primeDependency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/templatefield-classreusable-has-no-primedependency--abed7959c712ae70bda1a951.md) | 214 | `result-track:abed7959c712ae70bda1a951149ab3db6d57e2db7f7d9ec9598d3522b9bc381f` |
| 19 | `structure` | [Template](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/template--a2e039fd3aeb4282385ea0f3.md) | 231 | `declaration-track:a2e039fd3aeb4282385ea0f3f28cfe30f655ad174608eb83a7c83fd8b4a719c0` |
| 20 | `def` | [Template.classFields](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/template-classfields--7146f69782252d1c513a8e86.md) | 234 | `declaration-track:7146f69782252d1c513a8e86bf7f8b1c03d9073a6989d9fb720b6e54998eb4a6` |
| 21 | `def` | [Template.primeFields](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/template-primefields--863e23e4761c37569c4f22b7.md) | 238 | `declaration-track:863e23e4761c37569c4f22b7dbcd223fce850baead42892afde2eb4a52b16051` |
| 22 | `def` | [Template.runtimeFields](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/template-runtimefields--475fc8edb054d1733c52ad00.md) | 242 | `declaration-track:475fc8edb054d1733c52ad00f67522efe8c8be159271dd8d353fc25e0e28e03a` |
| 23 | `theorem` | [Template.class_prime_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/declarations/template-class-prime-disjoint--8b6b4e8f94f748cfdb0b5069.md) | 246 | `result-track:8b6b4e8f94f748cfdb0b5069191e4a1d63d55e56aac129949d978ed6b90b0372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
