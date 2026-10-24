# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteLimits.Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17df89ef677ad838c18d115768571f1f8642804d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17df89ef677ad838c18d115768571f1f8642804d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitelimits--f0602c34aecde82d18cc7b20.md) | 47 | `declaration-track:f0602c34aecde82d18cc7b20c3c311e2400a189369cdacb39d8b184e3b71c296` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/instance--e0276ba073b6cbb1a09b597b.md) | 53 | `declaration-track:e0276ba073b6cbb1a09b597b05bb9d31f25e8ff5b67ba1143683ff1b8ed2fc46` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/instance--f78cc8ce3e87addf335978b7.md) | 59 | `declaration-track:f78cc8ce3e87addf335978b70cf90332452cab44c236ff5399ce899d56ffc323` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/instance--e912a4634111acf00c997ce1.md) | 69 | `declaration-track:e912a4634111acf00c997ce18bbdbb842dc4a57701c7ba7fa067a8aa4cd79c6e` |
| 5 | `theorem` | [hasFiniteLimits_of_hasFiniteLimits_of_size](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitelimits-of-hasfinitelimits-of-size--554ec80057c4880d61d7e79c.md) | 75 | `result-track:554ec80057c4880d61d7e79c9e42541f66cec988468c7b6c489d97ac632435a3` |
| 6 | `class` | [HasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitecolimits--1c93afa1fe1ab5e97cfdd43b.md) | 97 | `declaration-track:1c93afa1fe1ab5e97cfdd43b3a32c2cf0461d8fc59f0b60240e8fc3cc5a11644` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/instance--233f2f9b10ea0aef4063507c.md) | 103 | `declaration-track:233f2f9b10ea0aef4063507cecdbf1b648d0138f489530fbb30a4c16b8cc29f5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/instance--07b00913ebce0757a1c157ae.md) | 109 | `declaration-track:07b00913ebce0757a1c157ae86a5d01f4d2e9893a7f67d1dcdfd17aea6a2a928` |
| 9 | `theorem` | [hasFiniteColimits_of_hasFiniteColimits_of_size](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitecolimits-of-hasfinitecolimits-of-size--a6fd1df42a85dbb9f92dde3d.md) | 120 | `result-track:a6fd1df42a85dbb9f92dde3d459fa5289fb189203e02d2cd896ec784125ff2a1` |
| 10 | `instance` | [fintypeWalkingParallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fintypewalkingparallelpair--ac1eecd4b36d4731a117684d.md) | 138 | `declaration-track:ac1eecd4b36d4731a117684d6f070a6775737eafa5e9a1bc578916d08757f65b` |
| 11 | `instance` | [instFintypeWalkingParallelPairHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/instfintypewalkingparallelpairhom--2108fef66482a3f81a9910b9.md) | 145 | `declaration-track:2108fef66482a3f81a9910b9aaa8d3f1699e780080727a09f13a6d92c901c1c7` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/instance--5da47dd5e19afed2745acbbc.md) | 157 | `declaration-track:5da47dd5e19afed2745acbbcad0b58d46016a4cbea023723102d7479a1ae3853` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/example--95477ad16d9052b47ac21aab.md) | 162 | `declaration-track:95477ad16d9052b47ac21aab56fb403cd57bd0453438ac8fa4b70111b7338a97` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/example--cf75f239ff5b61313f14b590.md) | 166 | `declaration-track:cf75f239ff5b61313f14b590a84c34b304a533e1a322a1f7e057e9b1ba30be54` |
| 15 | `instance` | [fintypeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fintypeobj--7f88c5a56d4e31f5d30b137c.md) | 174 | `declaration-track:7f88c5a56d4e31f5d30b137c74cda71e5cc6938c22d6957c9f4eeac26ab1f9a8` |
| 16 | `instance` | [fintypeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fintypehom--f6b68a0f5b194abf8d70bde3.md) | 179 | `declaration-track:f6b68a0f5b194abf8d70bde3cb9ff487052ef5f7e76aa1581302b182c36c7b84` |
| 17 | `instance` | [fintypeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fintypeobj--14ff87b3bf017d05d41cd3ee.md) | 200 | `declaration-track:14ff87b3bf017d05d41cd3ee515979e750aae8ae1ed6fba7adbd932adc955f07` |
| 18 | `instance` | [fintypeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fintypehom--22553a97fc6cec7355d7e2b6.md) | 204 | `declaration-track:22553a97fc6cec7355d7e2b6fe8c36414f00ef1a4e6f709fde3de659c3718689` |
| 19 | `instance` | [finCategoryWidePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fincategorywidepullback--e9119f339b5ec5c0f715afcc.md) | 222 | `declaration-track:e9119f339b5ec5c0f715afcc2eeb7bb561698f408c9b93155d061127e5f43418` |
| 20 | `instance` | [finCategoryWidePushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fincategorywidepushout--a795251825d17b37b6a4881a.md) | 226 | `declaration-track:a795251825d17b37b6a4881a9eb431db39c5f7b40e3b33b5c488a39a815c81a3` |
| 21 | `class` | [HasFiniteWidePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitewidepullbacks--5b45b80bfe4da6db3349d9a8.md) | 235 | `declaration-track:5b45b80bfe4da6db3349d9a883dce0ff7769c1f0aae023468b89ff086bff7189` |
| 22 | `instance` | [hasLimitsOfShape_widePullbackShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/haslimitsofshape-widepullbackshape--db6121c2ae5c62080d4b0521.md) | 240 | `declaration-track:db6121c2ae5c62080d4b0521054deba164584db440b3ce6648970890a6042972` |
| 23 | `class` | [HasFiniteWidePushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitewidepushouts--6ee84bbd2bfcd0f0e8652ed9.md) | 250 | `declaration-track:6ee84bbd2bfcd0f0e8652ed95b733a937e21bcfda0838a563fb557169166de08` |
| 24 | `instance` | [hasColimitsOfShape_widePushoutShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hascolimitsofshape-widepushoutshape--4878765e017f84929b6f5371.md) | 255 | `declaration-track:4878765e017f84929b6f5371fb2736003162e3f6bed393868aa1c7684e3fbbf2` |
| 25 | `theorem` | [hasFiniteWidePullbacks_of_hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitewidepullbacks-of-hasfinitelimits--6e574aa093f3c110300cc86f.md) | 265 | `result-track:6e574aa093f3c110300cc86f3af12750d94759e522566b2d2472e7b978d00558` |
| 26 | `theorem` | [hasFiniteWidePushouts_of_has_finite_limits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/hasfinitewidepushouts-of-has-finite-limits--a06fac21ec82af1bf6e4379a.md) | 272 | `result-track:a06fac21ec82af1bf6e4379a057aa48757a99a052b53af74e658543782708acb` |
| 27 | `instance` | [fintypeWalkingPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/fintypewalkingpair--9c098417a7f8707a8938fb7c.md) | 277 | `declaration-track:9c098417a7f8707a8938fb7c4e2925e22ae98317cb7057ce6ecc9d46d82d46a5` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/example--b7cfc0bd8a024e85fcb39742.md) | 283 | `declaration-track:b7cfc0bd8a024e85fcb397429288ecc7e9127f9111c20a125a31cc61646bdda4` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant59481f8df8cde688c2b787ebc060c9dffd5c9d464841e89fb8523c7bf0537c2a.lean/declarations/example--9e3aeb18f0f70d828479de22.md) | 286 | `declaration-track:9e3aeb18f0f70d828479de222d084f2d81944d512e19eb4ad6ca7ea5577623eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
