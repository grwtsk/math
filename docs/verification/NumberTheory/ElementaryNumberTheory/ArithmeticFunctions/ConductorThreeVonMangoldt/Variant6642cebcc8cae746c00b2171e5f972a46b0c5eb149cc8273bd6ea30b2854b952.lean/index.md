# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeVonMangoldt.Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d39b0e2f3cd2c82b04298089c9b1b70a72633a6c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d39b0e2f3cd2c82b04298089c9b1b70a72633a6c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twistedVonMangoldtThree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/twistedvonmangoldtthree--2b827dd269d7b8e6731bc363.md) | 40 | `declaration-track:2b827dd269d7b8e6731bc363b513fdb49123981a6d2ca7b1714d9abb66a6f0c5` |
| 2 | `def` | [conductorThreePsi](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/conductorthreepsi--285cc589fe79f3adea19879b.md) | 47 | `declaration-track:285cc589fe79f3adea19879b603cbbdb328aad1da33ae9e3e65afc7a3158593e` |
| 3 | `theorem` | [twistedVonMangoldtThree_mod_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/twistedvonmangoldtthree-mod-zero--de73f7c7dcbda913a6ae40b9.md) | 51 | `result-track:de73f7c7dcbda913a6ae40b9d9a3e4caabda4480a89420a7e28fc7d1b6f4bc78` |
| 4 | `theorem` | [twistedVonMangoldtThree_mod_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/twistedvonmangoldtthree-mod-one--abcb14651c073c99b38e7820.md) | 57 | `result-track:abcb14651c073c99b38e78206a11598421fe84ea24a16a10cfb14f59aa92d7bc` |
| 5 | `theorem` | [twistedVonMangoldtThree_mod_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/twistedvonmangoldtthree-mod-two--6de4aff2f4489169373129f7.md) | 63 | `result-track:6de4aff2f4489169373129f7909d9646d4821b4ab904e82b262427b8b9e0bdc9` |
| 6 | `theorem` | [twistedVonMangoldtThree_eq_residue_difference](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/twistedvonmangoldtthree-eq-residue-difference--8e32ac676f21f2c50f977c8a.md) | 71 | `result-track:8e32ac676f21f2c50f977c8a0e8f6f94a5bde1e91299e52fdfb259ba642a3a89` |
| 7 | `def` | [residueVonMangoldtThree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/residuevonmangoldtthree--d88309118f13370fc41a18fb.md) | 81 | `declaration-track:d88309118f13370fc41a18fbf801939136b56373cd75a69b4bef9b453aaffd58` |
| 8 | `theorem` | [conductorThreePsi_eq_residue_difference](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/conductorthreepsi-eq-residue-difference--6af0a2709f2313ae7220648c.md) | 87 | `result-track:6af0a2709f2313ae7220648c562c267d2d355526b2aa481a3f98db86ca8d19d5` |
| 9 | `def` | [conductorThreePsiComplex](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/conductorthreepsicomplex--9bc127fe53f676247d48e58e.md) | 97 | `declaration-track:9bc127fe53f676247d48e58ea846bd9847948f33ea625b1865c4951206f7916a` |
| 10 | `theorem` | [conductorThreePsiComplex_eq_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant6642cebcc8cae746c00b2171e5f972a46b0c5eb149cc8273bd6ea30b2854b952.lean/declarations/conductorthreepsicomplex-eq-real--9b630b357bcd67281c4e1deb.md) | 103 | `result-track:9b630b357bcd67281c4e1deb616dfae2faa66965fceb2586b005691871446d11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
