# Verification target: GRWTSK.NumberTheory.CenteredVaughan.Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27f4b5bcf5beccc935e69dfab65fe48248140dfe",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27f4b5bcf5beccc935e69dfab65fe48248140dfe`.

Source path: `GRWTSK/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredMangoldt](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/centeredmangoldt--427a7728241efae0717c42ab.md) | 26 | `declaration-track:427a7728241efae0717c42abd411a48596151465ff278dd71c2247fb6ea04c2c` |
| 2 | `theorem` | [centeredMangoldt_one](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/centeredmangoldt-one--243fdaadba318d725a2cc98b.md) | 28 | `result-track:243fdaadba318d725a2cc98bbd987adf7be9b3283e4ad61ded6fa87b4da96ca4` |
| 3 | `theorem` | [centeredMangoldt_apply](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/centeredmangoldt-apply--6b8938adafdbbfa9743f9e98.md) | 33 | `result-track:6b8938adafdbbfa9743f9e98d75c63c229a876a8ab935cdcaeec871f99d65b8c` |
| 4 | `def` | [lowPart](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/lowpart--7bf0bc53f75e5fcca72a268d.md) | 43 | `declaration-track:7bf0bc53f75e5fcca72a268dc2b44a08709da4bc1c45eac47f351a7b21719d29` |
| 5 | `def` | [highPart](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/highpart--8483389438b72562697e4616.md) | 46 | `declaration-track:8483389438b72562697e46167f2dfc8f11124979e09bd916ec728ebfe20ed543` |
| 6 | `theorem` | [low_add_high](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/low-add-high--a26e78db5721eaf6bb04b167.md) | 48 | `result-track:a26e78db5721eaf6bb04b167e2f09f17cb02daca6ac2ef905534b7b2884e1416` |
| 7 | `theorem` | [four_port_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/four-port-identity--01dff6c03cc185d4803987bc.md) | 52 | `result-track:01dff6c03cc185d4803987bceba54ed16c10ef2ac346a4e4ba4eba35873b3197` |
| 8 | `theorem` | [actual_vaughan_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/actual-vaughan-identity--87ae1b1bb415f9e654744aa1.md) | 60 | `result-track:87ae1b1bb415f9e654744aa1828648ba7f2c1e8c55c2c3672cdbf20f0e0743fd` |
| 9 | `theorem` | [balanced_vaughan_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/balanced-vaughan-identity--c3d577414278812d3b5c7343.md) | 69 | `result-track:c3d577414278812d3b5c7343570026fe88b35b08b8f8f6855f38f8a4ebe3abf8` |
| 10 | `theorem` | [centered_divisor_identity](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/centered-divisor-identity--d5bd4e1d41ea0758e682052a.md) | 79 | `result-track:d5bd4e1d41ea0758e682052a83160ce4662212703d314462822a72aed49b6014` |
| 11 | `theorem` | [gauge_transfer](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/gauge-transfer--734e09f5d7df0e9b615d8e97.md) | 91 | `result-track:734e09f5d7df0e9b615d8e971c3a704577ddc4c36e39c6259734444aa58e1c2f` |
| 12 | `theorem` | [raw_residue_sum](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/raw-residue-sum--99f9482ce92e6d21e98830e4.md) | 95 | `result-track:99f9482ce92e6d21e98830e479ec82b2a4736be357a2cba93d8e4e1217e3eaca` |
| 13 | `theorem` | [unit_jet_allocation](../../../../mathematics/NumberTheory/CenteredVaughan/Variantaac8d6f38485e9ec98052cf2041709fa307ff089e331b28b0dafce7d0ef0fc28.lean/declarations/unit-jet-allocation--d900dcd4113d8cfc5eae06dd.md) | 99 | `result-track:d900dcd4113d8cfc5eae06dd55d341c7896874957090466e3cc03fc0c2c489b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
