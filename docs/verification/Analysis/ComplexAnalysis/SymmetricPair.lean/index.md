# Verification target: GRWTSK.Analysis.Complex.SymmetricPair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1061f257eb2233992c7d2bc887372ea68e1995ea",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/SymmetricPair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1061f257eb2233992c7d2bc887372ea68e1995ea`.

Source path: `GRWTSK/Analysis/Complex/SymmetricPair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/SymmetricPair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [even](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/even--919888422768233a263128ba.md) | 26 | `declaration-track:919888422768233a263128ba1959ff3478bfaf0c9441048b0b27a7db210bdce1` |
| 2 | `def` | [odd](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/odd--6e0587d1a7445221c01e03c1.md) | 29 | `declaration-track:6e0587d1a7445221c01e03c1a9814cf18932e4d54659adee97cea00e1e812bc0` |
| 3 | `theorem` | [odd_zero](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/odd-zero--e32a2767a97ed7fa697e92da.md) | 31 | `result-track:e32a2767a97ed7fa697e92dadbfa096a6643a76d477d7eabe7b7fe70cf3b8cc6` |
| 4 | `lemma` | [denominator_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/denominator-ne-zero--84b27b6755cb2545f73f72fa.md) | 33 | `result-track:84b27b6755cb2545f73f72fad95e4f4aefd4403ebb7a8f5d2ecc2d4066d17282` |
| 5 | `theorem` | [reconstruct_plus](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/reconstruct-plus--ca0730a07ba0b7535bb204dd.md) | 36 | `result-track:ca0730a07ba0b7535bb204ddb392d177905768dd04437e033d09f9c8bd7fc4c4` |
| 6 | `theorem` | [reconstruct_minus](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/reconstruct-minus--33995ec697d16be7e60b06bb.md) | 43 | `result-track:33995ec697d16be7e60b06bb54c6834e33707cad0748ce5174e6a9602afeadb6` |
| 7 | `theorem` | [endpoints_zero_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/endpoints-zero-iff--eeda6188968ee91ec76a5e80.md) | 51 | `result-track:eeda6188968ee91ec76a5e8080c81714314dcabd8fb2c3ea6ef732026e0f4bd0` |
| 8 | `lemma` | [even_sub](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/even-sub--210bdf3f8fdf977408c53221.md) | 61 | `result-track:210bdf3f8fdf977408c53221bb2818e0bf8ae0465f6c6f2a031340bacedb9406` |
| 9 | `lemma` | [odd_sub](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/odd-sub--c6f0d260edd7f5eef8445fb8.md) | 65 | `result-track:c6f0d260edd7f5eef8445fb822492f95a1adc7a46185b936253d82ee9bfe01c4` |
| 10 | `theorem` | [even_product](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/even-product--43a6fbcdc75c028461747605.md) | 70 | `result-track:43a6fbcdc75c02846174760544f09133d2018898f4585a2cd28ef00cb6520c27` |
| 11 | `theorem` | [odd_product](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/odd-product--7cf6fa1db3712416707a74b9.md) | 78 | `result-track:7cf6fa1db3712416707a74b93f11fc12e8e5330ea4e829c8939d54cca423910c` |
| 12 | `def` | [energy](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/energy--e83b677571a6105f088239b9.md) | 87 | `declaration-track:e83b677571a6105f088239b908f0cfa6d413d1bd0862df8151fd11d2a62f8829` |
| 13 | `lemma` | [parallelogram](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/parallelogram--7095638147e767341746715c.md) | 90 | `result-track:7095638147e767341746715c4024cbeebf92c05d3239d6d053843605c4a62a6d` |
| 14 | `theorem` | [energy_identity](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/energy-identity--eeda1071e4d5ab1c761b6081.md) | 96 | `result-track:eeda1071e4d5ab1c761b6081e733527cc5c5795e16e42f25a5d5a5081d5a417f` |
| 15 | `structure` | [Enclosure](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/enclosure--bb981e9438a684a6d35a0d00.md) | 104 | `declaration-track:bb981e9438a684a6d35a0d00107e9bbbcd4b365a451f428671b1f3bbf541b1e8` |
| 16 | `theorem` | [Enclosure.excludes_pair](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/enclosure-excludes-pair--acaa4e8632ef494b9e967dea.md) | 114 | `result-track:acaa4e8632ef494b9e967dea2145a3078053a8453b6614c7f288eb0d09f162bb` |
| 17 | `theorem` | [even_error_of_values](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/even-error-of-values--dbe4f3c4898c81dbc62a7cf2.md) | 132 | `result-track:dbe4f3c4898c81dbc62a7cf2c05b3a69b7911f6d6523665a36dad17d7f36cfc3` |
| 18 | `theorem` | [odd_error_of_derivatives](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/odd-error-of-derivatives--93621a652be09ebc6e35394c.md) | 144 | `result-track:93621a652be09ebc6e35394cc924483fae4b4f7e288165065e15cc90dba29c85` |
| 19 | `def` | [Enclosure.ofRegion](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/enclosure-ofregion--687dda53a2bc755b37830cc3.md) | 163 | `declaration-track:687dda53a2bc755b37830cc36d6a06a29927de1dd601e19edca738b40e4efc31` |
| 20 | `theorem` | [channel_telescope](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/channel-telescope--61028d262f490652dfd9e018.md) | 178 | `result-track:61028d262f490652dfd9e018f59a97c70825d260ebd028b4c46a9283549c6adb` |
| 21 | `theorem` | [odd_errors_vanish](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/odd-errors-vanish--467ea57e57d1138988a233e8.md) | 186 | `result-track:467ea57e57d1138988a233e872c0b009f23a3d2e6adf6f3f402f872d1572669b` |
| 22 | `def` | [pairedJet](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/pairedjet--c1058ba9487696297fec6cb8.md) | 201 | `declaration-track:c1058ba9487696297fec6cb8c731d8e1b6e648bd834d293b8122ce9fbc7e5bde` |
| 23 | `def` | [evenJet](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/evenjet--4ffa54fb8f676693af1742ff.md) | 204 | `declaration-track:4ffa54fb8f676693af1742ff18279fdf22aa3ae20633b653d5eb48513e9948b7` |
| 24 | `def` | [oddJet](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/oddjet--2af565699297dde0ef138c93.md) | 207 | `declaration-track:2af565699297dde0ef138c9360f7920a63a3f69cb34c258ce2a61be0e2c5531e` |
| 25 | `lemma` | [pairedJet_plus](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/pairedjet-plus--b33c772171f63b28130c2cac.md) | 210 | `result-track:b33c772171f63b28130c2cacfb5a5bfe7d60f4b2c122362a26913d088d09ad07` |
| 26 | `lemma` | [pairedJet_minus](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/pairedjet-minus--54a84fbaefa70d4440cc6458.md) | 220 | `result-track:54a84fbaefa70d4440cc645887f46c8fce7763836629b81eb704cb625fd0eb4e` |
| 27 | `theorem` | [pairedJet_channels](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/pairedjet-channels--7fa5da962d8ad45ce62f4780.md) | 230 | `result-track:7fa5da962d8ad45ce62f47807224d33c72fd3091e86078ce16deb23b783da17c` |
| 28 | `def` | [quadratic](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/quadratic--e089192944bb5c5a93b93630.md) | 237 | `declaration-track:e089192944bb5c5a93b93630931ea4186c7c5c64de8fdc3346ec439895b08b77` |
| 29 | `theorem` | [quadratic_channels](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/quadratic-channels--b7ab07409811df057eed05d9.md) | 239 | `result-track:b7ab07409811df057eed05d9d94d96f9a2da81e0756b89bcaf1a36a79e4250ac` |
| 30 | `theorem` | [quadratic_energy](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/declarations/quadratic-energy--1b0e8b6802ec0ed489a7a896.md) | 245 | `result-track:1b0e8b6802ec0ed489a7a896cea18083bb178c0be526e9e161190e8ba20cbb0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
