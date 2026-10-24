# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.TrivialZeroResidues

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d0ae16ad76a367d769d0e02da355333870407e2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d0ae16ad76a367d769d0e02da355333870407e2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart`](../../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trivialPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/trivialpoint--9816be4510745d32ec75ec1f.md) | 35 | `declaration-track:9816be4510745d32ec75ec1f887b1eb391f7de080a8c695db12abc990ab25fc2` |
| 2 | `theorem` | [trivialPoint_re_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/trivialpoint-re-neg--234ee41992b3b34078f0d06d.md) | 37 | `result-track:234ee41992b3b34078f0d06d722dc1743ac388755302e89bab4048c2f4d28109` |
| 3 | `theorem` | [trivialPoint_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/trivialpoint-im--d734ede7dc8176cde2ea0549.md) | 42 | `result-track:d734ede7dc8176cde2ea054936a726bf1768a891b018c1560bb96ab277ef51c8` |
| 4 | `theorem` | [trivialPoint_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/trivialpoint-injective--46a38e66891fd5d52d7a9d06.md) | 45 | `result-track:46a38e66891fd5d52d7a9d066d21b51007e2368fae2dee622938e198b8c8f160` |
| 5 | `theorem` | [zeta_trivialPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/zeta-trivialpoint--9e0b65c218ba787887cfb364.md) | 51 | `result-track:9e0b65c218ba787887cfb36497a7469c6ab2bcc6641a957b8602c070e054459f` |
| 6 | `theorem` | [trivialPoint_not_nontrivial](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/trivialpoint-not-nontrivial--14f75800997810bddbf69875.md) | 54 | `result-track:14f75800997810bddbf69875d1022df55982129c166ee66c5022dcaeca26a97b` |
| 7 | `def` | [reflectedUnit](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/reflectedunit--0536c5063b7fdfc011999969.md) | 59 | `declaration-track:0536c5063b7fdfc011999969b73e62c317afae3019918f567fddfdba115ce986` |
| 8 | `theorem` | [zeta_eq_reflectedUnit_mul_sin](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/zeta-eq-reflectedunit-mul-sin--5f509d53952bb08141fae898.md) | 64 | `result-track:5f509d53952bb08141fae8989f0a0a2162afd31348c32ded650a6a3b1bc1a15b` |
| 9 | `theorem` | [reflectedUnit_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/reflectedunit-differentiableat--a4d8ca3a731c66e43eed11bb.md) | 89 | `result-track:a4d8ca3a731c66e43eed11bb165896fc1be9a83bfd44bf271461fb1dc54fcf51` |
| 10 | `theorem` | [reflectedUnit_trivialPoint_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/reflectedunit-trivialpoint-ne-zero--4f70af6ccafef9ec9d31f655.md) | 111 | `result-track:4f70af6ccafef9ec9d31f6558f90629f76f326af5f564d8669be577104746c7c` |
| 11 | `theorem` | [sine_trivialPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/sine-trivialpoint--0ddfb8c8180e476ad7ad9c9e.md) | 126 | `result-track:0ddfb8c8180e476ad7ad9c9ed4c25bc5933e3737c77c008737e3b1f72ee5e36f` |
| 12 | `theorem` | [cosine_trivialPoint_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/cosine-trivialpoint-ne-zero--ca4383d5ab33908dc21e0c1f.md) | 133 | `result-track:ca4383d5ab33908dc21e0c1f7308f9dd0a4c50f6f0689757de83e706942fdfe7` |
| 13 | `theorem` | [deriv_zeta_trivialPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/deriv-zeta-trivialpoint--b7fb0f520a72f8cb0e247981.md) | 140 | `result-track:b7fb0f520a72f8cb0e247981984241e6b052944a8d287fb9cc2e98dfc6436e65` |
| 14 | `theorem` | [deriv_zeta_trivialPoint_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/deriv-zeta-trivialpoint-ne-zero--9e4ffc72a1622da43f3e15a2.md) | 157 | `result-track:9e4ffc72a1622da43f3e15a28e0feac19f11f7d4b248f14202a56d64c2b18293` |
| 15 | `theorem` | [trivialPoint_scaled_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/trivialpoint-scaled-limit--9647b56ba35ea2fb97a62c79.md) | 163 | `result-track:9647b56ba35ea2fb97a62c79ac1de0539e72f5776f7df997df8e11e01fca01ce` |
| 16 | `theorem` | [trivialPoint_weighted_limit](../../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/declarations/trivialpoint-weighted-limit--bb941dee24342da51c3fd20e.md) | 177 | `result-track:bb941dee24342da51c3fd20e764b458c2075bdbfde9ec7fb600793bafd8fd9eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
