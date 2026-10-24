# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2441649b62c55a5be063524ad7c0c8e78eac25a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2441649b62c55a5be063524ad7c0c8e78eac25a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean.json)

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
| 1 | `def` | [powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetaux--3c46597166df75dc6e758240.md) | 30 | `declaration-track:3c46597166df75dc6e758240f5eea06412e90d3369cc18099c864676f6047515` |
| 2 | `theorem` | [powersetAux_eq_map_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetaux-eq-map-coe--d08a0abe1070605578a738ff.md) | 33 | `result-track:d08a0abe1070605578a738ff17da9f7263f0eb6806c3cd05349e7100b4086eb8` |
| 3 | `theorem` | [mem_powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/mem-powersetaux--e9937821def86f6800739d52.md) | 37 | `result-track:e9937821def86f6800739d52edccde9c9bf8886a2624928223d5523ea3b09875` |
| 4 | `def` | [powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetaux--a600fbdbe3713ae4236a2919.md) | 42 | `declaration-track:a600fbdbe3713ae4236a291966fd4569621bc7696a185458c9f041823cfbbd86` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetaux-perm-powersetaux--baa2872afa9adc3017fcd764.md) | 45 | `result-track:baa2872afa9adc3017fcd764ffee3a9276a0be15d153fa3e203fdd8089e74001` |
| 6 | `theorem` | [powersetAux'_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetaux-nil--aa285cd3db4710c807bfd5d7.md) | 49 | `result-track:aa285cd3db4710c807bfd5d7e4c0840e369be93369b017f34fbd536c4453a4de` |
| 7 | `theorem` | [powersetAux'_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetaux-cons--fb399ea5e53251b7d0098823.md) | 53 | `result-track:fb399ea5e53251b7d00988235b25f54e0e30e407a6e67e4c2af0546ebe6a9a35` |
| 8 | `theorem` | [powerset_aux'_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-aux-perm--889b24d95168befa34b45c29.md) | 57 | `result-track:889b24d95168befa34b45c296343de98c7b0b51c8dffefbf5b51c20a1f441f8b` |
| 9 | `theorem` | [powersetAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetaux-perm--24f91ddbbc323ad6499056d2.md) | 71 | `result-track:24f91ddbbc323ad6499056d21e6fd520fb44e8a38ab2318c66592b6ecc1bc158` |
| 10 | `def` | [powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset--1f63258d1a92c0aa7497dcf1.md) | 76 | `declaration-track:1f63258d1a92c0aa7497dcf17d29b2d3c7b4fe82914c934140194af1f87547b6` |
| 11 | `theorem` | [powerset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-coe--6edfaa7d58b7ff1c71f24fc4.md) | 81 | `result-track:6edfaa7d58b7ff1c71f24fc4a9c8678de40e0d956e42330334dbc57ac1a0e312` |
| 12 | `theorem` | [powerset_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-coe--3b5d39e2c0a39e8a171f44ba.md) | 85 | `result-track:3b5d39e2c0a39e8a171f44ba35d6f791d5c2bf1de9aa1673d54ad7b38d6a4b8d` |
| 13 | `theorem` | [powerset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-zero--4a0ec482accd0dc3c83f027f.md) | 89 | `result-track:4a0ec482accd0dc3c83f027f62fa302d3b3042f46c2bf82fcf20f454df6b2f29` |
| 14 | `theorem` | [powerset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-cons--793f8dbd5d3ea105abf7117e.md) | 93 | `result-track:793f8dbd5d3ea105abf7117eebb576992f636185e70c0f27ac68a55cf5529cd9` |
| 15 | `theorem` | [mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/mem-powerset--eeab20ea8309531739187a6d.md) | 97 | `result-track:eeab20ea8309531739187a6dcf56e07273451553c0a3bd3386db12137b00a210` |
| 16 | `theorem` | [map_single_le_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/map-single-le-powerset--c1e5c2b320adc9eb8d1757c9.md) | 100 | `result-track:c1e5c2b320adc9eb8d1757c904d7368f8c81b0644d4767d59be4039d6b7091b5` |
| 17 | `theorem` | [zero_mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/zero-mem-powerset--45a0777a6116ad93d848379a.md) | 107 | `result-track:45a0777a6116ad93d848379a599fff13ff53adba00c2e7d40c3f05a0eef1f220` |
| 18 | `theorem` | [self_mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/self-mem-powerset--e4c9c2e77ab13ab0206d8413.md) | 110 | `result-track:e4c9c2e77ab13ab0206d8413573313a2a675e94ffff81bfd699c84778f6a2c39` |
| 19 | `theorem` | [card_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/card-powerset--412fdd8c3a0379448347600e.md) | 114 | `result-track:412fdd8c3a0379448347600e284485ab072bb401df40843951a73c22729d8c7b` |
| 20 | `theorem` | [powerset_eq_singleton_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-eq-singleton-zero-iff--418be3b690fddcc8a205bb45.md) | 118 | `result-track:418be3b690fddcc8a205bb45304af96a336fb5e16b377bd579c7216467462cde` |
| 21 | `theorem` | [revzip_powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/revzip-powersetaux--eb1b5198e987e55caf965dc2.md) | 125 | `result-track:eb1b5198e987e55caf965dc2e14f5570b265e642392d843923d6dfc04e82239a` |
| 22 | `theorem` | [revzip_powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/revzip-powersetaux--8b8694957713bc48f743753e.md) | 131 | `result-track:8b8694957713bc48f743753e71fcb28ddc5be3ccd234cff9df6ebab669df8827` |
| 23 | `theorem` | [revzip_powersetAux_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/revzip-powersetaux-lemma--8354e8bc7b56e3c5c6f6cf9f.md) | 138 | `result-track:8354e8bc7b56e3c5c6f6cf9f01461cb7df76b349d7b8b9636904c1647ab93bdb` |
| 24 | `theorem` | [revzip_powersetAux_perm_aux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/revzip-powersetaux-perm-aux--fd724b23e1fcb83feabcd246.md) | 151 | `result-track:fd724b23e1fcb83feabcd246c1b1aeba84a43e23fb193d31c559a708ef56bcf0` |
| 25 | `theorem` | [revzip_powersetAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/revzip-powersetaux-perm--ddc9bd8652142f5d2a6679ba.md) | 157 | `result-track:ddc9bd8652142f5d2a6679ba9e91bd7e75a2e0dbf2c4ffc794c32044420e237a` |
| 26 | `theorem` | [powerset_le_powerset_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-le-powerset-iff-le--7a59163f498ff89d72284039.md) | 164 | `result-track:7a59163f498ff89d722840393fa9bbbd65d138a9f76d56a904b47c70ff37c3d6` |
| 27 | `lemma` | [powerset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-injective--7e84d7401f62eb121119e8fd.md) | 174 | `result-track:7e84d7401f62eb121119e8fd99fbc1e03b5432705ffe6f32c5406cdc8859c9c1` |
| 28 | `lemma` | [powerset_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-strictmono--c6266796dbd931f2bc27fb83.md) | 180 | `result-track:c6266796dbd931f2bc27fb83203fd76ed97bc7f5e22afc694c77ebf319daf6fd` |
| 29 | `lemma` | [powerset_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powerset-mono--b93822e46e57ef9498a441f2.md) | 183 | `result-track:b93822e46e57ef9498a441f2049f8a6932685e1f2fa6e99f57919ae3e1d1ae04` |
| 30 | `def` | [powersetCardAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcardaux--853df958f94c1ad92bd0b797.md) | 191 | `declaration-track:853df958f94c1ad92bd0b7977d89830a7648a7349adf8cc80f09d0d7f57eff42` |
| 31 | `theorem` | [powersetCardAux_eq_map_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcardaux-eq-map-coe--a310fc20a1418d8398155fcd.md) | 194 | `result-track:a310fc20a1418d8398155fcddf3bd2b145829be4953622454274b83512e11da2` |
| 32 | `theorem` | [mem_powersetCardAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/mem-powersetcardaux--8e9c912491351eee201fce58.md) | 199 | `result-track:8e9c912491351eee201fce58e42188f8665246601871849c95f51ce7763d5b22` |
| 33 | `theorem` | [powersetCardAux_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcardaux-zero--a2f53862b95a6ccc3b8eb628.md) | 208 | `result-track:a2f53862b95a6ccc3b8eb6284b9634d1b8bab49469c5bed9c40f5fec30bafe31` |
| 34 | `theorem` | [powersetCardAux_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcardaux-nil--472e7bea72f6826cf682f5dc.md) | 212 | `result-track:472e7bea72f6826cf682f5dcc0bfb2a745d00dfd5299e24cd5427431ff1ebcaf` |
| 35 | `theorem` | [powersetCardAux_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcardaux-cons--560f796b7cb43d1609fd3a71.md) | 216 | `result-track:560f796b7cb43d1609fd3a7175a2422d669cba8c3d12870ed1a1387a76312ea5` |
| 36 | `theorem` | [powersetCardAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcardaux-perm--ddb7d4aba6c51ee95d0ac95f.md) | 221 | `result-track:ddb7d4aba6c51ee95d0ac95f67cbaf68a9d4299256a85ba3f8d28c0d94951d5e` |
| 37 | `def` | [powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard--35b82f3d46671d6ecfc0d5d2.md) | 241 | `declaration-track:35b82f3d46671d6ecfc0d5d28125e35cf8bbe522a4b06967b3e075d9e459a3a2` |
| 38 | `theorem` | [powersetCard_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-coe--87c4ede80d7556f0a83ce2d3.md) | 245 | `result-track:87c4ede80d7556f0a83ce2d3eeb99d336936c0a2d340f86dbda0bc75aa1fd07c` |
| 39 | `theorem` | [powersetCard_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-coe--fc72b92683f8137d6c696df8.md) | 248 | `result-track:fc72b92683f8137d6c696df8179bfa5a299d577e236f5329113e356b4ad58bde` |
| 40 | `theorem` | [powersetCard_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-zero-left--d06b3a399685884224cb0c81.md) | 253 | `result-track:d06b3a399685884224cb0c816c6ac413d76c0d6006e049c38bf32c5bba5b704e` |
| 41 | `theorem` | [powersetCard_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-zero-right--6973b63349cf850ed3e17cba.md) | 256 | `result-track:6973b63349cf850ed3e17cba4ce823c9b6812790cd789783f6321b70a6e0d31f` |
| 42 | `theorem` | [powersetCard_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-cons--1b16381ab043d264b1a3ba6b.md) | 260 | `result-track:1b16381ab043d264b1a3ba6be49360a64da3dd26e2aa3d6ef71110698fe7fccf` |
| 43 | `theorem` | [powersetCard_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-one--7a259f01bba4f1689a9ec33c.md) | 264 | `result-track:7a259f01bba4f1689a9ec33c297637f2e49d8df812b26be8e596e0701d7d1736` |
| 44 | `theorem` | [mem_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/mem-powersetcard--d47b33ff62b3180a0ad2392a.md) | 269 | `result-track:d47b33ff62b3180a0ad2392ad6f857836b961fc35f8d9d2dc22da8152cd16c12` |
| 45 | `theorem` | [card_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/card-powersetcard--5a5cf71939af9353370a5b92.md) | 273 | `result-track:5a5cf71939af9353370a5b9268ae054476375e9b992d256ae56210a691965125` |
| 46 | `theorem` | [powersetCard_le_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-le-powerset--8938dcec2b0fb0121cf07405.md) | 277 | `result-track:8938dcec2b0fb0121cf074054dbf98a1d224a4697a96ac13b6b16f26213b57bb` |
| 47 | `theorem` | [powersetCard_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-mono--7622e46530c7a1e01e88310b.md) | 282 | `result-track:7622e46530c7a1e01e88310b982a7548f58a6c1c3418082d6a8dbf766c08e771` |
| 48 | `theorem` | [powersetCard_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-eq-empty--f90635b323020508b7be0873.md) | 289 | `result-track:f90635b323020508b7be0873e9ea7ebfd879f1010d098815e54f1b4c235f1951` |
| 49 | `theorem` | [powersetCard_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-card-add--cd35a1651e416b13f9006f18.md) | 293 | `result-track:cd35a1651e416b13f9006f18dc9809a268aa511f7492832ddafe7b75e87b8d89` |
| 50 | `theorem` | [powersetCard_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-self--adfb482128d01a59a76a6fa1.md) | 298 | `result-track:adfb482128d01a59a76a6fa1164dc46d15a450c8e44f46f7d77f344d4fe79d0a` |
| 51 | `theorem` | [powersetCard_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/powersetcard-map--4c6fa1e8d7db7f3e4a24ced0.md) | 304 | `result-track:4c6fa1e8d7db7f3e4a24ced01019bdd620ac28f2edde45bf8617eb8efb3d735e` |
| 52 | `lemma` | [_root_.Disjoint.powersetCard_powersetCard_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/root-disjoint-powersetcard-powersetcard-multiset--106686f9bc0c90532c9eafe5.md) | 310 | `result-track:106686f9bc0c90532c9eafe53735c287e2b12f616b8aa7e70d9dfac2d703d73f` |
| 53 | `lemma` | [disjoint_powersetCard_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/disjoint-powersetcard-of-ne--aabff96ca36f5fe093d3e7e4.md) | 321 | `result-track:aabff96ca36f5fe093d3e7e40090eb1149905c8a4d21290e21d5dfac9f42e66a` |
| 54 | `theorem` | [pairwise_disjoint_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/pairwise-disjoint-powersetcard--fb8a7605b3f13ef6d0cf1086.md) | 325 | `result-track:fb8a7605b3f13ef6d0cf1086594171ba2cbf44cea84d7a3cbe591ea7224df6f4` |
| 55 | `theorem` | [bind_powerset_len](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/bind-powerset-len--aa18a691fa643a3071ec94a8.md) | 329 | `result-track:aa18a691fa643a3071ec94a8d7d3ceeff06aafb3c179fddff211bcbdbd7814f9` |
| 56 | `theorem` | [nodup_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/nodup-powerset--8192bebf7c7a318f9dde63ee.md) | 337 | `result-track:8192bebf7c7a318f9dde63eeedda3e94419a0ce61a5e75f8406b4785ba20dd73` |
| 57 | `theorem` | [Nodup.powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean/declarations/nodup-powersetcard--57299ecf5644e6945de423cd.md) | 347 | `result-track:57299ecf5644e6945de423cd8b4a161fb34b42a822e209e429b39ec24cb61e92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
