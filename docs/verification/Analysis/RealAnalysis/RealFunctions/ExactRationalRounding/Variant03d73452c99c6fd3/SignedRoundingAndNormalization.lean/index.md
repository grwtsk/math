# Verification target: GRWTSK.Analysis.RealAnalysis.RealFunctions.ExactRationalRounding.Variant03d73452c99c6fd3.SignedRoundingAndNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "201ec1edefe87aef531ed47a39063015aeb278ba",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `201ec1edefe87aef531ed47a39063015aeb278ba`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RasterRounding](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/rasterrounding--b7679a7cee4a7c873a4e14ad.md) | 43 | `declaration-track:b7679a7cee4a7c873a4e14ad3587cdc44f50e15f47a0e649147d55c060124b48` |
| 2 | `def` | [RasterRounding.round](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/rasterrounding-round--cd7c9df6e149e0c493cda1fb.md) | 52 | `declaration-track:cd7c9df6e149e0c493cda1fbe97d0ee4765cfee6ef230a0c8aa4339023fe5a2d` |
| 3 | `theorem` | [round_positive_tie](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/round-positive-tie--f4d55dd49d21ac4c00b61c0c.md) | 57 | `result-track:f4d55dd49d21ac4c00b61c0c163459bb863ccbc4d7aeabcdbddcec53955a46a3` |
| 4 | `theorem` | [round_negative_tie](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/round-negative-tie--a7bed92816a9115f86da85cc.md) | 64 | `result-track:a7bed92816a9115f86da85cca44d48f78b08f76762151c56825e60b93b9f5d44` |
| 5 | `theorem` | [round_zero](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/round-zero--863202630f3867a1702f2ebb.md) | 71 | `result-track:863202630f3867a1702f2ebb5444278fdde528fe7a90e5353b40f60448db1c10` |
| 6 | `structure` | [SignedInteger](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/signedinteger--744675b44fe540b0b4e8c59f.md) | 81 | `declaration-track:744675b44fe540b0b4e8c59f3849db7b019cd3d0d63f68154c7b2102fec24dc1` |
| 7 | `def` | [RasterRounding.roundSigned](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/rasterrounding-roundsigned--72bf41e4112fa54e48f1b6aa.md) | 90 | `declaration-track:72bf41e4112fa54e48f1b6aae23b943c458b22f9fd36d496b81b4e8d1cf59704` |
| 8 | `theorem` | [RasterRounding.roundSigned_value](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/rasterrounding-roundsigned-value--72968fd30b63a4ebc8ba282c.md) | 106 | `result-track:72968fd30b63a4ebc8ba282c41b9a3f3776112c1e06c8114f44097e298769bc9` |
| 9 | `theorem` | [roundSigned_negative_tie_value](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/roundsigned-negative-tie-value--ee0372736ced6f9de1f82ea1.md) | 117 | `result-track:ee0372736ced6f9de1f82ea10c6b959316759238c79cf7bfa12e48004500f37c` |
| 10 | `theorem` | [roundSigned_negative_tie_sign](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/roundsigned-negative-tie-sign--5f192b4956a4a618683878d7.md) | 121 | `result-track:5f192b4956a4a618683878d7988c90c79c8d0de7ca036e63c73ad40e0141f81f` |
| 11 | `theorem` | [roundSigned_positive_tie_sign](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/roundsigned-positive-tie-sign--314b9dfd872ce5047ed1ba8d.md) | 126 | `result-track:314b9dfd872ce5047ed1ba8d51c56719bff9cbf27791d2c81d16326b85d1eaf4` |
| 12 | `inductive` | [AxisDirection](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/axisdirection--a34a1a3c7d7bf7c43934b964.md) | 132 | `declaration-track:a34a1a3c7d7bf7c43934b964730499ec963c555244d8ce0a656ad58bf4efe7c8` |
| 13 | `structure` | [SignedRational](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/signedrational--8d64a019a6a28b4d32cc72aa.md) | 138 | `declaration-track:8d64a019a6a28b4d32cc72aa14b5810d8de1d6953d00f2dab190cf9d4e3a300e` |
| 14 | `def` | [normalizeSignedInteger](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/normalizesignedinteger--cb83556978e6ecba90b08007.md) | 144 | `declaration-track:cb83556978e6ecba90b080074217f82d1a6c505b9217e382b60694c398e625bd` |
| 15 | `def` | [normalizeSignedRasterCoordinate](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/normalizesignedrastercoordinate--02edcb32ca3ed89037f3103c.md) | 162 | `declaration-track:02edcb32ca3ed89037f3103c73eefe20f7e231ee3ede03073af51b260e80f2ab` |
| 16 | `theorem` | [normalizeSigned_negative_tie_value](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/normalizesigned-negative-tie-value--5c4148cc2c8b6ca0f4408243.md) | 167 | `result-track:5c4148cc2c8b6ca0f44082437cfaa275ec26713b5b72f7a338e35ee7b89c22eb` |
| 17 | `theorem` | [normalizeSigned_negative_tie_sign](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/normalizesigned-negative-tie-sign--692b392e065cfb0a2268730d.md) | 172 | `result-track:692b392e065cfb0a2268730d5e0e8c289af3ae330d568805d6b49bc598e74925` |
| 18 | `theorem` | [normalizeSigned_negative_tie_decreasing](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/normalizesigned-negative-tie-decreasing--a9bf7a35a690a149c876294e.md) | 177 | `result-track:a9bf7a35a690a149c876294ebffe9ab0905aa7b86f52c69177e10f6471f8a3fc` |
| 19 | `def` | [normalizeRasterCoordinate](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/normalizerastercoordinate--3a8bcb3d07827b437e9fd002.md) | 187 | `declaration-track:3a8bcb3d07827b437e9fd002f6c421548f4875bd6c4321fca91a1909f9a5e388` |
| 20 | `theorem` | [normalizeRasterCoordinate_decreasing](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/normalizerastercoordinate-decreasing--312bc9bf0291ec42f68671b5.md) | 194 | `result-track:312bc9bf0291ec42f68671b58f0d29f86407f7d624d1291dd363a38f99e69c1c` |
| 21 | `inductive` | [RoundingScalarSign](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/roundingscalarsign--23a1c3af0572ef015c9f61eb.md) | 201 | `declaration-track:23a1c3af0572ef015c9f61eb75291fb2c9873f87f3a905ddffb3c361705550e9` |
| 22 | `def` | [roundingScalarSign](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/roundingscalarsign--fd10e67fe98d3d3cb54e932d.md) | 207 | `declaration-track:fd10e67fe98d3d3cb54e932d3cf141a36ff609aaa126208b6f7e70235f76b1f9` |
| 23 | `theorem` | [roundingScalarSign_zero](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/declarations/roundingscalarsign-zero--4c04f0d972481dabbaefc11d.md) | 210 | `result-track:4c04f0d972481dabbaefc11da6a000cd5791876f76237a72529cb107b1c68eb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
