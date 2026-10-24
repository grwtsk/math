# Verification target: GRWTSK.Algebra.GroupTheory.Quantale.Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c903d415b1a3b7422c4795ed94fc01238e83fde",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c903d415b1a3b7422c4795ed94fc01238e83fde`.

Source path: `GRWTSK/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Variable` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddQuantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/isaddquantale--0f89964ff052f4721d4fa434.md) | 63 | `declaration-track:0f89964ff052f4721d4fa434acc7a444d21cf74a575facb580b64f7f9daf510d` |
| 2 | `structure` | [AddQuantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/addquantale--1c74f7c19fc2809cb3545c47.md) | 71 | `declaration-track:1c74f7c19fc2809cb3545c476c737142dbed3a2cf464c06515f725da58a7341b` |
| 3 | `class` | [IsQuantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/isquantale--c827f825a2cd49556b8ae07e.md) | 76 | `declaration-track:c827f825a2cd49556b8ae07eee24b48dd9a8ca86020fb1c611044e6fb99bb2e5` |
| 4 | `structure` | [Quantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/quantale--9af9d855971f27980842f10f.md) | 84 | `declaration-track:9af9d855971f27980842f10f48f08227db02072be40739306f16d753f1c2c96e` |
| 5 | `theorem` | [mul_sSup_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/mul-ssup-distrib--ac6d14c3dea9749e3837e24a.md) | 93 | `result-track:ac6d14c3dea9749e3837e24a9409e157c07a3f92b0c3a02f1a1cb9471ad97a63` |
| 6 | `theorem` | [sSup_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/ssup-mul-distrib--d6b3a38a7ae879e14c84139b.md) | 96 | `result-track:d6b3a38a7ae879e14c84139be06a8bea792157e3d9f21b61fcb940f9ef9a5eab` |
| 7 | `def` | [leftAddResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/leftaddresiduation--b1fd1aa333cc353275dc2b81.md) | 108 | `declaration-track:b1fd1aa333cc353275dc2b81d924d1eac6651c8db853a532be5315c41ddaa81c` |
| 8 | `def` | [rightAddResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/rightaddresiduation--8b647b9b49b8045a727676e3.md) | 113 | `declaration-track:8b647b9b49b8045a727676e38e031c583a53fe836565199e3c9c040c1f2509cc` |
| 9 | `def` | [leftMulResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/leftmulresiduation--25df6f986320d28709f0f86d.md) | 133 | `declaration-track:25df6f986320d28709f0f86d8e624657b818018b0298553e5b6a037581c54847` |
| 10 | `def` | [rightMulResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/rightmulresiduation--42e078c405227ead35443b96.md) | 140 | `declaration-track:42e078c405227ead35443b96b75b6c9974a12fac177412d7e473db1cab84f05f` |
| 11 | `theorem` | [mul_iSup_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/mul-isup-distrib--30eeb2fa681b3103d66a4341.md) | 149 | `result-track:30eeb2fa681b3103d66a4341883d3f85e54ce7d0c7a08844f4eaa60860894e8d` |
| 12 | `theorem` | [iSup_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/isup-mul-distrib--d94820dac42a0859940ce925.md) | 153 | `result-track:d94820dac42a0859940ce925a4f83ca01b652004697c5bf90fa12fedd32b43c8` |
| 13 | `theorem` | [mul_sup_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/mul-sup-distrib--ed7338d9158e3d4679277b07.md) | 157 | `result-track:ed7338d9158e3d4679277b07f9722e199d2cf25e5adea66b2e77c0c6ab3cee27` |
| 14 | `theorem` | [sup_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/sup-mul-distrib--98c4b10a278a9faf0538cd61.md) | 161 | `result-track:98c4b10a278a9faf0538cd61941907491b3a82a8e47718be93a6ff31cf540067` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/instance--ffd5033da992623d0cc667c1.md) | 165 | `declaration-track:ffd5033da992623d0cc667c11f2e8d88fcb29aea5f10ba5ce70a4af0d3980443` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/instance--205c6e21099fbdc47f24c0f7.md) | 171 | `declaration-track:205c6e21099fbdc47f24c0f714581f73a2ec3ea10e553fff82519cb1739e01be` |
| 17 | `theorem` | [leftMulResiduation_le_iff_mul_le](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/leftmulresiduation-le-iff-mul-le--4a172c1eb74d4f356a03f716.md) | 177 | `result-track:4a172c1eb74d4f356a03f716473f60ae7b5c54eed2aab27f1a0816c9a155566d` |
| 18 | `theorem` | [rightMulResiduation_le_iff_mul_le](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/rightmulresiduation-le-iff-mul-le--73802ac36d314e6f18d51941.md) | 185 | `result-track:73802ac36d314e6f18d51941e9236f8595a9d81b8c475b3be7852245363b4bfc` |
| 19 | `theorem` | [bot_mul](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/bot-mul--a300520564b92017b0441017.md) | 198 | `result-track:a300520564b92017b0441017597264f258a735e2eb1550999137afd6412b0b9c` |
| 20 | `theorem` | [mul_bot](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant9e6deda67b1ba8c7a7bd7ea8b419cb6c07a6655596e0bb0fb274650f6aa36016.lean/declarations/mul-bot--dc1de296c20c49d2380e52d1.md) | 203 | `result-track:dc1de296c20c49d2380e52d116e3fd91d4a98308847d101c0d50a9814adf99eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
