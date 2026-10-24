# Verification target: GRWTSK.Algebra.Proof.Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/index.md) · [Full source](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6376ec2f54cf7fc18e2a1157792af7ae1bdaa9c3`.

Source path: `GRWTSK/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Module.OfNatModule` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Data.RArray` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.ToExpr` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.VarRename` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.ToExpr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.VarRename` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContextExpr](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/tocontextexpr--ebe57de978f1d1b41a6fefee.md) | 30 | `declaration-track:ebe57de978f1d1b41a6fefee3904d1a38ec560f84fe71e574f1ca410c751438f` |
| 2 | `structure` | [ProofM.State](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/proofm-state--dccd4ef4e2a16b2c2a554d0b.md) | 37 | `declaration-track:dccd4ef4e2a16b2c2a554d0b212c5e3b5ad21b19bdafd4972921c022aea3dd29` |
| 3 | `structure` | [ProofM.Context](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/proofm-context--b8c76b9fd60fcbcb3205b04a.md) | 46 | `declaration-track:b8c76b9fd60fcbcb3205b04aa37517663bb411cc8b9defb1724ebb21bc075c04` |
| 4 | `abbrev` | [ProofM](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/proofm--e854aa87fe822b277fde0232.md) | 51 | `declaration-track:e854aa87fe822b277fde023281302c63435323a2ce16ee891b081d5cbf7036dc` |
| 5 | `abbrev` | [getContext](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/getcontext--2b9a91177fc2446ad5031574.md) | 54 | `declaration-track:2b9a91177fc2446ad5031574f56f35b6bf450531c5e9f9674de4ce4b2b2fd744` |
| 6 | `abbrev` | [getRingContext](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/getringcontext--e3e5218e0914a438a0bc445f.md) | 61 | `declaration-track:e3e5218e0914a438a0bc445fc1cc5ca195d1f1fb461e8709a065b441d130f938` |
| 7 | `abbrev` | [caching](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/caching--def6ce5ab63a57e128324114.md) | 64 | `declaration-track:def6ce5ab63a57e1283241149b704dfb3b6632363209366d0b3e5ca8f3266588` |
| 8 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/macro--18779d98d3adbd4db3da85f3.md) | 73 | `declaration-track:18779d98d3adbd4db3da85f35b9dea02c7f26673d3d8df758e5f1da3275b0412` |
| 9 | `def` | [mkVarDecl](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkvardecl--326d0f98b68cf82f0c24e83e.md) | 80 | `declaration-track:326d0f98b68cf82f0c24e83e6beeffc2cf572422ec9d4a0d9d683c609346d0e6` |
| 10 | `def` | [mkPolyDecl](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkpolydecl--fd0715ca167367b0e4d3d163.md) | 83 | `declaration-track:fd0715ca167367b0e4d3d163b21360e420a015a073575c7eb6edd150d56196f6` |
| 11 | `def` | [mkExprDecl](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkexprdecl--3197065c8498ac1162829b9f.md) | 86 | `declaration-track:3197065c8498ac1162829b9ffee2aa57273ae6292e5712768d2e7ce692cbefd3` |
| 12 | `def` | [mkRingPolyDecl](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkringpolydecl--6d6acc376985d2db5a7df1d0.md) | 89 | `declaration-track:6d6acc376985d2db5a7df1d04ad155b0bef86d0b2fb88167afff3e2e78a7f94b` |
| 13 | `def` | [mkRingExprDecl](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkringexprdecl--f960b67a6fdcd8368d0206b3.md) | 92 | `declaration-track:f960b67a6fdcd8368d0206b395690dd30d908d2638397b0e6c9e91cba1f75f34` |
| 14 | `def` | [mkRingVarDecl](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkringvardecl--276ab15a6593c68f4989b511.md) | 95 | `declaration-track:276ab15a6593c68f4989b511a88e1a0f1afc3ffda47a82c2cae13d30e565a1d0` |
| 15 | `def` | [mkContext](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcontext--aedfb330b5a44c5315a703d3.md) | 98 | `declaration-track:aedfb330b5a44c5315a703d38935aa1eca48a12ed9a8afcb536809050ad3790a` |
| 16 | `def` | [mkRingContext](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkringcontext--d5e27b27420ece3ee4081e42.md) | 124 | `declaration-track:d5e27b27420ece3ee4081e4216c749fc76a573da1557ba1a10ba50b19a290795` |
| 17 | `abbrev` | [withProofContext](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/withproofcontext--b4a8867a1b0dc1b1d350ebd0.md) | 148 | `declaration-track:b4a8867a1b0dc1b1d350ebd0e0d5d120d257293001638af8208646014b27d44f` |
| 18 | `def` | [mkIntModThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkintmodthmprefix--1150b9f3515d8e6c484e285f.md) | 162 | `declaration-track:1150b9f3515d8e6c484e285f7279a760a6c31932b26172b640104c6aeee78d58` |
| 19 | `def` | [mkIntModNoNatDivThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkintmodnonatdivthmprefix--a71896f8036c25eaad120047.md) | 170 | `declaration-track:a71896f8036c25eaad1200477eff64b81cbe69ec0ef358c4141e997b8d6e3555` |
| 20 | `def` | [mkIntModPreThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkintmodprethmprefix--465e3ecabe0666693c584129.md) | 178 | `declaration-track:465e3ecabe0666693c584129ff12cc14a925b0891834bab40c31bd1c022af96f` |
| 21 | `def` | [mkIntModPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkintmodpreordthmprefix--b63a4bc242f9d7aa9fe6c115.md) | 187 | `declaration-track:b63a4bc242f9d7aa9fe6c115cae4697a6334a3684df51c11b7393197573d791f` |
| 22 | `def` | [mkIntModLawfulPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkintmodlawfulpreordthmprefix--ce9363b5d2650c6c5f732ece.md) | 196 | `declaration-track:ce9363b5d2650c6c5f732ece22cac29f6c86aafffe3396d921e93f00505e78c3` |
| 23 | `def` | [mkIntModLinOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkintmodlinordthmprefix--ae4f9378057c85c61a5ef733.md) | 205 | `declaration-track:ae4f9378057c85c61a5ef7331dc3b963a6596955f39cb8aa046488d7278ea395` |
| 24 | `def` | [mkCommRingThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcommringthmprefix--ae795ac60c138e6eee850b60.md) | 213 | `declaration-track:ae795ac60c138e6eee850b60efbae1e3763ab2be3ca9df1c61c29866fb27c68e` |
| 25 | `def` | [mkCommRingNoNatDivThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcommringnonatdivthmprefix--59fdb83197ee3730fce52bcc.md) | 221 | `declaration-track:59fdb83197ee3730fce52bcc094e85ea89cd7aad262679879cc26a0a135c450f` |
| 26 | `def` | [mkCommRingLEThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcommringlethmprefix--8ad79ff2b12df89dfa0bf3dc.md) | 229 | `declaration-track:8ad79ff2b12df89dfa0bf3dc56322a3bfa1c62929194a51254742ca73a0635ba` |
| 27 | `def` | [mkCommRingLTThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcommringltthmprefix--12c9033ef7f49c775a3af51b.md) | 237 | `declaration-track:12c9033ef7f49c775a3af51bd296677dbb28e72f5d94a9d5f35ce108776fc8ee` |
| 28 | `def` | [mkCommRingPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcommringpreordthmprefix--b50b36f4d69a4b1d5d3619bd.md) | 245 | `declaration-track:b50b36f4d69a4b1d5d3619bdf2385b110abbbc700baa50bed0ea1b62c4c5d929` |
| 29 | `def` | [mkCommRingLawfulPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcommringlawfulpreordthmprefix--37fb311facc37730172593ac.md) | 253 | `declaration-track:37fb311facc37730172593ac13781687fa70c01b78872071a0134be043f7e040` |
| 30 | `def` | [mkCommRingLinOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkcommringlinordthmprefix--7b5ce1e18b7cd0acf4cc0a2c.md) | 261 | `declaration-track:7b5ce1e18b7cd0acf4cc0a2c124e17d4adeb1409c28e7406aa8e59d4e59c754a` |
| 31 | `def` | [mkFieldChar0ThmPrefix](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/mkfieldchar0thmprefix--636c8628dcad742084ef0124.md) | 269 | `declaration-track:636c8628dcad742084ef01248410059ddbe9bbff075d4c0ba0180d5e92fdb5d5` |
| 32 | `def` | [RingIneqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/ringineqcnstr-toexprproof--f3e2169713085165d60cfa5c.md) | 273 | `declaration-track:f3e2169713085165d60cfa5c104bd00475fcb073077932cc1dcaa15978d7030d` |
| 33 | `def` | [RingEqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/ringeqcnstr-toexprproof--0703af310017f50f9ff842fc.md) | 296 | `declaration-track:0703af310017f50f9ff842fc6a76ff49ae1546bdec8e3b0de6812a3fdc41faf3` |
| 34 | `def` | [RingDiseqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/ringdiseqcnstr-toexprproof--32a2ea84e2efb5faa07e517a.md) | 314 | `declaration-track:32a2ea84e2efb5faa07e517a8ac1d24acfcaadc27d94a8e12443207855be3486` |
| 35 | `def` | [IneqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/ineqcnstr-toexprproof--d2f915dc32d04db0b151a0d7.md) | 329 | `declaration-track:d2f915dc32d04db0b151a0d73788d8acd124cf30682c9820c0bb6b0542934637` |
| 36 | `def` | [DiseqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/diseqcnstr-toexprproof--8789957e2a1b38cfa645ca42.md) | 414 | `declaration-track:8789957e2a1b38cfa645ca42a0285edff05ce65b2d8fa55f18677751839938a1` |
| 37 | `def` | [EqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/eqcnstr-toexprproof--dc1ff4da075c03af3d90135c.md) | 446 | `declaration-track:dc1ff4da075c03af3d90135c36b5fb3d00cb6bc505c7d2b4c485963e850cbcde` |
| 38 | `def` | [UnsatProof.toExprProofCore](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/unsatproof-toexprproofcore--e1430ad2d91a3b2076114327.md) | 472 | `declaration-track:e1430ad2d91a3b2076114327fcaaf738a5c5949dbb2d8162153fa15e9162d0d7` |
| 39 | `def` | [UnsatProof.toExprProof](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/unsatproof-toexprproof--d70f9bbc64907cfdbdd2f789.md) | 479 | `declaration-track:d70f9bbc64907cfdbdd2f78951dbde5869fc89b4ec0e783a37b411e21daeaf38` |
| 40 | `def` | [setInconsistent](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/setinconsistent--93c0e37a97697d6f536b8e17.md) | 482 | `declaration-track:93c0e37a97697d6f536b8e1790b38895e8cf5552874f90870bdd2ae2385c2ff1` |
| 41 | `def` | [propagateImpEq](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/propagateimpeq--6d5789b5c0ba6dbe04dd2eb7.md) | 490 | `declaration-track:6d5789b5c0ba6dbe04dd2eb76bf5043507d4d8ec0061e1cb6fd206fe5f10da04` |
| 42 | `def` | [IneqCnstr.collectDecVars](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/ineqcnstr-collectdecvars--e35dcc6b2b086e19c70203d0.md) | 507 | `declaration-track:e35dcc6b2b086e19c70203d0b4b8411e3750de89225af4edeeaf6cfd66d398a3` |
| 43 | `def` | [DiseqCnstr.collectDecVars](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/diseqcnstr-collectdecvars--57c54c7634fed7d0775940f5.md) | 519 | `declaration-track:57c54c7634fed7d0775940f5bb6b9a4ab37246389bca494a7504300d6b995b73` |
| 44 | `def` | [EqCnstr.collectDecVars](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/eqcnstr-collectdecvars--422c39e6f8e5124893ca4bd5.md) | 525 | `declaration-track:422c39e6f8e5124893ca4bd594a74bfca105c092f6aa9abfe8dea86fbc4bb417` |
| 45 | `def` | [UnsatProof.collectDecVars](../../../../mathematics/Algebra/Proof/Variantdbe77bad49aee292d9143d61e424a959607c44328670b650e91d0abe9a3dff80.lean/declarations/unsatproof-collectdecvars--66d773e08a7bee4e691e3398.md) | 533 | `declaration-track:66d773e08a7bee4e691e339819a5cd7ceaa722083d90c39f09ade763bea379b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
