# Verification target: GRWTSK.NumberTheory.FractionalIdeal.Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cdd27f1039b9bba85540074034af8587e91420f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cdd27f1039b9bba85540074034af8587e91420f`.

Source path: `GRWTSK/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FractionalIdeal.Norm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FractionalIdeal.Operations` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/instance--196678c8cec2bd8598f961a0.md) | 46 | `declaration-track:196678c8cec2bd8598f961a0d7585d5bc04f798738148ba08d21e2ef3e23f07e` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/instance--97b5bfd351f6ddc47146b2f5.md) | 50 | `declaration-track:97b5bfd351f6ddc47146b2f5260a7a97b46bdbe156cbfbae3e98bbe5bf0d39a9` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/instance--21b588152eb90693918f4634.md) | 55 | `declaration-track:21b588152eb90693918f46348978ccd493a2e2234846c770ea23ea1b84faa081` |
| 4 | `def` | [fractionalIdealBasis](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/fractionalidealbasis--e0fbaabca15be0e31b2d0d89.md) | 81 | `declaration-track:e0fbaabca15be0e31b2d0d89832231a7c6f842004efd4e1a89d4075f657f0989` |
| 5 | `def` | [basisOfFractionalIdeal](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/basisoffractionalideal--2a2c13cb9f0c43ad64aee85b.md) | 85 | `declaration-track:2a2c13cb9f0c43ad64aee85b996e26982c64300dccdfb2f61339135463a7c4b9` |
| 6 | `theorem` | [basisOfFractionalIdeal_apply](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/basisoffractionalideal-apply--3c44fdd26ef0b2baaaba60d0.md) | 90 | `result-track:3c44fdd26ef0b2baaaba60d0c8c0711eb8c4334013b81cfdb1760df6029dea78` |
| 7 | `theorem` | [mem_span_basisOfFractionalIdeal](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/mem-span-basisoffractionalideal--a6a4399c58d88d725b613b68.md) | 95 | `result-track:a6a4399c58d88d725b613b6877dc7cdd0bac22b3e2467eaaf783a7f97c4e747a` |
| 8 | `theorem` | [fractionalIdeal_rank](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/fractionalideal-rank--acf022744da9097199c7871c.md) | 101 | `result-track:acf022744da9097199c7871c968cadfd27fd55c23eefedeb216332a80b711fdf` |
| 9 | `theorem` | [det_basisOfFractionalIdeal_eq_absNorm](../../../../mathematics/NumberTheory/FractionalIdeal/Variantc0ea81c1586915943de2e44cddfd059026b9746c1b7b13a03b61ff43ea23b569.lean/declarations/det-basisoffractionalideal-eq-absnorm--deb13e291f9ca1fe2e033f38.md) | 114 | `result-track:deb13e291f9ca1fe2e033f38a6c6c4aefce2fec60cfb8994b503fd88867fd038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
