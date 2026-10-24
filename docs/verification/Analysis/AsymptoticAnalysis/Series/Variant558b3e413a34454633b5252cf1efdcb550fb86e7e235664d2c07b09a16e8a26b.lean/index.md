# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "548323bcdb8860aa576640abde9136cfb5b9bd5c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `548323bcdb8860aa576640abde9136cfb5b9bd5c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Trigonometric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.hasSum_cos'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-hassum-cos--ca62ebf9b9c61ed0fd5d076e.md) | 31 | `result-track:ca62ebf9b9c61ed0fd5d076e823225102caf15958cf1a15530d65a55e6f08e44` |
| 2 | `theorem` | [Complex.hasSum_sin'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-hassum-sin--9e3ebdf17384dbcf7e5fa8ba.md) | 47 | `result-track:9e3ebdf17384dbcf7e5fa8ba19f53695582e22f908be89b1f3d965ad80f64ec0` |
| 3 | `theorem` | [Complex.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-hassum-cos--3ef7b617b331a256e30684e7.md) | 65 | `result-track:3ef7b617b331a256e30684e74b8ad9e329af79adcb5a21190b8606b255322c12` |
| 4 | `theorem` | [Complex.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-hassum-sin--79cf5e0fb44cbf47bbc03b6b.md) | 71 | `result-track:79cf5e0fb44cbf47bbc03b6b96e4e1b49ce0bdc17c1c38b247e9b40dcda27029` |
| 5 | `theorem` | [Complex.cos_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-cos-eq-tsum--370018b1ce4d1b1f7ae0d8fc.md) | 77 | `result-track:370018b1ce4d1b1f7ae0d8fc97653fb0d7fb24520927695c3bb4d805d13d7118` |
| 6 | `theorem` | [Complex.sin_eq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-sin-eq-tsum--581b3bb8543259a58cc886c9.md) | 81 | `result-track:581b3bb8543259a58cc886c9463a7d069c5bce97a174cb367f38cd72a725e91b` |
| 7 | `theorem` | [Complex.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-cos-eq-tsum--a764169aa15e4cf50006e2ca.md) | 85 | `result-track:a764169aa15e4cf50006e2cad517ed0b0364019c35b7a65648cee5559045ab1d` |
| 8 | `theorem` | [Complex.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/complex-sin-eq-tsum--c34408f8f5fcd1bc14ffb7a8.md) | 89 | `result-track:c34408f8f5fcd1bc14ffb7a8c3fc5829b80ae005cf5f53842be32d4087eb478c` |
| 9 | `theorem` | [Real.hasSum_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/real-hassum-cos--83a8d8643045ffbc15d3f6c4.md) | 94 | `result-track:83a8d8643045ffbc15d3f6c4ae5b47bbbc493bfc7407e1102120f607d4f9640e` |
| 10 | `theorem` | [Real.hasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/real-hassum-sin--c5d02ca583e66321c3919616.md) | 99 | `result-track:c5d02ca583e66321c3919616695e3e38572a14b807d43d141b9021e2b353c2ed` |
| 11 | `theorem` | [Real.cos_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/real-cos-eq-tsum--e3c21447f0649eb4c55ad717.md) | 103 | `result-track:e3c21447f0649eb4c55ad717211c6119fd1fbac7bd2904036d63842458838998` |
| 12 | `theorem` | [Real.sin_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/real-sin-eq-tsum--11d782da0e2abf29d5c159a7.md) | 106 | `result-track:11d782da0e2abf29d5c159a7a124979d20799ad1e2cffdb4a709bf33f8dabea0` |
| 13 | `lemma` | [hasSum_cosh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/hassum-cosh--5b77fc86015a9d50a49c2dd5.md) | 118 | `result-track:5b77fc86015a9d50a49c2dd5982a557c5813da45f45fd006bb9f6c2adb856d8c` |
| 14 | `lemma` | [hasSum_sinh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/hassum-sinh--a7b5230c41ee72adb479ba23.md) | 122 | `result-track:a7b5230c41ee72adb479ba23332f06cf19e4e05c580f03a285e5868e8368422a` |
| 15 | `lemma` | [cosh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/cosh-eq-tsum--8fcdf7a5a35ec640b1d2e0ab.md) | 126 | `result-track:8fcdf7a5a35ec640b1d2e0ab00b65087589333e65281fe83e6d60171a8c800f1` |
| 16 | `lemma` | [sinh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/sinh-eq-tsum--55a5685ee2861dafd648566f.md) | 128 | `result-track:55a5685ee2861dafd648566fd5867f31b9e64065fab710a6cc3879b3e5b650f5` |
| 17 | `lemma` | [hasSum_cosh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/hassum-cosh--5e0d1b6a3c00ba8d8579a06d.md) | 136 | `result-track:5e0d1b6a3c00ba8d8579a06d99dd78add05f08af6813575429d53f16455c0ee5` |
| 18 | `lemma` | [hasSum_sinh](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/hassum-sinh--e76426def681dd7400bacb9f.md) | 140 | `result-track:e76426def681dd7400bacb9f864d8f59da207bd0cef293d8b806e71d3404e009` |
| 19 | `lemma` | [cosh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/cosh-eq-tsum--32737ac8a37738d6d7a084f9.md) | 143 | `result-track:32737ac8a37738d6d7a084f9b437be179909b5baccee02ecbac0564f504fe099` |
| 20 | `lemma` | [sinh_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/sinh-eq-tsum--e547b24b23b6975f86add6b3.md) | 145 | `result-track:e547b24b23b6975f86add6b352ab8c75d70fd448da57daf95be465159dde3def` |
| 21 | `lemma` | [cosh_le_exp_half_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/declarations/cosh-le-exp-half-sq--8a844ea1b1c7e2484fc210b4.md) | 148 | `result-track:8a844ea1b1c7e2484fc210b49fe1f6ab7e55d986aa43da3a4508b549ad403a94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
