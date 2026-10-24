# Verification target: GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82b3702a86d3cf878e7b1f9016019e9fd59fe5da",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82b3702a86d3cf878e7b1f9016019e9fd59fe5da`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Orthogonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Localization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.BaseChange` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.CanonicalBilinear` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/isanisotropic--18cbd8c087b88a4a6576f5c6.md) | 76 | `declaration-track:18cbd8c087b88a4a6576f5c6025e3956e273d36a78fe853a990de4d0c3fcc273` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/instance--7c669042dcdee13756059eb6.md) | 80 | `declaration-track:7c669042dcdee13756059eb6330a7233dc30186f9903c9d397e1080acfe58292` |
| 3 | `lemma` | [isAnisotropic_of_isValuedIn](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/isanisotropic-of-isvaluedin--31a3ad06e3aa16d458dda1d9.md) | 84 | `result-track:31a3ad06e3aa16d458dda1d97a0dd9a93c993b76e5af641cc5df856df5c1e5b9` |
| 4 | `instance` | [instIsAnisotropicOfIsCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/instisanisotropicofiscrystallographic--ceb275096aed8ff4851cba15.md) | 91 | `declaration-track:ceb275096aed8ff4851cba15b22a5602e4703f83e6aba35eb07855a5154c060c` |
| 5 | `def` | [toInvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/toinvariantform--26c2afde9be56381fedcadae.md) | 96 | `declaration-track:26c2afde9be56381fedcadae165a747bcde942024e3bc088304ab712a71e8ccf` |
| 6 | `lemma` | [finrank_range_polarization_eq_finrank_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/finrank-range-polarization-eq-finrank-span-coroot--6b4f254c1aff724e6cebb8ac.md) | 107 | `result-track:6b4f254c1aff724e6cebb8acb2dc8e6563ebae7167f9b1456dfa8a9ac46c96af` |
| 7 | `lemma` | [finrank_corootSpan_le](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/finrank-corootspan-le--183b8dd3b19e64c917b84434.md) | 128 | `result-track:183b8dd3b19e64c917b8443469f5b85a92c0f575fe7f39eb2f94fa21ef722e47` |
| 8 | `lemma` | [finrank_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/finrank-corootspan-eq--7cd146023a52867e79a4a552.md) | 133 | `result-track:7cd146023a52867e79a4a5522dbb9fe34f86d9f6d42c0658001f693da8a4c667` |
| 9 | `lemma` | [polarizationIn_Injective](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/polarizationin-injective--3bc02a6294ec9fa8dc7bc10b.md) | 137 | `result-track:3bc02a6294ec9fa8dc7bc10b58b20e93f6a13b63b9c85699f3f3d226675f4993` |
| 10 | `lemma` | [exists_coroot_ne](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/exists-coroot-ne--302116b0afdeca2bbf9985e5.md) | 146 | `result-track:302116b0afdeca2bbf9985e5748c36b0a037ec1abf3a9d707ee673ce37f6510e` |
| 11 | `theorem` | [posRootForm_posForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/posrootform-posform-pos-of-ne-zero--dbbd4b4b0f8e78888d754b29.md) | 163 | `result-track:dbbd4b4b0f8e78888d754b29114bf29691fe7a68c1b0152f615245b34cbda228` |
| 12 | `lemma` | [posRootForm_posForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/posrootform-posform-anisotropic--956ca6c2dc643cf0e7e1c8f4.md) | 173 | `result-track:956ca6c2dc643cf0e7e1c8f44014bcd77d13cc626e5222bd089351753ca95413` |
| 13 | `lemma` | [posRootForm_posForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/posrootform-posform-nondegenerate--afbc6110dd7bfa4c0551c086.md) | 178 | `result-track:afbc6110dd7bfa4c0551c086f954d97bc6590d218b2b9b11696fc8583950d390` |
| 14 | `lemma` | [finrank_rootSpan_map_polarization_eq_finrank_corootSpan](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/finrank-rootspan-map-polarization-eq-finrank-corootspan--8f512b070a7c07415cef4dfb.md) | 197 | `result-track:8f512b070a7c07415cef4dfb99aa13b8c2a9f03d829b01ef0bd63cf298c11eef` |
| 15 | `lemma` | [finrank_corootSpan_le'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/finrank-corootspan-le--ed36d9eda80668448868a4ca.md) | 202 | `result-track:ed36d9eda80668448868a4ca406fecd35b67faebf5a9f326e7e7aad892ae47d4` |
| 16 | `lemma` | [finrank_corootSpan_eq'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/finrank-corootspan-eq--41138502d1fd8bb5b8be5bea.md) | 208 | `result-track:41138502d1fd8bb5b8be5bea225375009f110185eda73c6d6acfd42003cd81b8` |
| 17 | `lemma` | [disjoint_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/disjoint-rootspan-ker-rootform--438c47ec6c4c7c174630ae51.md) | 212 | `result-track:438c47ec6c4c7c174630ae51982a83c70c1ecbe5bdbcbdf1de2c9497d5feb2c6` |
| 18 | `lemma` | [disjoint_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/disjoint-corootspan-ker-corootform--d7f67c81af0e51038a35d44e.md) | 219 | `result-track:d7f67c81af0e51038a35d44ecce41facc55c8548aec608e4f38c05199d7624fd` |
| 19 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsAnisotropic.Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.RootSystem.rootForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/root-grwtsk-algebra-linearalgebra-isanisotropic-variant20457a76b0211af22--4255e4347141e880173b5b7a.md) | 223 | `result-track:4255e4347141e880173b5b7addedfcef5b447330c16071f3d3c0e478a9302fda` |
| 20 | `lemma` | [isCompl_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/iscompl-rootspan-ker-rootform--0b4ef16563ea72b899c571fe.md) | 234 | `result-track:0b4ef16563ea72b899c571fec69c1c36cf8ee9ca0c08b83a2e5262ecf2cfd4f3` |
| 21 | `lemma` | [isCompl_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/iscompl-corootspan-ker-corootform--bff23e5ce8777f41ac62bfdb.md) | 247 | `result-track:bff23e5ce8777f41ac62bfdb2900c373c39a22bc011ca96d95d6e7ae5c4cafc2` |
| 22 | `lemma` | [ker_rootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/ker-rootform-eq-dualannihilator--6af14db65dc59274a7c10057.md) | 251 | `result-track:6af14db65dc59274a7c100574bc488084045023c09e5afbb8b0277ae68625bd2` |
| 23 | `lemma` | [ker_corootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/ker-corootform-eq-dualannihilator--8d0bc227beecdb47372bad3a.md) | 264 | `result-track:8d0bc227beecdb47372bad3a0348a1f4612e3628baf7244c536a56e7ffb53994` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/instance--41acdb561f769e699380d2d4.md) | 268 | `declaration-track:41acdb561f769e699380d2d4072a78931dcdda7a586786db9f7766acc69ccde0` |
| 25 | `lemma` | [rootForm_restrict_nondegenerate_of_isAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/rootform-restrict-nondegenerate-of-isanisotropic--02fac155c14bc1c71f898a16.md) | 279 | `result-track:02fac155c14bc1c71f898a1626cd1459eda78b5d0256e3477d79480e82940c9a` |
| 26 | `lemma` | [orthogonal_rootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/orthogonal-rootspan-eq--5d9203ef6a86aa9acd392c80.md) | 284 | `result-track:5d9203ef6a86aa9acd392c8068dcbb613608efc1abb409df58fff62f499889b5` |
| 27 | `lemma` | [orthogonal_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/orthogonal-corootspan-eq--3dab9bc4d3bacbc8ccb2dce4.md) | 296 | `result-track:3dab9bc4d3bacbc8ccb2dce466720a4aa7c0cc8ec99b450a2f74ebf96c9d760f` |
| 28 | `lemma` | [rootSpan_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/rootspan-eq-top-iff--c69340b96ef4cebda71727d6.md) | 300 | `result-track:c69340b96ef4cebda71727d62ad099f80c2a484d4d564feb449b73b95c6e7e08` |
| 29 | `instance` | [instIsAnisotropicOfLinearOrderedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/instisanisotropicoflinearorderedcommring--02cdd9de28feca0eb7326e6e.md) | 315 | `declaration-track:02cdd9de28feca0eb7326e6ed3a64226171a28382a457789c1adfe46a926bc5d` |
| 30 | `lemma` | [zero_le_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/zero-le-rootform--e86b4b2eba1e4082a993e731.md) | 318 | `result-track:e86b4b2eba1e4082a993e73198ca6f3b9ea1a16bedcf131ee9da1f182b8a2244` |
| 31 | `lemma` | [rootForm_restrict_nondegenerate_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/rootform-restrict-nondegenerate-of-ordered--fcebc9d5ce46996c7fc1a33e.md) | 323 | `result-track:fcebc9d5ce46996c7fc1a33e25d2ef89a25d900fe839db5aa3713ef1ae077fd0` |
| 32 | `lemma` | [rootForm_self_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/rootform-self-eq-zero-iff--25f7ee17521fe8ed6f74e954.md) | 328 | `result-track:25f7ee17521fe8ed6f74e95447c27c8ab7c32050641d482a2afe257d4b23fe68` |
| 33 | `lemma` | [eq_zero_of_mem_rootSpan_of_rootForm_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/eq-zero-of-mem-rootspan-of-rootform-self-eq-zero--71f17412d19ca0035c601e6f.md) | 332 | `result-track:71f17412d19ca0035c601e6f2304cb9fb138c26f74aeee0fa57fd239a0c48168` |
| 34 | `lemma` | [rootForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/rootform-pos-of-ne-zero--6e59360ebc861c282fb9142f.md) | 338 | `result-track:6e59360ebc861c282fb9142f2dd7ac0bf31144bf544362f537e371e68e465898` |
| 35 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsAnisotropic.Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.RootSystem.rootForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantc6433b6c99f56863d5c1147dc3f422a64812283a08e4fc7bd6afb642633a1e37.lean/declarations/root-grwtsk-algebra-linearalgebra-isanisotropic-variant20457a76b0211af22--f956f5a9eb3d76b472a41930.md) | 344 | `result-track:f956f5a9eb3d76b472a41930f518851e74033026f754e9870d244f9d665e0cec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
