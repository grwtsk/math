# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec2564e4b4f834ded91f89d732687abdfc249a9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec2564e4b4f834ded91f89d732687abdfc249a9`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow`](../../../../mathematics/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachSingularPairBox](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingularpairbox--d1169d4cb8b8cc952510fcaf.md) | 36 | `declaration-track:d1169d4cb8b8cc952510fcaf1081a73b84dabdd908a41a9e29bcf6f61b1f6941` |
| 2 | `theorem` | [mem_goldbachSingularPairBox](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/mem-goldbachsingularpairbox--1b2d8d9b6e44212959fd5788.md) | 40 | `result-track:1b2d8d9b6e44212959fd5788c01dd0cb59ca8df1e4769b9c8df94a00f07c7109` |
| 3 | `def` | [goldbachSingularPairFrequency](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingularpairfrequency--44c26ec6f64a10fdee837b62.md) | 47 | `declaration-track:44c26ec6f64a10fdee837b62bb5702b43dc340384f989e9b45d4429cf37198ef` |
| 4 | `def` | [goldbachSingularDiagonalPairs](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingulardiagonalpairs--d39ef8cccfbbcb245775d004.md) | 52 | `declaration-track:d39ef8cccfbbcb245775d00413944e957fe7e4d42fb6553f9fd045d35e9e21d5` |
| 5 | `def` | [goldbachSingularOffDiagonalPairs](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingularoffdiagonalpairs--32694b2070d0ecc42145cea0.md) | 56 | `declaration-track:32694b2070d0ecc42145cea064907bba3072d147061297fb3ab2b1d4ec1fce66` |
| 6 | `theorem` | [mem_goldbachSingularDiagonalPairs](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/mem-goldbachsingulardiagonalpairs--9dfb8a7e14ed5d74adc7030f.md) | 60 | `result-track:9dfb8a7e14ed5d74adc7030f0c542314fefa2a6de0f9305afac6af9b47977f6c` |
| 7 | `theorem` | [goldbachSingularDiagonalPairs_subset_pairBox](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingulardiagonalpairs-subset-pairbox--34f355db777ef2314b4db6fd.md) | 66 | `result-track:34f355db777ef2314b4db6fdf026358f67bc81fc01eeb87e976e2147a42a1555` |
| 8 | `theorem` | [mem_goldbachSingularOffDiagonalPairs](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/mem-goldbachsingularoffdiagonalpairs--4a780492e9c0eafd21739042.md) | 78 | `result-track:4a780492e9c0eafd21739042ea266a26b9b5183b9198dfefde6da1f70d52a3df` |
| 9 | `theorem` | [goldbachSingularPairFrequency_eq_zero_iff](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingularpairfrequency-eq-zero-iff--1a373372d01132fb12478079.md) | 88 | `result-track:1a373372d01132fb12478079933c96ca82bbe68558841b9e6fbfff546ac3b363` |
| 10 | `theorem` | [goldbachSingularPairFrequency_ne_zero_of_offDiagonal](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingularpairfrequency-ne-zero-of-offdiagonal--813a4506f4bc3627528a34e3.md) | 97 | `result-track:813a4506f4bc3627528a34e36ba6492ebe6334bec9d7a35cfb2e879aa437c1d6` |
| 11 | `theorem` | [card_goldbachSingularPairBox](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/card-goldbachsingularpairbox--c60ca564596732025fe2ae59.md) | 110 | `result-track:c60ca564596732025fe2ae5939ae19e947296ad8048308a5da667a01c50233b5` |
| 12 | `theorem` | [card_goldbachSingularDiagonalPairs](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/card-goldbachsingulardiagonalpairs--618e09dfd15fecceaebb92c9.md) | 115 | `result-track:618e09dfd15fecceaebb92c9774c321a8ba91a09133f5ef0a5bfd2800267c694` |
| 13 | `theorem` | [card_goldbachSingularOffDiagonalPairs](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/card-goldbachsingularoffdiagonalpairs--d8d29baaf498171748f27eec.md) | 120 | `result-track:d8d29baaf498171748f27eec6f1c88ffb54b8cd93dee97171648e4fb9d16262e` |
| 14 | `theorem` | [goldbachFiniteSingularKernel_eq_pairSum](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachfinitesingularkernel-eq-pairsum--453795969dcbe3e478ce7a88.md) | 132 | `result-track:453795969dcbe3e478ce7a88e659b3f6ca66149c995dd8837e46090fc6cbc049` |
| 15 | `theorem` | [goldbachSingularPairBox_eq_diagonal_union_offDiagonal](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingularpairbox-eq-diagonal-union-offdiagonal--584dea45f4b084dcabaf9b5b.md) | 153 | `result-track:584dea45f4b084dcabaf9b5b7623fa769e1b657b282dcc5b8f55e91ebffdacc3` |
| 16 | `theorem` | [goldbachSingularDiagonalPairs_disjoint_offDiagonal](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingulardiagonalpairs-disjoint-offdiagonal--56014d659dcf1ef51daaeca8.md) | 163 | `result-track:56014d659dcf1ef51daaeca8af5bc10f0eaf28ec7e3d46fcbe905e1fff42ff05` |
| 17 | `theorem` | [goldbachSingularDiagonalCharacterSum](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachsingulardiagonalcharactersum--7f1593c3f6d234376b7936ed.md) | 171 | `result-track:7f1593c3f6d234376b7936edeef84900544a565b5043ef65b6651f35b62de34b` |
| 18 | `theorem` | [goldbachFiniteSingularKernel_eq_diagonal_add_offDiagonal](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/declarations/goldbachfinitesingularkernel-eq-diagonal-add-offdiagonal--0d3125041eae9ff98d5657e9.md) | 194 | `result-track:0d3125041eae9ff98d5657e92f593b41dde9e43a1e116f0db9f2f182120ba456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
