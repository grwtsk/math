# Verification target: GRWTSK.Algebra.MulOpposite.Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4067f74a81a08bc46d49f8f37c20e6165a069c22",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/index.md) · [Full source](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4067f74a81a08bc46d49f8f37c20e6165a069c22`.

Source path: `GRWTSK/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.MulOpposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op--e9ac88b013c474c4669899a2.md) | 26 | `declaration-track:e9ac88b013c474c4669899a2d4c35821fb6b2494680a968134e52384de373749` |
| 2 | `theorem` | [mem_op](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/mem-op--48a07bc629dc5c936e56d871.md) | 33 | `result-track:48a07bc629dc5c936e56d8716004e92d117525117f39d802a268c500096285f0` |
| 3 | `def` | [unop](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop--63274de65fa0772d311c479b.md) | 37 | `declaration-track:63274de65fa0772d311c479bef6d9b43ca2425f13b3c9e8303639c2a199b428d` |
| 4 | `theorem` | [mem_unop](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/mem-unop--64d24ee194b052977c61d91e.md) | 44 | `result-track:64d24ee194b052977c61d91e55d152135d262811022797d027e73ed12230e0ef` |
| 5 | `theorem` | [unop_op](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-op--ccbe47b49d71a3ec863db7ed.md) | 47 | `result-track:ccbe47b49d71a3ec863db7ede2d427acaf4e2e10db27491a0bc81ed42f07138d` |
| 6 | `theorem` | [op_unop](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-unop--1314dd90af0edee6ef4d19c5.md) | 50 | `result-track:1314dd90af0edee6ef4d19c5afc064aef44794eb7d601c5a3ae56082647fadb5` |
| 7 | `theorem` | [op_le_iff](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-le-iff--9fa54c5310acd20504a584f4.md) | 54 | `result-track:9fa54c5310acd20504a584f4e48850b3cb53a3751659612866b97cf2dac54256` |
| 8 | `theorem` | [le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/le-op-iff--5b9821279e10df437d650557.md) | 57 | `result-track:5b9821279e10df437d650557e853d315dd4265569f8cd6aa8c54af90e7aeeba7` |
| 9 | `theorem` | [op_le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-le-op-iff--97fe0fab322ecd0e65e25c94.md) | 61 | `result-track:97fe0fab322ecd0e65e25c945b9b21b4db9aa29273814504d682e3e164a398cc` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-le-unop-iff--da0e8c8cc90cd2383b55792f.md) | 65 | `result-track:da0e8c8cc90cd2383b55792fcfb43810c76a8182895fa828018227c22e1659d9` |
| 11 | `def` | [opEquiv](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/opequiv--1d1add53c1890e9cb865b144.md) | 70 | `declaration-track:1d1add53c1890e9cb865b144ca7d131ac6cc81e9982ad60b3dc779db9cd46d08` |
| 12 | `theorem` | [op_bot](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-bot--04a5e78b165a899dae6400bf.md) | 78 | `result-track:04a5e78b165a899dae6400bfd875ca46bef51f9a93914ea7ade6904eaf95853e` |
| 13 | `theorem` | [unop_bot](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-bot--d9e16a07c6bebd144e0a9c89.md) | 81 | `result-track:d9e16a07c6bebd144e0a9c898e74ab6e5095ae061967c0f752a9f3821e43ec62` |
| 14 | `theorem` | [op_top](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-top--41dd386755f786b7a5c86c5b.md) | 84 | `result-track:41dd386755f786b7a5c86c5b68fd32a077fb7beda34199a2e289e04e86f78c85` |
| 15 | `theorem` | [unop_top](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-top--f79940de0e11f4ad16e3d38f.md) | 87 | `result-track:f79940de0e11f4ad16e3d38f1c9938fd960a2a475f931217d28264619d620a50` |
| 16 | `theorem` | [op_sup](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-sup--6f17610760919f8dc801e00f.md) | 89 | `result-track:6f17610760919f8dc801e00fc30fa1b0470ab0bb7c9512afb0df34695acebdaa` |
| 17 | `theorem` | [unop_sup](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-sup--527844d3ac76a0509bfa5abb.md) | 92 | `result-track:527844d3ac76a0509bfa5abb92f201946bda854bfcd2d8ea90cc7d32ab82f107` |
| 18 | `theorem` | [op_inf](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-inf--6c0bce13aaff4779a4e0b058.md) | 95 | `result-track:6c0bce13aaff4779a4e0b058a2788059eee8db53191412cb0b517deb35d06ae4` |
| 19 | `theorem` | [unop_inf](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-inf--96bef5fcc9f65c3b9d7daee0.md) | 97 | `result-track:96bef5fcc9f65c3b9d7daee0b96f48c80bb6c2b54f31e9a4693d062be957c71b` |
| 20 | `theorem` | [op_sSup](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-ssup--3783559fcddb7689c7b8afaa.md) | 100 | `result-track:3783559fcddb7689c7b8afaa34e6e07319193cf1515d82443c1e5da37737ad63` |
| 21 | `theorem` | [unop_sSup](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-ssup--b04e712172959893eb1175a9.md) | 103 | `result-track:b04e712172959893eb1175a9ee5e0d54b2e15c01f90e484c6b6693e18c68a912` |
| 22 | `theorem` | [op_sInf](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-sinf--f6495ff7fadc64414f6e2871.md) | 106 | `result-track:f6495ff7fadc64414f6e2871a5c1b8bb8507d5d576be79030abf49e7b1aef5cc` |
| 23 | `theorem` | [unop_sInf](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-sinf--24cca2841746cf744698c9a2.md) | 109 | `result-track:24cca2841746cf744698c9a2d864ce6486bb65bcd90f1bd1906137a74acc8131` |
| 24 | `theorem` | [op_iSup](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-isup--a811c319dd9629f9bceb9fea.md) | 112 | `result-track:a811c319dd9629f9bceb9feaee69454dda9457bc9b89ca125b086289074ee420` |
| 25 | `theorem` | [unop_iSup](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-isup--1c158fcd3bfac088b01766d3.md) | 114 | `result-track:1c158fcd3bfac088b01766d395a6ba1b847d0b96cb56820aab8ba31ca4577008` |
| 26 | `theorem` | [op_iInf](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-iinf--1514aa706dce652968580293.md) | 117 | `result-track:1514aa706dce65296858029391377d5f64350aa1b7204b1f9fff7a92b099464a` |
| 27 | `theorem` | [unop_iInf](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-iinf--82e0e4f9432e94419a7f6a1e.md) | 119 | `result-track:82e0e4f9432e94419a7f6a1e9586390d746242bf39733dd8d519d601d425caa8` |
| 28 | `theorem` | [op_adjoin](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-adjoin--4b37376afb7fff4ca17b4c60.md) | 122 | `result-track:4b37376afb7fff4ca17b4c60e2158ee52f85c73c644de4623af82efba78e9be5` |
| 29 | `theorem` | [unop_adjoin](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-adjoin--2447c2605b80ed5862da80d6.md) | 131 | `result-track:2447c2605b80ed5862da80d66341aa12ba0eab103737201b1af706e800f7cdae` |
| 30 | `def` | [linearEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/linearequivop--5652067f863851db6872f046.md) | 140 | `declaration-track:5652067f863851db6872f0465a7188d05abf3228a9e67f9cf04b0e6bb801afe3` |
| 31 | `def` | [algEquivOpMop](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/algequivopmop--7c34a354f6d26f862f9719cd.md) | 146 | `declaration-track:7c34a354f6d26f862f9719cd7f26644b94e1192daa8d53a0c8b98f36a32ff069` |
| 32 | `def` | [mopAlgEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/mopalgequivop--e1ed8de668b01d6bc5f80b2d.md) | 152 | `declaration-track:e1ed8de668b01d6bc5f80b2d4dac845e840b07eedfc09a378dff3da6340851ae` |
| 33 | `theorem` | [op_toSubring](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/op-tosubring--e3628995520bd00f56d3e611.md) | 163 | `result-track:e3628995520bd00f56d3e61104393830f9b8a7995b51fa03bae6cb49ac6689a1` |
| 34 | `theorem` | [unop_toSubring](../../../../mathematics/Algebra/MulOpposite/Variant97dadb3b703cf644a6e58ab877980a29412e33e5cc49ae9f5bdd8c0ce3cc6b75.lean/declarations/unop-tosubring--d2d110efe549144796cbb2e4.md) | 166 | `result-track:d2d110efe549144796cbb2e4d95a094bb34be446042a283d54a2cdbebddd19d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
