# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65aab88bc027f2ab723f46686e7b1c1b6a02e2cf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65aab88bc027f2ab723f46686e7b1c1b6a02e2cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean.json)

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
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/instlocallyfiniteorder--9c7e3f1429b8a0cd853830f4.md) | 39 | `declaration-track:9c7e3f1429b8a0cd853830f47fa61d92e622a09b3046cb06ca644f2cd1ddf07c` |
| 2 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/card-icc--82cb5688edb9225d9bc07cd2.md) | 63 | `result-track:82cb5688edb9225d9bc07cd21b55a7a27f19e62e3b76bce2b7d5c7f149045c35` |
| 3 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/card-ico--52e1819a0757733e6f012ee9.md) | 66 | `result-track:52e1819a0757733e6f012ee9ad94f2763515b2bcd165a5e16d0ed512b313524e` |
| 4 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/card-ioc--deadc782f8a584ad3abc3488.md) | 69 | `result-track:deadc782f8a584ad3abc34881bae4825687d532b5d0f8c273b5165fc429b4175` |
| 5 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/card-ioo--347793e02351f49979f248b0.md) | 72 | `result-track:347793e02351f49979f248b022cd01a9f5829f465dc72b1b6cb3fe3758055432` |
| 6 | `theorem` | [Icc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/icc-mk-mk--6f3a83f77e9a524615e5b565.md) | 80 | `result-track:6f3a83f77e9a524615e5b5657cf076ba1390789547463e3cce1b8a430bd32fe4` |
| 7 | `theorem` | [Ico_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/ico-mk-mk--4aa42d0515831b907a467268.md) | 84 | `result-track:4aa42d0515831b907a467268579dac0189a2b13e0d7ae183f3a3b94fabe54a83` |
| 8 | `theorem` | [Ioc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/ioc-mk-mk--c943b1ed64f27225d5388904.md) | 88 | `result-track:c943b1ed64f27225d5388904065417ba59d6938dd3872e656567bd11fbf506e7` |
| 9 | `theorem` | [Ioo_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/ioo-mk-mk--cd139fea393eedcb1970e303.md) | 92 | `result-track:cd139fea393eedcb1970e30397617743a5d7bee22fd1198c84e8a90a42106577` |
| 10 | `instance` | [instLocallyFiniteOrderBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/instlocallyfiniteorderbot--0787b39cc282307432682056.md) | 100 | `declaration-track:0787b39cc282307432682056ce42522b403051eac0503a68df62fb71d92a5e4e` |
| 11 | `theorem` | [Iic_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/iic-mk--264f348cc837911b33e7fbae.md) | 114 | `result-track:264f348cc837911b33e7fbaeac7af31792aa4179b5b5fe9006ab460348d96b1b` |
| 12 | `theorem` | [Iio_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/iio-mk--0c93b08910c091dcf099c9c5.md) | 115 | `result-track:0c93b08910c091dcf099c9c5a41022e24362e4249a9ca2299cc17262f848daa3` |
| 13 | `instance` | [instLocallyFiniteOrderTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/instlocallyfiniteordertop--e49c161d547365058ebf226f.md) | 122 | `declaration-track:e49c161d547365058ebf226f02c53f911f3954ce36c0bbaef00fdad17bdae687` |
| 14 | `theorem` | [Ici_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/ici-mk--17f852d3b789e2a9d9ddaf9e.md) | 136 | `result-track:17f852d3b789e2a9d9ddaf9ee53aafcc507cdde654420d6ceb0eb78ba1741b14` |
| 15 | `theorem` | [Ioi_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/declarations/ioi-mk--c6bbbf6fbde1c88e88b41c83.md) | 137 | `result-track:c6bbbf6fbde1c88e88b41c83c8d7412bec76df5e98127b5e62eeb3066a7e9c86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
