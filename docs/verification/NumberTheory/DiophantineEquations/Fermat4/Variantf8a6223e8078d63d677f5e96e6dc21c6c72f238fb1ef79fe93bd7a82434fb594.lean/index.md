# Verification target: GRWTSK.NumberTheory.DiophantineEquations.Fermat4.Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5d02812a54e9265ede7657a1ab72565b0c817d2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5d02812a54e9265ede7657a1ab72565b0c817d2`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.PythagoreanTriples` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fermat42](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/fermat42--023f500daec9cf45a905472d.md) | 25 | `declaration-track:023f500daec9cf45a905472dd4b3a1692a81e40361bfb20f2da04677500d008d` |
| 2 | `theorem` | [comm](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/comm--0296487ca70b5da480361bc9.md) | 31 | `result-track:0296487ca70b5da480361bc997177d09f04307ec4257ee1cf86ef591015ee42b` |
| 3 | `theorem` | [mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/mul--883569c7f5a389ccaafdee83.md) | 37 | `result-track:883569c7f5a389ccaafdee83cb01066f11b1d3a231acedc1407d2ca05e3b4ac5` |
| 4 | `theorem` | [ne_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/ne-zero--867a79ab306c3984a5c3510f.md) | 57 | `result-track:867a79ab306c3984a5c3510f1407abe40564ebd48d6fc9e030d8e52a27b51c65` |
| 5 | `def` | [Minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/minimal--b9a7f73f3acbaae48b8c8896.md) | 66 | `declaration-track:b9a7f73f3acbaae48b8c8896a3a64babfd948e5f8c2b5c38986b034ee203ff23` |
| 6 | `theorem` | [exists_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/exists-minimal--c97bc313c869534cecda4cd3.md) | 71 | `result-track:c97bc313c869534cecda4cd369dae14df3cbe671d7899e7e726d18a4add9cf9a` |
| 7 | `theorem` | [coprime_of_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/coprime-of-minimal--105745aa4669597672ac5a56.md) | 88 | `result-track:105745aa4669597672ac5a56e2438a69aca0e080666ec952a1e595cf6b415886` |
| 8 | `theorem` | [minimal_comm](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/minimal-comm--7d4d499483882588dcf7f620.md) | 108 | `result-track:7d4d499483882588dcf7f6203f24949fe56cccae37adccbfff1902e1440af123` |
| 9 | `theorem` | [neg_of_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/neg-of-minimal--d44763760f2cad100b39f6c0.md) | 113 | `result-track:d44763760f2cad100b39f6c0ba986c05c27fe4425435270591e7f8f669643d90` |
| 10 | `theorem` | [exists_odd_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/exists-odd-minimal--358f08ed7f27d26ca4e0fd11.md) | 123 | `result-track:358f08ed7f27d26ca4e0fd116ba7e4383eb26e5c9d5fc7fad1e8787bfbd0fdaa` |
| 11 | `theorem` | [exists_pos_odd_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/exists-pos-odd-minimal--668d1147d85c6b8b4b769033.md) | 140 | `result-track:668d1147d85c6b8b4b769033539c0e08133ffe67c0af6cfed159d6d91f0c4b6b` |
| 12 | `theorem` | [Int.coprime_of_sq_sum](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/int-coprime-of-sq-sum--1ffa374bbe9f8ca6d063b637.md) | 153 | `result-track:1ffa374bbe9f8ca6d063b637c6e13d76da7df6ac4fcd388e31b43fa1789ad16b` |
| 13 | `theorem` | [Int.coprime_of_sq_sum'](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/int-coprime-of-sq-sum--010b52b78be718044b1263ad.md) | 158 | `result-track:010b52b78be718044b1263adbedcc0b893ef28c06a68b61daf801f734ace86f5` |
| 14 | `theorem` | [not_minimal](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/not-minimal--3a3005aac862e7ae53d8339b.md) | 168 | `result-track:3a3005aac862e7ae53d8339b0c93602a1fe89cf1a664b67a9824bc636d02e877` |
| 15 | `theorem` | [not_fermat_42](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/not-fermat-42--8a1d6c64603e3f720c01abff.md) | 300 | `result-track:8a1d6c64603e3f720c01abffa28f102edbbee9fdd412bbaf3792647ff2ff44aa` |
| 16 | `theorem` | [not_fermat_4](../../../../../mathematics/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/declarations/not-fermat-4--496f89f16bead30676d63e22.md) | 307 | `result-track:496f89f16bead30676d63e22a8d1ea9516b3d4a6508f7d1003be4ea1659f2d81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
