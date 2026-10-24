# Verification target: GRWTSK.Algebra.LinearAlgebra.AdversaryInvariant.Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb1492cdbf9aec4a597f7438d66389c0871da38",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb1492cdbf9aec4a597f7438d66389c0871da38`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Permutation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.CryptographicProblem` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OracleProblem](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/oracleproblem--8e9aa107a08e4919027330c0.md) | 17 | `declaration-track:8e9aa107a08e4919027330c0356d0f2929dd20c7c66726741068e25be4093005` |
| 2 | `def` | [coordinateMask](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/coordinatemask--923f75a33a87fb34f60b3ef5.md) | 29 | `declaration-track:923f75a33a87fb34f60b3ef5bb49494fe3ad470307306e2dcd49153ac6cbe638` |
| 3 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/restrict--074d4a46491c638242fab8a4.md) | 36 | `declaration-track:074d4a46491c638242fab8a49ceafc28cc2a0877875c3be02decba94ace8005c` |
| 4 | `structure` | [ValidAdversaryMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/validadversarymatrix--4664e7f5ba8b5adbdbcd6bb8.md) | 47 | `declaration-track:4664e7f5ba8b5adbdbcd6bb8b53cf6842b0be5fa95f0c35dd7ed7e7ddd6ff414` |
| 5 | `structure` | [GeneralAdversaryWitness](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/generaladversarywitness--35fba35b4bdc705e0f1a9b82.md) | 62 | `declaration-track:35fba35b4bdc705e0f1a9b82e6fc80a06942b1e852f07c70a1d538140c7ab69f` |
| 6 | `def` | [ratio](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/ratio--3987b747f0d6f88f19a207b2.md) | 83 | `declaration-track:3987b747f0d6f88f19a207b2c823ff0468b52de20620a33ef3f55bb748a905a6` |
| 7 | `theorem` | [coordinate_norm_le_denominator](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/coordinate-norm-le-denominator--60214c4fb056950f14cab7ab.md) | 87 | `result-track:60214c4fb056950f14cab7ab87478179e3264edeeaf056850a497c209e2a2231` |
| 8 | `structure` | [GameAutomorphism](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/gameautomorphism--3fbab03e0427fa008fa41415.md) | 97 | `declaration-track:3fbab03e0427fa008fa414156cf8c65393bbfabc441aca84b905cffc78248568` |
| 9 | `structure` | [AdversaryQueryLowerBound](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/adversaryquerylowerbound--8a96bfdbca760055acd5de5e.md) | 115 | `declaration-track:8a96bfdbca760055acd5de5e5e9cb39b590097f1db47443e2e601802e3bdc149` |
| 10 | `constant` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/constant--aa9bb62205286866a6f87220.md) | 123 | `declaration-track:aa9bb62205286866a6f872200394144cac9e4f0b448e33b9102c43c7c78e2059` |
| 11 | `constant` | [*](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/anonymous--aec12af3dcb94f06695c90a8.md) | 128 | `declaration-track:aec12af3dcb94f06695c90a893fd618f8164bf9ff07d3c53ec49afdc2fa1c035` |
| 12 | `theorem` | [adversary_query_lower_bound](../../../../../mathematics/Algebra/LinearAlgebra/AdversaryInvariant/Variantbc51326b878775551f0d97e12cf86c1ebc66111ed5efb989adb3f2648f4d8138.lean/declarations/adversary-query-lower-bound--1ceab4e1a1e0d8bfb4061173.md) | 130 | `result-track:1ceab4e1a1e0d8bfb40611733ddd3dbd5f97505cac7fcdd814bfa8fb614ef034` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
