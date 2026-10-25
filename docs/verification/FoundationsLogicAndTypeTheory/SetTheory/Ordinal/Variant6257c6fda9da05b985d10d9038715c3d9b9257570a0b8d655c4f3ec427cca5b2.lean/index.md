# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2506ce68fbcfc9aa13e93df21bbc7062b09aab2a",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2506ce68fbcfc9aa13e93df21bbc7062b09aab2a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.NaturalOps` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame--d93eeee9f9d3d7d040040cce.md) | 41 | `declaration-track:d93eeee9f9d3d7d040040cce15f38ad7561870016ff4411941e41d72022029b3` |
| 2 | `theorem` | [toPGame_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-leftmoves--0a450cb1f7369102d1080816.md) | 47 | `result-track:0a450cb1f7369102d10808169e3d97782215875fd3e4ebe7804406888e3729dc` |
| 3 | `theorem` | [toPGame_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-rightmoves--2c63afd9b7dc41b68bd0f5d6.md) | 51 | `result-track:2c63afd9b7dc41b68bd0f5d613c28721e589abb2cc3f12d66a2359fa94e10d43` |
| 4 | `instance` | [isEmpty_zero_toPGame_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/isempty-zero-topgame-leftmoves--9d16609998cc53b0b9ecdfe5.md) | 54 | `declaration-track:9d16609998cc53b0b9ecdfe5e16e9515b26c9a4bc4ed65df997db0f655c6f19b` |
| 5 | `instance` | [isEmpty_toPGame_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/isempty-topgame-rightmoves--cc47217c7778d9f31ddb52e5.md) | 57 | `declaration-track:cc47217c7778d9f31ddb52e5d6f8b2ab3aef9d7361d8b47ecb8ffda6094d829f` |
| 6 | `def` | [toLeftMovesToPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/toleftmovestopgame--52cfc37d3fbc3bf08de48e16.md) | 62 | `declaration-track:52cfc37d3fbc3bf08de48e16238fb963b8f6fa8d2f373f15b534821063a5117f` |
| 7 | `theorem` | [toLeftMovesToPGame_symm_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/toleftmovestopgame-symm-lt--b689731ba5d219bc4f8d1bd0.md) | 66 | `result-track:b689731ba5d219bc4f8d1bd06e018f682c2a9f23ae6f8efc3661286076e407f2` |
| 8 | `theorem` | [toPGame_moveLeft_hEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-moveleft-heq--40b2782477e8c5c21e6adbcb.md) | 71 | `result-track:40b2782477e8c5c21e6adbcb710d696161e2722bcef80d2ece0467da2310a283` |
| 9 | `theorem` | [toPGame_moveLeft'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-moveleft--61ccb01dfe36deb9442685e6.md) | 77 | `result-track:61ccb01dfe36deb9442685e62c1904ac6e444e1e0409859fb53e707f08aa9a8d` |
| 10 | `theorem` | [toPGame_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-moveleft--31fa593482b738adbba7a206.md) | 81 | `result-track:31fa593482b738adbba7a206da764c38f417a3d1a32ad80eca37eb00cf5d0fd1` |
| 11 | `def` | [zeroToPGameRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/zerotopgamerelabelling--7788055f353dc502a884dc16.md) | 85 | `declaration-track:7788055f353dc502a884dc16f424f3b5da07ff1555e9cac0695c1ab6553f8c57` |
| 12 | `theorem` | [toPGame_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-zero--7bd16ee0bf36385d3d086b77.md) | 88 | `result-track:7bd16ee0bf36385d3d086b772077c744dbc424d847dba239993afcfa9e002b24` |
| 13 | `instance` | [uniqueOneToPGameLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/uniqueonetopgameleftmoves--89fc98fd00c7ba522f4f50d0.md) | 91 | `declaration-track:89fc98fd00c7ba522f4f50d02d4b0fa11c9cfb4d125923684fa0b6946681da61` |
| 14 | `theorem` | [one_toPGame_leftMoves_default_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/one-topgame-leftmoves-default-eq--b4fec25111032f850962fcfd.md) | 95 | `result-track:b4fec25111032f850962fcfd8e3731bc7994c637abcbe42ea2a4f750fe9ccc0e` |
| 15 | `theorem` | [to_leftMoves_one_toPGame_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/to-leftmoves-one-topgame-symm--d73ec5d46f60f60f6948b8f5.md) | 100 | `result-track:d73ec5d46f60f60f6948b8f5e2181c95a2cc60de8bcb012025c234dbb90c5692` |
| 16 | `theorem` | [one_toPGame_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/one-topgame-moveleft--da64f3cc232acdb2151e66f7.md) | 104 | `result-track:da64f3cc232acdb2151e66f780eefbe45f790596d3bacd141669f7fe46f6c09c` |
| 17 | `def` | [oneToPGameRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/onetopgamerelabelling--b3b6097674f17775549ef7cc.md) | 107 | `declaration-track:b3b6097674f17775549ef7cce3ef2447eb1b9d62560fb4cdd82f296d2b41f7e5` |
| 18 | `theorem` | [toPGame_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-one--5e14eeeffed85111df58e22f.md) | 111 | `result-track:5e14eeeffed85111df58e22fc72ad33454fced061cfda2253891783e6fe665f4` |
| 19 | `theorem` | [toPGame_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-lf--570db11da8742cfeadae86ef.md) | 114 | `result-track:570db11da8742cfeadae86ef9309ac13d6aa279d0441790450b59c69455b890c` |
| 20 | `theorem` | [toPGame_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-le--ee835a25ba6a21d533af132e.md) | 117 | `result-track:ee835a25ba6a21d533af132e28cf1938d3a6659b4960b9da03e8933ced9b7365` |
| 21 | `theorem` | [toPGame_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-lt--c05fda522ff9241ef55ac293.md) | 122 | `result-track:c05fda522ff9241ef55ac2930f79878d61a7cf0ae807ecb424cddac819f85361` |
| 22 | `theorem` | [toPGame_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-nonneg--3eff5909a6b94f422d5e7878.md) | 125 | `result-track:3eff5909a6b94f422d5e787879a4375c3de0eb07473f4f3690f711c4deeaf7eb` |
| 23 | `theorem` | [toPGame_lf_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-lf-iff--1e1a3ea27497609aa7f79e72.md) | 129 | `result-track:1e1a3ea27497609aa7f79e72a13e0aab94778189cb9227ccc673cf5ca011eb74` |
| 24 | `theorem` | [toPGame_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-le-iff--22c6f4c322fabee2f03ad995.md) | 133 | `result-track:22c6f4c322fabee2f03ad9951be83806ab3ef5b7d0c9ff2cc42bcc0a33b16051` |
| 25 | `theorem` | [toPGame_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-lt-iff--3a8aa4ef6bff3ab0a0cb3fca.md) | 137 | `result-track:3a8aa4ef6bff3ab0a0cb3fca1c84cdcf0b0076c938971f238cd324939b87f465` |
| 26 | `theorem` | [toPGame_equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-equiv-iff--b93895d22fc80473c42b9265.md) | 141 | `result-track:b93895d22fc80473c42b9265293bca1c46103182467cf38a2751dd8064d793c3` |
| 27 | `theorem` | [toPGame_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-injective--715f8985deb9bb445c11bfbf.md) | 146 | `result-track:715f8985deb9bb445c11bfbf2cb3f167e7e1f554dd6901d79a1d5d2cdf044bcb` |
| 28 | `theorem` | [toPGame_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-inj--1523a21fb409d9d029acb7b5.md) | 150 | `result-track:1523a21fb409d9d029acb7b52cff07ccf5dd4749f396f75f483ff1f3f4e779c5` |
| 29 | `def` | [toPGameEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgameembedding--a34cfdf5043179581bc9235d.md) | 157 | `declaration-track:a34cfdf5043179581bc9235d2c734642896bbe2fe7b47a14da53a136295bdae8` |
| 30 | `def` | [toGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame--d4b141892cec6401456c9254.md) | 163 | `declaration-track:d4b141892cec6401456c92546f21b2473696447c2bb0ccdf43c52659aa6f1ae9` |
| 31 | `theorem` | [mk_toPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/mk-topgame--57fe2000ac9e5b47d9caf60e.md) | 169 | `result-track:57fe2000ac9e5b47d9caf60ec346de4768b42abf227c47ee4ac6a0747244b696` |
| 32 | `theorem` | [toGame_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-zero--24337bebd423feed1aab0864.md) | 176 | `result-track:24337bebd423feed1aab08645afb673025b9a177c9ec81d9f2a90af1a83540fe` |
| 33 | `theorem` | [toGame_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-one--1acf3718f164dbca534ef5ce.md) | 180 | `result-track:1acf3718f164dbca534ef5ceafed2796e0392ef7c9e3eebfe4d1157d142a5a7f` |
| 34 | `theorem` | [toGame_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-injective--90030c5bf14920d99c561e84.md) | 183 | `result-track:90030c5bf14920d99c561e84c299c405f4ca5007d1c1fa741da76b3d3e6e7abd` |
| 35 | `theorem` | [toGame_lf_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-lf-iff--b4e18f96d7f980673f9399db.md) | 187 | `result-track:b4e18f96d7f980673f9399dba9028bc130b00feff79c79c698e0650660cf2ef4` |
| 36 | `theorem` | [toGame_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-le-iff--ea464caa5883b7b61a4ad45b.md) | 190 | `result-track:ea464caa5883b7b61a4ad45bde1e7c0c72149cb71c031436feed9b07bf5b0c89` |
| 37 | `theorem` | [toGame_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-lt-iff--28cb536e3bee4d7db3b2d818.md) | 193 | `result-track:28cb536e3bee4d7db3b2d818c4228328b5606c9d02d91cc8513ec5b24b037114` |
| 38 | `theorem` | [toGame_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-inj--c416482fd01f5fdf9160ea78.md) | 196 | `result-track:c416482fd01f5fdf9160ea78c5435ae8445604b95b3ce93f6080a763f760ea9d` |
| 39 | `theorem` | [toPGame_nadd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-nadd--6f82392ec3fc61ef3cccf7cc.md) | 202 | `result-track:6f82392ec3fc61ef3cccf7cc2577f9a6208052963a72e7437a5575a3c1155d01` |
| 40 | `theorem` | [toGame_nadd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-nadd--0b5272d52ef67463a4f8f3d1.md) | 222 | `result-track:0b5272d52ef67463a4f8f3d1d076a7b79f6948fdd45527b89b35560d82d2aecc` |
| 41 | `theorem` | [toPGame_nmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-nmul--177f3d01d683a6ff6fa5bd69.md) | 226 | `result-track:177f3d01d683a6ff6fa5bd69c87b78bafff8d3f13214da04e2f66b837e1ca1e1` |
| 42 | `theorem` | [toGame_nmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-nmul--1276dd08b7b0c5769f41b38d.md) | 248 | `result-track:1276dd08b7b0c5769f41b38df96b17fa7c075687a0889d1eb80c035983141832` |
| 43 | `theorem` | [toGame_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/togame-natcast--83bbd0a3021866f1aa2f3a33.md) | 252 | `result-track:83bbd0a3021866f1aa2f3a33fc3d8d781e099fa56dedaae155527e705d0a1bd7` |
| 44 | `theorem` | [toPGame_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant6257c6fda9da05b985d10d9038715c3d9b9257570a0b8d655c4f3ec427cca5b2.lean/declarations/topgame-natcast--4f1a402907b49f20869bd6eb.md) | 259 | `result-track:4f1a402907b49f20869bd6eba6500686887ac41688ce4da72cd460f19152c9a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
