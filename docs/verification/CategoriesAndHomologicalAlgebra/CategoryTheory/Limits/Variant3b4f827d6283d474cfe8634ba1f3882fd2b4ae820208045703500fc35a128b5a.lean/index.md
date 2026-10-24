# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a32f56cae9847081509805998b7a7e1bc13b5a",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a32f56cae9847081509805998b7a7e1bc13b5a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorialityRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialityrightadjoint--48da7af4d130933e91e26b56.md) | 52 | `declaration-track:48da7af4d130933e91e26b565aca580b6bb2f33ae892da5d9e81547b4d0cb5ff` |
| 2 | `def` | [functorialityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialityunit--1719b471abb8406e4b307554.md) | 63 | `declaration-track:1719b471abb8406e4b307554a83ac9fc4edad97c2f5e5258c7e7b320e63aed74` |
| 3 | `def` | [functorialityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialitycounit--02295965f9cf4369605f604f.md) | 72 | `declaration-track:02295965f9cf4369605f604fe7cc3e9be8318db17bfd121192e61b9cc94c9626` |
| 4 | `def` | [functorialityAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialityadjunction--a6962701f0d1ddf0d81fcfd4.md) | 77 | `declaration-track:a6962701f0d1ddf0d81fcfd4367ad7647e7fc0737d56f2ab1520b0c298b33e65` |
| 5 | `lemma` | [leftAdjoint_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/leftadjoint-preservescolimits--6f8f5d2ca17b6a799c6fbde0.md) | 84 | `result-track:6f8f5d2ca17b6a799c6fbde0f7407f5152f3f209d0b09dfde1bb08288f232ac4` |
| 6 | `lemma` | [leftAdjointPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/leftadjointpreservescolimits--865488855316c9bf92c44270.md) | 94 | `result-track:865488855316c9bf92c4427044951ae026910ff9bea5b460b791a9fb0faecbeb` |
| 7 | `instance` | [colim_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/colim-preservescolimits--c0d23bc41d0e5721d7f48bdc.md) | 98 | `declaration-track:c0d23bc41d0e5721d7f48bdcc19c35924520001a8352175ab30fed2c47bdc918` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--153cef68579710827ddb3b73.md) | 103 | `declaration-track:153cef68579710827ddb3b7320130943aa0cf98be7753d3a72f4d0bbb0bd4757` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--684c39875bd4680c57c0073a.md) | 109 | `declaration-track:684c39875bd4680c57c0073a65ff1ef98d04279a3b803991102bad085e29d027` |
| 10 | `lemma` | [isEquivalenceReflectsColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/isequivalencereflectscolimits--5912b3df0739aaf4579f7627.md) | 119 | `result-track:5912b3df0739aaf4579f7627aa739c7a2b5b64cd00b163402a0d77788e8dd1a7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--b760a76126257b9855baf35f.md) | 124 | `declaration-track:b760a76126257b9855baf35f8703952202d4730e5f0077fa86180fceb6e6fba4` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/example--3fa8b41c142993f49bb6741e.md) | 138 | `declaration-track:3fa8b41c142993f49bb6741eb440210992061bbb8f88b9e72f0fa8f77872b713` |
| 13 | `theorem` | [hasColimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/hascolimit-comp-equivalence--59648eac7d50d6738bbe3e4b.md) | 142 | `result-track:59648eac7d50d6738bbe3e4bf0037376d3f8f57335ffc1b3305dd071be7dc44b` |
| 14 | `theorem` | [hasColimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/hascolimit-of-comp-equivalence--5331e658bfe03244890ec84d.md) | 148 | `result-track:5331e658bfe03244890ec84da444fb7c0b058f97f4fed4c811aa3370c838ffea` |
| 15 | `theorem` | [hasColimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/hascolimitsofshape-of-equivalence--ce128699d2ad6b0354c7fd95.md) | 155 | `result-track:ce128699d2ad6b0354c7fd95513485918e55f7933d3c12da1dc40a0a6112b801` |
| 16 | `theorem` | [has_colimits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/has-colimits-of-equivalence--2c70f3cdecd7c6aa9994aee8.md) | 160 | `result-track:2c70f3cdecd7c6aa9994aee81513ad6585651507754dc969397d44ea9b110b3c` |
| 17 | `def` | [functorialityLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialityleftadjoint--0503f52ee3abc0eb7073132d.md) | 174 | `declaration-track:0503f52ee3abc0eb7073132d1e01a95b81e6f5a784e6e46f4cbc4f24d07fb380` |
| 18 | `def` | [functorialityUnit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialityunit--4e2d63b3f5dc654cef7c450a.md) | 185 | `declaration-track:4e2d63b3f5dc654cef7c450a7184de8ed39d7fb152afde52e9bae060d6773322` |
| 19 | `def` | [functorialityCounit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialitycounit--89c5ac2dec00003bcc9a1781.md) | 194 | `declaration-track:89c5ac2dec00003bcc9a1781a8323b5d806d97abb4354f194aaacf8f229015d2` |
| 20 | `def` | [functorialityAdjunction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/functorialityadjunction--01d27e0557e4b50951b58bf2.md) | 199 | `declaration-track:01d27e0557e4b50951b58bf2645fee2992026b9b39ff23518c6d22464cdda455` |
| 21 | `lemma` | [rightAdjoint_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/rightadjoint-preserveslimits--2788474f217e82add577e8fd.md) | 206 | `result-track:2788474f217e82add577e8fd7feb3123b37b8ce4fd1ff7c7f0b4d728e27d9e5b` |
| 22 | `lemma` | [rightAdjointPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/rightadjointpreserveslimits--3f08b84d0568a0baa4ecbcb1.md) | 216 | `result-track:3f08b84d0568a0baa4ecbcb1d198e9e34123be0027523f94e71641ea9a6f619e` |
| 23 | `instance` | [lim_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/lim-preserveslimits--5e56e818697adffc7e812787.md) | 219 | `declaration-track:5e56e818697adffc7e81278761f4a9bbe4dded0aedfedb340db4abc594d9afcd` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--3af57cb1a93a4128c0508066.md) | 224 | `declaration-track:3af57cb1a93a4128c0508066a0603fffe49422ca1e44f5a8a9595e8ee813f168` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--288ae88b7fcd9de8c194ec62.md) | 230 | `declaration-track:288ae88b7fcd9de8c194ec624ab048ba8aaef43337015998660f931cd42d60de` |
| 26 | `lemma` | [isEquivalenceReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/isequivalencereflectslimits--4e052bf35e4b13f9b9b2ba30.md) | 240 | `result-track:4e052bf35e4b13f9b9b2ba3019dea57b51696392872c2be1825e61f800b53664` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--aa94e9c8d3a8ecdefe19b431.md) | 245 | `declaration-track:aa94e9c8d3a8ecdefe19b431c70d07b7bccfa2ab3632786bca28e734bbf0ba07` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/example--30c53d45984150d8b1922ace.md) | 258 | `declaration-track:30c53d45984150d8b1922ace67f020ca8a8fd2028e899ed7abe042794080b077` |
| 29 | `theorem` | [hasLimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/haslimit-comp-equivalence--bd984fa3349ba55a40541902.md) | 262 | `result-track:bd984fa3349ba55a40541902851d364140e395c07931f76083362d29388c3db4` |
| 30 | `theorem` | [hasLimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/haslimit-of-comp-equivalence--2ec8332948dc9f2279633518.md) | 267 | `result-track:2ec8332948dc9f2279633518655c386ce1b0586bc4b253803f64f2adafcd0c6b` |
| 31 | `theorem` | [hasLimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/haslimitsofshape-of-equivalence--e35a64f368ef950a533166bb.md) | 274 | `result-track:e35a64f368ef950a533166bb48a493f57c020db04d20134bb948bbff4013de69` |
| 32 | `theorem` | [has_limits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/has-limits-of-equivalence--0078fa384645c362c683bc3f.md) | 279 | `result-track:0078fa384645c362c683bc3f180267221770f947bf92a727e64591951ef79e88` |
| 33 | `def` | [coconesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/coconesisocomponenthom--960469d4b66ccf83c2695e76.md) | 287 | `declaration-track:960469d4b66ccf83c2695e76cfb760fab0ead812080e570f4222e1fa233ba8a7` |
| 34 | `def` | [coconesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/coconesisocomponentinv--a6c1deb7b9c67cbf15c50314.md) | 296 | `declaration-track:a6c1deb7b9c67cbf15c50314d5d71bcff3dd6ffee5f1b1efb1eeee604b9b53ab` |
| 35 | `def` | [conesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/conesisocomponenthom--633c7a513d72625433db679f.md) | 305 | `declaration-track:633c7a513d72625433db679f46848b49db4be1b29c7edeabeee29fb2d933a20a` |
| 36 | `def` | [conesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/conesisocomponentinv--8204bea8f6b8e55e5cbcbbc8.md) | 314 | `declaration-track:8204bea8f6b8e55e5cbcbbc89b029caaa552afaa7d9685a8f077650ae8d44ced` |
| 37 | `def` | [coconesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/coconesiso--e560beeed3382f1f2c402b60.md) | 333 | `declaration-track:e560beeed3382f1f2c402b60ab48dae84bb8a32a6acc3333becba32ab71473d6` |
| 38 | `def` | [conesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/conesiso--cc31135d9842eb1abddad624.md) | 345 | `declaration-track:cc31135d9842eb1abddad624cc4a5d47448c7da5ccbd34808434284548fa4398` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--b9d609218ba4b2ce0d3ab268.md) | 358 | `declaration-track:b9d609218ba4b2ce0d3ab268771c2654ab1b085a3dcfdaef5c24608679e741c5` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--593ca8f1bb1f3c6960076393.md) | 361 | `declaration-track:593ca8f1bb1f3c6960076393064326e50bc81cb3abdadb4cbd6d22186e0ad69a` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--b33060d6885529159e941cbe.md) | 363 | `declaration-track:b33060d6885529159e941cbe376edb390dde8ced37b394f52c1b576b4a4bfab1` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/declarations/instance--567769b479a790edae8cc405.md) | 366 | `declaration-track:567769b479a790edae8cc405b248c63d34a51316ca05aaf7e94e048e75b7d525` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
