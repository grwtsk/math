# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a86a665176bc881807f9825256c0baf2b604f223",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a86a665176bc881807f9825256c0baf2b604f223`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/wtype--e77e98744bacaa18e5011904.md) | 35 | `declaration-track:e77e98744bacaa18e5011904d43a5936ec102f2707225f5cb66b339d706a235a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/instance--186be334dafa947758e77181.md) | 38 | `declaration-track:186be334dafa947758e7718117b0d7e531820d39b1dede64e231cb9056810844` |
| 3 | `def` | [toSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/tosigma--979a3e7c4a40d8bb48eb3177.md) | 47 | `declaration-track:979a3e7c4a40d8bb48eb3177cd0a8d9c0491c1be77735cbaea6ae85447d7153f` |
| 4 | `def` | [ofSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/ofsigma--1e564d71c1aca2d402bddf50.md) | 52 | `declaration-track:1e564d71c1aca2d402bddf504db24c323c738d1dc752151579479677be9a1107` |
| 5 | `theorem` | [ofSigma_toSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/ofsigma-tosigma--4795a94391c899160f0d1c64.md) | 56 | `result-track:4795a94391c899160f0d1c646abc45811ca9bd360649ed161eb9aa33f70972bb` |
| 6 | `theorem` | [toSigma_ofSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/tosigma-ofsigma--824a3771d808bbe6ccc373dd.md) | 60 | `result-track:824a3771d808bbe6ccc373dd28695251b64a51ad2e36ba06cf0da41df514b2ff` |
| 7 | `def` | [equivSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/equivsigma--21e3f584d221792bd2ec7cc6.md) | 67 | `declaration-track:21e3f584d221792bd2ec7cc68ba4ea18fc7adb56d6ec73768e6ff2adff9d6195` |
| 8 | `def` | [elim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/elim--acd946c3bf887951aed77e65.md) | 74 | `declaration-track:acd946c3bf887951aed77e65de752c01f6b9e57b8eaf668c34ac5de42abb1642` |
| 9 | `theorem` | [elim_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/elim-injective--73bd4deec2dbd292092ce24d.md) | 77 | `result-track:73bd4deec2dbd292092ce24de3597b4cb6bb8efa2326f475c87ccde2c9887029` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/instance--bb706fb1a2b34d6a156089e0.md) | 84 | `declaration-track:bb706fb1a2b34d6a156089e07761228130429a25e9de0662807d75a1340dd639` |
| 11 | `theorem` | [infinite_of_nonempty_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/infinite-of-nonempty-of-isempty--da4e51ae0beeaf0033ee4074.md) | 87 | `result-track:da4e51ae0beeaf0033ee40748f5fc17fb656c33a5d9c21b7c985c3274d16c5d8` |
| 12 | `def` | [depth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/depth--6af0e50a781efc6b1c0226b3.md) | 108 | `declaration-track:6af0e50a781efc6b1c0226b33b98f1c4e6e3794bbf289a690d9e4ed84cab1f18` |
| 13 | `theorem` | [depth_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/depth-pos--77f6e08f10f309414aafd97e.md) | 111 | `result-track:77f6e08f10f309414aafd97e5b5aebc31b0de65fc529b6b67ba8d116c4924756` |
| 14 | `theorem` | [depth_lt_depth_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/depth-lt-depth-mk--442a0d7de7dae8ad2ee3084f.md) | 115 | `result-track:442a0d7de7dae8ad2ee3084fb7c57595cf16fe8deb75048fa80914101a5e9203` |
| 15 | `abbrev` | [WType'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/wtype--eae0684b93c889147c5bff40.md) | 126 | `declaration-track:eae0684b93c889147c5bff40f3256373b04019c32c0db5099998a178b2f45624` |
| 16 | `def` | [encodable_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/encodable-zero--bd592284629cefa867fc9449.md) | 132 | `declaration-track:bd592284629cefa867fc944940cd804b5b778edccc234eea2bf72b7d7cef4bcd` |
| 17 | `def` | [f](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/f--24713da6348b4fb1a02531a4.md) | 140 | `declaration-track:24713da6348b4fb1a02531a48d99eb9dacd974803eda29caa87c3e934237f45f` |
| 18 | `def` | [finv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/finv--bf3a2db6cea6a76eb60d1f80.md) | 147 | `declaration-track:bf3a2db6cea6a76eb60d1f80a241b35111d1e89b8322632a4996be491ae76a38` |
| 19 | `def` | [encodable_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/encodable-succ--9e943f32aa68a16255ef8c35.md) | 155 | `declaration-track:9e943f32aa68a16255ef8c352f59f48a77bbea2daae76f1303a98dce96033770` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant79814e70703acec2de7bb70b1c3772f3206d6810f74d2ece1ea903852178a189.lean/declarations/instance--c6fcff53e85dad3e8ae8923a.md) | 163 | `declaration-track:c6fcff53e85dad3e8ae8923a8632806033780bcf2b8ed47984baf22b42bd3012` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
