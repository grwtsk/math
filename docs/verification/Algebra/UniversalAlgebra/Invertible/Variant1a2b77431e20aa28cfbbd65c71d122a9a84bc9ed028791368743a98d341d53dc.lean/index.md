# Verification target: GRWTSK.Algebra.UniversalAlgebra.Invertible.Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caa21ae53862417bf49dd79eeee6d215b010ce50",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caa21ae53862417bf49dd79eeee6d215b010ce50`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleOfRingCharNotDvd](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/declarations/invertibleofringcharnotdvd--4aca014518ef727e00a6260b.md) | 29 | `declaration-track:4aca014518ef727e00a6260b6ce93bc2d6f133080bb3058f01294ccc42a48440` |
| 2 | `theorem` | [not_ringChar_dvd_of_invertible](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/declarations/not-ringchar-dvd-of-invertible--f60c3092bd4bd207c2486851.md) | 33 | `result-track:f60c3092bd4bd207c24868516a1d9d4e9ecfeca1bb8437f6507fa4686af867e4` |
| 3 | `def` | [invertibleOfCharPNotDvd](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/declarations/invertibleofcharpnotdvd--3466944c20b072d7f80093c5.md) | 40 | `declaration-track:3466944c20b072d7f80093c588dfda1130b334a5307ee641ea1281325e9719ce` |
| 4 | `instance` | [invertibleOfPos](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/declarations/invertibleofpos--84edc6c0d950479c10245f38.md) | 46 | `declaration-track:84edc6c0d950479c10245f38e968385b1f828fdc6a76cdb76f2388863c8f5667` |
| 5 | `instance` | [invertibleSucc](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/declarations/invertiblesucc--b52e7d57db335363890315a6.md) | 56 | `declaration-track:b52e7d57db335363890315a62857914c9a384c19af754b75f0995b75fd0d6251` |
| 6 | `instance` | [invertibleTwo](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/declarations/invertibletwo--4a7fa530a0adb5f578a1b021.md) | 66 | `declaration-track:4a7fa530a0adb5f578a1b021f87d3666342fef944ab54e0a2256aa37b913a037` |
| 7 | `instance` | [invertibleThree](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/declarations/invertiblethree--72a3c300fec7ff2946801f23.md) | 70 | `declaration-track:72a3c300fec7ff2946801f23b4ed08badb6eec23d1a162c40628fcd10da43a92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
