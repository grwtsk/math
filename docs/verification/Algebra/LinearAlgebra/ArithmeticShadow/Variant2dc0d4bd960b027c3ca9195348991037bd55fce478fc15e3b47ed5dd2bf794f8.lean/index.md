# Verification target: GRWTSK.Algebra.LinearAlgebra.ArithmeticShadow.Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e896e05fe3ebbbb432077a9cdceec2a75e82c2e0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e896e05fe3ebbbb432077a9cdceec2a75e82c2e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.TopologyPrime` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticShadow](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/arithmeticshadow--c9a513cd9fabdae61269dace.md) | 15 | `declaration-track:c9a513cd9fabdae61269dace1f74fbe53a00933a1c00d876ded811988a8ca7b0` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/ext--30308bcd3b556a2692ec4c24.md) | 21 | `result-track:30308bcd3b556a2692ec4c24988c220385fe6f5dd2173dd976561e91f66a766c` |
| 3 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/zero--b52c8499c203376468f52202.md) | 34 | `declaration-track:b52c8499c203376468f522022c1603577edebbebb8aed1ecc489360566e844a5` |
| 4 | `def` | [singleton](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/singleton--82fa5bc051f33262c0ee48ac.md) | 37 | `declaration-track:82fa5bc051f33262c0ee48ac7e82998156593a8e150f149c7e01f0a78b6565bb` |
| 5 | `def` | [add](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/add--fb460441385941ec5bc6edbc.md) | 41 | `declaration-track:fb460441385941ec5bc6edbc783c311d33a18f3116a9328736f04d6394b8add5` |
| 6 | `def` | [arithmeticShadowCore](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/arithmeticshadowcore--fa3a72da891425f332a55c7c.md) | 46 | `declaration-track:fa3a72da891425f332a55c7cbc0917900442853fbf21efe7def10f20b66500ba` |
| 7 | `def` | [arithmeticShadow](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/arithmeticshadow--939b41852369d8c555c31dad.md) | 52 | `declaration-track:939b41852369d8c555c31dad193dace8b049c70d27552aa415c05e4772363f3a` |
| 8 | `theorem` | [arithmeticShadow_multiplicative_under_compose](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/arithmeticshadow-multiplicative-under-compose--3dfc4d574308defd51f8c93d.md) | 57 | `result-track:3dfc4d574308defd51f8c93d4d9ed903716eb233178757b835a06e5ca8b83845` |
| 9 | `theorem` | [arithmeticShadow_unique_factorization](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/arithmeticshadow-unique-factorization--7439ad8411a7ac43cd58452f.md) | 63 | `result-track:7439ad8411a7ac43cd58452fd35237feda51e6c9b6b51a0fcfc2af16d5e8ee9d` |
| 10 | `theorem` | [arithmeticShadow_forgets_bracketing](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variant2dc0d4bd960b027c3ca9195348991037bd55fce478fc15e3b47ed5dd2bf794f8.lean/declarations/arithmeticshadow-forgets-bracketing--42d7d5b649a091b44d7ae0e0.md) | 76 | `result-track:42d7d5b649a091b44d7ae0e073fb5b48a0362828b1bfbd15363d6e13336356c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
