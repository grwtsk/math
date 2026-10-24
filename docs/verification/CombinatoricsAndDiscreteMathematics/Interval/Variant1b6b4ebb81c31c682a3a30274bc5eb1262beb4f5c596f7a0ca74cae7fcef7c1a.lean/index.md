# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5caf80f702be5b037f164b90d14e7aadc3884821",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5caf80f702be5b037f164b90d14e7aadc3884821`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/instlocallyfiniteorder--3f8ce079155dececff670b32.md) | 47 | `declaration-track:3f8ce079155dececff670b32d4ac2c4b3ea5ae77592e676fa8d89ced44a20d98` |
| 2 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/card-icc--c56cd3f39b7383f41ca96cbb.md) | 71 | `result-track:c56cd3f39b7383f41ca96cbba64db44ad7a6fe2e25e5ef711dc32d69f2c33d99` |
| 3 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/card-ico--5802df90b855765ba8c2de42.md) | 74 | `result-track:5802df90b855765ba8c2de424608105197c5aee0475dcb38886c46176f12c4dc` |
| 4 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/card-ioc--5979bcfdc2f22094642708b8.md) | 77 | `result-track:5979bcfdc2f22094642708b8dee1f8334c084a06fe12612186fff1fb37ca01ab` |
| 5 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/card-ioo--8b2adb1912df2c3144dcc0cf.md) | 80 | `result-track:8b2adb1912df2c3144dcc0cf6c15234c2e087637a2a4e468bdba5c90e9e40753` |
| 6 | `theorem` | [Icc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/icc-mk-mk--29e9c25497ed6b86b3182169.md) | 88 | `result-track:29e9c25497ed6b86b318216916a9f8dbee0789692100591356704152ca4777d5` |
| 7 | `theorem` | [Ico_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/ico-mk-mk--17ab6a59f200d5a56326a7fd.md) | 92 | `result-track:17ab6a59f200d5a56326a7fd82c1c7875d766961973600f5cd411df74612e6eb` |
| 8 | `theorem` | [Ioc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/ioc-mk-mk--721cdac7fe85816db9ad09ea.md) | 96 | `result-track:721cdac7fe85816db9ad09ea432a898134dfe038e6d2ca6b8d87b4086b76e8a0` |
| 9 | `theorem` | [Ioo_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/ioo-mk-mk--8164dfc86f32937caea646f2.md) | 100 | `result-track:8164dfc86f32937caea646f2941ad3f92ab2e26228618351508242bca86a9857` |
| 10 | `instance` | [instLocallyFiniteOrderBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/instlocallyfiniteorderbot--d65046d582be4ed6f4ab3bed.md) | 108 | `declaration-track:d65046d582be4ed6f4ab3bed0e49ac518377d302eb4ed01726bd0ecc662a5110` |
| 11 | `theorem` | [Iic_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/iic-mk--577c83156b6e44df95b3da29.md) | 122 | `result-track:577c83156b6e44df95b3da29e5004928a178c9dceb853f9e8b792639fabcf92b` |
| 12 | `theorem` | [Iio_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/iio-mk--7bf8f86a49add035c209a56a.md) | 123 | `result-track:7bf8f86a49add035c209a56a83ecf65800dc89548b26b119dc0468720ca5708a` |
| 13 | `instance` | [instLocallyFiniteOrderTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/instlocallyfiniteordertop--67b404cfd298074b95e4ae99.md) | 130 | `declaration-track:67b404cfd298074b95e4ae997296f35cba64df4cd2d1c709f3ddbb55c8f1a3e0` |
| 14 | `theorem` | [Ici_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/ici-mk--af2932221895251609449973.md) | 144 | `result-track:af2932221895251609449973c04a8932b9a8312f73e6c9fbbcd55df6085b688c` |
| 15 | `theorem` | [Ioi_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1b6b4ebb81c31c682a3a30274bc5eb1262beb4f5c596f7a0ca74cae7fcef7c1a.lean/declarations/ioi-mk--861377ed6e424ed0f4b34e2e.md) | 145 | `result-track:861377ed6e424ed0f4b34e2eab3ad3677be5835899000bb7f5e784a3f02a8464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
