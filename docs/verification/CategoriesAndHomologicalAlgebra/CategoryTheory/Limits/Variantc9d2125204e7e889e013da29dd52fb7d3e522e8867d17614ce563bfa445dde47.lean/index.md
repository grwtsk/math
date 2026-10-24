# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08b0d2ff92a9d53060b65bf3dca57cbdc7da8dad",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08b0d2ff92a9d53060b65bf3dca57cbdc7da8dad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Small.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [monoidObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/monoidobj--22eed90dcf61ff4602aab92a.md) | 33 | `declaration-track:22eed90dcf61ff4602aab92aa816464d517ed92fd083bb2a6b712d9374629a3a` |
| 2 | `def` | [sectionsSubmonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/sectionssubmonoid--af7bf2ce93eb23b7754a5cc2.md) | 40 | `declaration-track:af7bf2ce93eb23b7754a5cc21f17677e63d139e8f08fb61f1b8e40bff1925afc` |
| 3 | `instance` | [sectionsMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/sectionsmonoid--1453bd3d5888905f2a1a1805.md) | 49 | `declaration-track:1453bd3d5888905f2a1a1805e068b23a059c00ae32c068cee34e9e01a54cd352` |
| 4 | `instance` | [limitMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/limitmonoid--6571abe5e885c8b5ccc4132a.md) | 55 | `declaration-track:6571abe5e885c8b5ccc4132a17b2e2506bad85a3d27b0b3c177610af15fb36b5` |
| 5 | `def` | [limitπMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/limit-monoidhom--47f7b1c6903c57038c379990.md) | 61 | `declaration-track:47f7b1c6903c57038c379990862d9fa29a383f143cf4956fd0b44094647d74ff` |
| 6 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/limitcone--eb8bc69b28be46e99ac7700f.md) | 81 | `declaration-track:eb8bc69b28be46e99ac7700fe2990288814955422ac0e39b88306cc864d9de98` |
| 7 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/limitconeislimit--c65bad4984fd79734354779e.md) | 92 | `declaration-track:c65bad4984fd79734354779e328983afbbbea7eb60c31fc9df28264af059fcb7` |
| 8 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimit--5291876fd8b18bbbbd3f3cac.md) | 104 | `declaration-track:5291876fd8b18bbbbd3f3caccc211a1b27b350b9f6d07f167d7653170445a99c` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimitsofshape--bf78f186954bdc892e5e2a6a.md) | 112 | `declaration-track:bf78f186954bdc892e5e2a6a8f20a94fa869e1fd3d9e39f31e30b4c1fcfdda7f` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimitsofsize--4c8ea0cfd13c1e0e825f6023.md) | 122 | `declaration-track:4c8ea0cfd13c1e0e825f602330fa00237ceff2f653c7ddf0cf4972c5b1e1d7fc` |
| 11 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimits--a5fcaf5232137cbc9aac11ae.md) | 126 | `declaration-track:a5fcaf5232137cbc9aac11ae2141328d401bca5c4733b2c6d40f690490471062` |
| 12 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-preserveslimitsofshape--5f409e2c6c366aa9217b5656.md) | 132 | `declaration-track:5f409e2c6c366aa9217b565617d8fb07a0ea92ec9d0bcb39a465c774fa3826df` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-preserveslimitsofsize--d24f6569dd31df803f5dfa82.md) | 144 | `declaration-track:d24f6569dd31df803f5dfa82f72074e1051ab4cb35b0e802cdaeab76264a984e` |
| 14 | `instance` | [forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-preserveslimits--7551b48e6407a9c8687cb9ec.md) | 149 | `declaration-track:7551b48e6407a9c8687cb9ecfe8a16807cf29c69701836bcecb370a6a70b8891` |
| 15 | `instance` | [forget_createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimit--2d9b4009492957a6f0b2e25e.md) | 153 | `declaration-track:2d9b4009492957a6f0b2e25e2924cbc9ba9cbec61ae0171d1b930e3dc304c0fc` |
| 16 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimitsofshape--bed3af240cd37fa76e675e0a.md) | 181 | `declaration-track:bed3af240cd37fa76e675e0a552f1d46761df1ced6e74141e8a807e3c1af2c14` |
| 17 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimitsofsize--30a2efecb74dbcba867c690a.md) | 187 | `declaration-track:30a2efecb74dbcba867c690a71ea30b341887f0c4fb20d60848cd977dd509bb3` |
| 18 | `instance` | [forget_createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimits--05ad0ca4432ff1a07d4fb25f.md) | 192 | `declaration-track:05ad0ca4432ff1a07d4fb25ff9841756b5bb6c24f0ee5d6f03eda875f3647d44` |
| 19 | `instance` | [commMonoidObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/commmonoidobj--cddbd9aafdaefb8509fcb79b.md) | 204 | `declaration-track:cddbd9aafdaefb8509fcb79b725b69348e7e1004437afc89138081405c9762ae` |
| 20 | `instance` | [limitCommMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/limitcommmonoid--38f9ef1c724acb406d304c72.md) | 210 | `declaration-track:38f9ef1c724acb406d304c72d3731f8e4b43d0965e51f3a5601a59bc7793c6db` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/instance--798705c98dfc2fb9f26a2a07.md) | 218 | `declaration-track:798705c98dfc2fb9f26a2a07f7d4b247b7ef724cc756b382e576b8ece7f6115c` |
| 22 | `instance` | [forget₂CreatesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimit--8200fbfea609b869889ad552.md) | 228 | `declaration-track:8200fbfea609b869889ad552369b0660268abde59c2169a7bd59ce09da60713b` |
| 23 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/limitcone--3bfffaa363d9098524233f5f.md) | 247 | `declaration-track:3bfffaa363d9098524233f5f40336b13e8b35a2cd7c7adfdbfc125edb5241094` |
| 24 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/limitconeislimit--d45e2bf9dbf398f7a73a7ef3.md) | 255 | `declaration-track:d45e2bf9dbf398f7a73a7ef3250f608df9a3f378fef94a649b69f4ff5ec27288` |
| 25 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimit--53874eced5b6f0479aa7431d.md) | 260 | `declaration-track:53874eced5b6f0479aa7431d92008ced7eba77ac28ed3bb5b442c06ef94966ae` |
| 26 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimitsofshape--6456dcd2d8e80fa869086a0a.md) | 268 | `declaration-track:6456dcd2d8e80fa869086a0a92f7db5f6ed7e52aa0b191dd4024916ec868a5ab` |
| 27 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimitsofsize--d1cbcd834aaf918c848e9123.md) | 274 | `declaration-track:d1cbcd834aaf918c848e912353e21efbb8079712fbd49b024ce4d4e4bda66df1` |
| 28 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/haslimits--85d8ba27c2f86a999614207f.md) | 278 | `declaration-track:85d8ba27c2f86a999614207ffd7aba3e408844893968e9009ba61cb9de381b67` |
| 29 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-mon-preserveslimitsofsize--225f13d6ec78859fde06aae8.md) | 289 | `declaration-track:225f13d6ec78859fde06aae8bbb18612f8dd618d79bc528896fb746fa86e93d4` |
| 30 | `instance` | [forget₂Mon_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-mon-preserveslimits--91a0e78873969ecd9e78d291.md) | 294 | `declaration-track:91a0e78873969ecd9e78d291f0620e4ae2952b340a6e8a56ff7eeb1565c3be50` |
| 31 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-preserveslimitsofshape--53a1d35d007a3f8b702b0fcc.md) | 302 | `declaration-track:53a1d35d007a3f8b702b0fcca872830c74716d97d706cb9c9b1ffcfdc2b738fd` |
| 32 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-preserveslimitsofsize--28a3dc90ec77ed4c079f55bb.md) | 313 | `declaration-track:28a3dc90ec77ed4c079f55bb2276603d35ac8532a554a8cbb7a0299d248dadeb` |
| 33 | `instance` | [_root_.AddCommMonCat.forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/root-addcommmoncat-forget-preserveslimits--81d7f9068e8a31e2deb781e8.md) | 317 | `declaration-track:81d7f9068e8a31e2deb781e89c6cc2901534c6e2166c16ff64bad86dc70cf025` |
| 34 | `instance` | [forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-preserveslimits--5eb028daf39d5792b0fe748d.md) | 322 | `declaration-track:5eb028daf39d5792b0fe748d11ba2dfd526318bb65a469d27e3d941f3402e0ec` |
| 35 | `instance` | [forget_createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimit--71fa5f7ce9e99f8e4c3f168c.md) | 326 | `declaration-track:71fa5f7ce9e99f8e4c3f168c652785b05a8f211810f20ae53bcd5cc92a44fe8b` |
| 36 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimitsofshape--15da9b4405919ac83825547b.md) | 333 | `declaration-track:15da9b4405919ac83825547bdf17a8f24fbdf15a3935716d44a0d6e7fe92ba1a` |
| 37 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimitsofsize--f4ee87b5b25d69047f864215.md) | 340 | `declaration-track:f4ee87b5b25d69047f864215d22638a68953e00012c0be20d2201939bc75390e` |
| 38 | `instance` | [forget_createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.lean/declarations/forget-createslimits--84569763061111519ae72c8f.md) | 345 | `declaration-track:84569763061111519ae72c8f758ae1a7b3d9871f0557ad7a75fa449e82c1fd0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
