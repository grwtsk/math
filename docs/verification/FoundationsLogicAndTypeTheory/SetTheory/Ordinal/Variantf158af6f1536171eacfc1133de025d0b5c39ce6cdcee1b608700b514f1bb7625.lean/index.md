# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86c3a9d22beca0ca8a69ee98c0a8c05b5df2463b",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86c3a9d22beca0ca8a69ee98c0a8c05b5df2463b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.NaturalOps` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame--62a109a30d1fc7045142bfb7.md) | 33 | `declaration-track:62a109a30d1fc7045142bfb72da5aa644f1003ecf4fc10ad6a84f3bb80399697` |
| 2 | `theorem` | [toPGame_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-leftmoves--46f7dc9bc0eef380e41073f2.md) | 39 | `result-track:46f7dc9bc0eef380e41073f258cc8ab573669d031f3f7188219947c611361caa` |
| 3 | `theorem` | [toPGame_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-rightmoves--03851d0a6500433d15d6a2b3.md) | 43 | `result-track:03851d0a6500433d15d6a2b3ecc23b2ebb1641bc363b7946d2d8532c954921b7` |
| 4 | `instance` | [isEmpty_zero_toPGame_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/isempty-zero-topgame-leftmoves--76813c53e870a392475f3708.md) | 46 | `declaration-track:76813c53e870a392475f370860f8b836c0c0fa2ca1811519b46b6248e4cf5398` |
| 5 | `instance` | [isEmpty_toPGame_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/isempty-topgame-rightmoves--6bdcd2711528ccdaaee46f70.md) | 49 | `declaration-track:6bdcd2711528ccdaaee46f70f946a4966d124d8a9ab56dd8eb0b36aa99b52264` |
| 6 | `def` | [toLeftMovesToPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/toleftmovestopgame--968fdc7b09dbc0068d5cf901.md) | 54 | `declaration-track:968fdc7b09dbc0068d5cf9018bf8181fa599b89900570875719aa33a91bfff22` |
| 7 | `theorem` | [toLeftMovesToPGame_symm_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/toleftmovestopgame-symm-lt--b9c7a414d24083b787bb96a9.md) | 58 | `result-track:b9c7a414d24083b787bb96a9de53259dcb23581ea16b888e0f2d152a3245b9f4` |
| 8 | `theorem` | [toPGame_moveLeft_hEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-moveleft-heq--a40e80eac5743b9a17d7a2d3.md) | 63 | `result-track:a40e80eac5743b9a17d7a2d383b0c00e553a4b3fb11a532ed5d7e5bce748329c` |
| 9 | `theorem` | [toPGame_moveLeft'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-moveleft--2b5cb4ee50596d317074a2bb.md) | 69 | `result-track:2b5cb4ee50596d317074a2bb1d1b4e21cbfec4d1df02bbc2523836579cdb48ff` |
| 10 | `theorem` | [toPGame_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-moveleft--85d03e6fe35e51992bcaacfd.md) | 73 | `result-track:85d03e6fe35e51992bcaacfd968c6110e51416625ca48a5a96ccaf1843ce875c` |
| 11 | `def` | [zeroToPGameRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/zerotopgamerelabelling--e1f495c322665d78aff37611.md) | 77 | `declaration-track:e1f495c322665d78aff376113f129167e7c8c7cd14ba6c37892885922de82eae` |
| 12 | `theorem` | [toPGame_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-zero--46360d886ffd631670a40013.md) | 80 | `result-track:46360d886ffd631670a40013d7472c3051fe6e368be70413c5c49f4f196b4f2b` |
| 13 | `instance` | [uniqueOneToPGameLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/uniqueonetopgameleftmoves--0c1ee34e46d6649687465e0f.md) | 83 | `declaration-track:0c1ee34e46d6649687465e0ff50677d9f39d74df38baa52565e6017d3a9ce40b` |
| 14 | `theorem` | [one_toPGame_leftMoves_default_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/one-topgame-leftmoves-default-eq--8d3785c005247684a646ce2c.md) | 87 | `result-track:8d3785c005247684a646ce2c9c0571e0a843cfa44d5525acffb8013d9e56b933` |
| 15 | `theorem` | [to_leftMoves_one_toPGame_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/to-leftmoves-one-topgame-symm--b7f92a131bb53c82c4e93ce6.md) | 92 | `result-track:b7f92a131bb53c82c4e93ce66420c076584ce05e15f54ca141392e2b1394a368` |
| 16 | `theorem` | [one_toPGame_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/one-topgame-moveleft--59c57d83e9c62cdc10e83167.md) | 96 | `result-track:59c57d83e9c62cdc10e831679bfff746adf6d0b0c5895c065d143ffae557648e` |
| 17 | `def` | [oneToPGameRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/onetopgamerelabelling--abbae5d560c124dd490e5720.md) | 99 | `declaration-track:abbae5d560c124dd490e5720d347a1d02345e2a92d8e0e42f923139892903aa9` |
| 18 | `theorem` | [toPGame_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-one--6114f670ef1f0e3300067131.md) | 103 | `result-track:6114f670ef1f0e33000671310f2f6a03bb249a857ec128414534ce2e5ae66bc0` |
| 19 | `theorem` | [toPGame_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-lf--b9d43300cd030983ab2e0490.md) | 106 | `result-track:b9d43300cd030983ab2e04906f49cda8ddf9d2b22e4f17a3a47334807c4bd27d` |
| 20 | `theorem` | [toPGame_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-le--f2fcbc3e58157b9f86134abb.md) | 109 | `result-track:f2fcbc3e58157b9f86134abb7acd61c87aaeedc7ddbdac3e399e3f277bc9772c` |
| 21 | `theorem` | [toPGame_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-lt--26e66ef4f8efdaa2e17d9043.md) | 114 | `result-track:26e66ef4f8efdaa2e17d904363f442838ce73192ba3ef51e4b687ac68dd4fe35` |
| 22 | `theorem` | [toPGame_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-nonneg--f9a46c44c3528d9003992eb4.md) | 117 | `result-track:f9a46c44c3528d9003992eb41f62a07610c226e373c601c98f25c4e318e987b6` |
| 23 | `theorem` | [toPGame_lf_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-lf-iff--715f526798f551a1d59c057d.md) | 121 | `result-track:715f526798f551a1d59c057d0e090b334d2e2f13b421da04693e1d53f6fa9d41` |
| 24 | `theorem` | [toPGame_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-le-iff--8b08e9c91f44bbeea58fca35.md) | 125 | `result-track:8b08e9c91f44bbeea58fca358ac4e4a83fe079d14f5e0b3b676117333e01e653` |
| 25 | `theorem` | [toPGame_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-lt-iff--260b8899cfcc2dc880039942.md) | 129 | `result-track:260b8899cfcc2dc8800399426281f8f6985f0d9107f9cf3b1c7171f55f1ee416` |
| 26 | `theorem` | [toPGame_equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-equiv-iff--2f3acb2b2792ed1395a548df.md) | 133 | `result-track:2f3acb2b2792ed1395a548df272d46538277d469d22cc2e1862f82ce327c5fbd` |
| 27 | `theorem` | [toPGame_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-injective--cb2c9c72ffe73ec954aafd99.md) | 138 | `result-track:cb2c9c72ffe73ec954aafd99571cb8ce8cfd2a422f3507e36e3e7d2b4838f6ed` |
| 28 | `theorem` | [toPGame_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-inj--499e0f0b9a7d5136a031243c.md) | 142 | `result-track:499e0f0b9a7d5136a031243c681b4c41945cbad95db96b0ef4d350e3905c8dfd` |
| 29 | `def` | [toPGameEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgameembedding--4355ad395988ae30455375ba.md) | 149 | `declaration-track:4355ad395988ae30455375ba3ac7461a27fd4ce8f9dbe095bcdb952ad14f50ae` |
| 30 | `def` | [toGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame--e5190d128b4165f7ddaaa9f4.md) | 155 | `declaration-track:e5190d128b4165f7ddaaa9f4f6f393c6ebf6c6ed5b04ba56542cef9e56a25e99` |
| 31 | `theorem` | [mk_toPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/mk-topgame--8c9f6b12c8659a651ba4feaa.md) | 161 | `result-track:8c9f6b12c8659a651ba4feaa53e6fe2d4f45568251b757397add06c2c42e9888` |
| 32 | `theorem` | [toGame_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-zero--e4eb8877b13ef5eb2ab8516d.md) | 168 | `result-track:e4eb8877b13ef5eb2ab8516dbc20805aac2deec522828c0b20708e8edd59e0ee` |
| 33 | `theorem` | [toGame_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-one--37497cfa3cf67a88c37fd993.md) | 172 | `result-track:37497cfa3cf67a88c37fd993d4f23e263df0ed62629a6f71d40e799cfdd99363` |
| 34 | `theorem` | [toGame_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-injective--85871fe4dc50d2c093df604a.md) | 175 | `result-track:85871fe4dc50d2c093df604a3493e88157ea1debda1856f3534aee83b5c42053` |
| 35 | `theorem` | [toGame_lf_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-lf-iff--1e10648f32bac5fa931542eb.md) | 179 | `result-track:1e10648f32bac5fa931542eb6dd56117a3bb230637a6d06c7e444790aea0e35d` |
| 36 | `theorem` | [toGame_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-le-iff--0db43dab6b1a8d1278ef81c6.md) | 182 | `result-track:0db43dab6b1a8d1278ef81c6da210c2b92a9f64fedc8fb9271669e9f35cba565` |
| 37 | `theorem` | [toGame_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-lt-iff--47afa497f0884c9913b4aa38.md) | 185 | `result-track:47afa497f0884c9913b4aa383af4b6edccaee8ba27d489f73aa6ef7281ddebbf` |
| 38 | `theorem` | [toGame_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-inj--ef350bdbd7e8cba20430b4bd.md) | 188 | `result-track:ef350bdbd7e8cba20430b4bdabfa6d2937bbdb47b82784ba25f3fad6b96edd0e` |
| 39 | `theorem` | [toPGame_nadd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-nadd--632c58efa26c335ccf73e49a.md) | 194 | `result-track:632c58efa26c335ccf73e49a113622c14c24daf96698bf92de662f26472520f1` |
| 40 | `theorem` | [toGame_nadd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-nadd--2d5dade69d65ab288b6d832e.md) | 214 | `result-track:2d5dade69d65ab288b6d832e288c42db591b0e3ddb674624f91750f5fa77fa03` |
| 41 | `theorem` | [toPGame_nmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-nmul--014e8ad67755e4657300d03d.md) | 218 | `result-track:014e8ad67755e4657300d03dc7956657880f41f6cffa04dfcc90007a1ef5927a` |
| 42 | `theorem` | [toGame_nmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-nmul--a98185c3dd89802898e4cd60.md) | 240 | `result-track:a98185c3dd89802898e4cd60ebbe16598cd15ca2cb95b3d66a5de21366de77af` |
| 43 | `theorem` | [toGame_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/togame-natcast--fe40b21f001b9476637f8c66.md) | 244 | `result-track:fe40b21f001b9476637f8c6686c61dc50ea759f6f85c10764c0de747898aa505` |
| 44 | `theorem` | [toPGame_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantf158af6f1536171eacfc1133de025d0b5c39ce6cdcee1b608700b514f1bb7625.lean/declarations/topgame-natcast--a113b5026ded446b5a6223e2.md) | 251 | `result-track:a113b5026ded446b5a6223e2dc9159d6b201cb1e729195128e61adc23d4f10eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
