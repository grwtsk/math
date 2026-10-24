# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d92e8e94b26c5acb4f23c533699a237a78a7ebc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d92e8e94b26c5acb4f23c533699a237a78a7ebc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/instance--183ffea1fb6b7ec6baf3b008.md) | 29 | `declaration-track:183ffea1fb6b7ec6baf3b008d686e712914ce9d1db87e184c2338f886ebe57d2` |
| 2 | `theorem` | [star_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/star-apply--0032ec942547cd94130d013e.md) | 32 | `result-track:0032ec942547cd94130d013e4f9e31b1222f96b64b081c62b43e820fb1f1bfb5` |
| 3 | `theorem` | [star_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/star-def--58d1d3990ace94d5634eccd1.md) | 36 | `result-track:58d1d3990ace94d5634eccd114a5fa6f066d1339b080291f386ee4caf41365c5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/instance--f8926afec42a1cbfdafdaded.md) | 40 | `declaration-track:f8926afec42a1cbfdafdaded3cb9535af0e7b6ac32cf83ae0b44f95336166b1e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/instance--44afac7a41bdb11b7c117ec4.md) | 43 | `declaration-track:44afac7a41bdb11b7c117ec49a8fee5f422a042d579505b2c8612e61c02240b3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/instance--ad80c92aac9fbf59a5b94538.md) | 46 | `declaration-track:ad80c92aac9fbf59a5b9453867f9f809f845b5c72a587caaae1322a9af1d96c9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/instance--7b92b852b132c596fe5d7cdf.md) | 49 | `declaration-track:7b92b852b132c596fe5d7cdfd7b57009abb2fcc80dad9cc7185d292a7071e39e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/instance--d2af29090a8b917d21475d87.md) | 52 | `declaration-track:d2af29090a8b917d21475d87cb7304579cd35ba9b8976fe7845d61c4a9801411` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/instance--b703ce459e78d6f8a287607d.md) | 55 | `declaration-track:b703ce459e78d6f8a287607d72eb441861464db9fde11b7ea2b3aa3a2bcab67f` |
| 10 | `theorem` | [single_star](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/single-star--8e33a4b6b55cda3e44c3c986.md) | 59 | `result-track:8e33a4b6b55cda3e44c3c9865bc7819d5370b75126238d713104df2b4b1d8922` |
| 11 | `theorem` | [update_star](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/update-star--fd3601901350045de5015c57.md) | 68 | `result-track:fd3601901350045de5015c578d361e5848cedbb3d9cfa969090feefd79e0f0a8` |
| 12 | `theorem` | [star_sum_elim](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant8ba8775be51eb2bbb7d8e1955915e332a99c402aafe9db02ff6351e1a0bfb0c7.lean/declarations/star-sum-elim--c91f17e021d411cff8e04681.md) | 73 | `result-track:c91f17e021d411cff8e04681752889c0d61f3791a6809fea4ccb9d407d608fab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
