# Verification target: GRWTSK.Algebra.Proof.Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e3ee0f2dfe573af0a3a7bf22c3c966cbec0f68b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/index.md) · [Full source](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e3ee0f2dfe573af0a3a7bf22c3c966cbec0f68b`.

Source path: `GRWTSK/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.RArray` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.ToExpr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.VarRename` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContextExpr](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/tocontextexpr--8733dab2268abea7283f4565.md) | 27 | `declaration-track:8733dab2268abea7283f4565df9c918698a859b02174fc1e3f3c140295f65e34` |
| 2 | `def` | [toSContextExpr'](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/toscontextexpr--baa51b9c43bf9cedb9fbd170.md) | 34 | `declaration-track:baa51b9c43bf9cedb9fbd1707d319f8e2b07ad14277e5b335f45237d14153808` |
| 3 | `def` | [toSContextExpr](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/toscontextexpr--8bb999902ecc33b1d9b596cc.md) | 42 | `declaration-track:8bb999902ecc33b1d9b596cc2bbb3631374bebffd0cef665c918b767332f5022` |
| 4 | `def` | [PolyDerivation.getMultiplier](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/polyderivation-getmultiplier--18a33b14695ddc6e5a1a216c.md) | 46 | `declaration-track:18a33b14695ddc6e5a1a216c9e67cb47f1f7cb789db9e6448a0adca1e93a49e9` |
| 5 | `def` | [throwNoNatZeroDivisors](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/thrownonatzerodivisors--ac10495afa1c0c194ce65b5e.md) | 55 | `declaration-track:ac10495afa1c0c194ce65b5ef3be321b30e2bfaa852627189a40185c47361d74` |
| 6 | `def` | [getPolyConst](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/getpolyconst--45c85eac66c8d261fe437248.md) | 58 | `declaration-track:45c85eac66c8d261fe437248bca8ebada503ec9521bdb773d8d1696a9bc15dac` |
| 7 | `structure` | [ProofM.State](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/proofm-state--206eccc65c50705d20a1c465.md) | 63 | `declaration-track:206eccc65c50705d20a1c465fae0abb767ce783ea70859d5c27df5157f6c5f6b` |
| 8 | `structure` | [ProofM.Context](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/proofm-context--bc5330409d8568e60c2d9da2.md) | 70 | `declaration-track:bc5330409d8568e60c2d9da275733989555b54dbba3bb7336bd5593845189b84` |
| 9 | `abbrev` | [ProofM](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/proofm--d641d474c075d5bec7e3c0a4.md) | 75 | `declaration-track:d641d474c075d5bec7e3c0a467d84d840f7570ee640a7b734d960e61f1f93ee8` |
| 10 | `abbrev` | [getContext](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/getcontext--cc74e429cff507cd69fe94b2.md) | 78 | `declaration-track:cc74e429cff507cd69fe94b23179c10ea023192ea468e1478c4c321cac63bc8c` |
| 11 | `abbrev` | [getSContext](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/getscontext--41c7076d52adb801028fad80.md) | 85 | `declaration-track:41c7076d52adb801028fad807b16f06e18bdf7f26efce3191cd8345764c26ad5` |
| 12 | `abbrev` | [caching](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/caching--c557dd610520a217c25cd189.md) | 90 | `declaration-track:c557dd610520a217c25cd1897e87307a86f82e5272e623f15c33f872b1f9192a` |
| 13 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/macro--abf2b3a89329d73899f50564.md) | 99 | `declaration-track:abf2b3a89329d73899f50564774121f502ac499b9fc9629748b4ace4370b2bcd` |
| 14 | `def` | [mkPolyDecl](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkpolydecl--6d150fc5a94cf72f8c9be3cc.md) | 106 | `declaration-track:6d150fc5a94cf72f8c9be3cc10f5aedc224c00e365bd6d085c07d9ca511f8620` |
| 15 | `def` | [mkExprDecl](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkexprdecl--9948da8d34eb0e455cc698e0.md) | 109 | `declaration-track:9948da8d34eb0e455cc698e06d86cc796717aad9672bc5daa09b65e00b41a45d` |
| 16 | `def` | [mkSExprDecl](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mksexprdecl--507f3adc0c64423b98ccfcca.md) | 112 | `declaration-track:507f3adc0c64423b98ccfcca1a914466a8094f58541bc995f50c4802f03b8b6b` |
| 17 | `def` | [mkMonDecl](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkmondecl--b1cad65c6bafca5c954e43ae.md) | 115 | `declaration-track:b1cad65c6bafca5c954e43ae44d59bc8b495d1064761163cb5df7153dfeef56f` |
| 18 | `def` | [mkStepBasicPrefix](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkstepbasicprefix--e15aa52a42a25643729f177e.md) | 118 | `declaration-track:e15aa52a42a25643729f177e72094e15ad153a6b3cf0bd547d4fafab2c4ac598` |
| 19 | `def` | [mkStepPrefix](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkstepprefix--84bae9e73147fd01a4aebc25.md) | 123 | `declaration-track:84bae9e73147fd01a4aebc259f154af5a4fd51da12de037d2df7bbe7940373f6` |
| 20 | `def` | [getSemiringIdOf](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/getsemiringidof--734cd3b7491bfd71df2b0666.md) | 131 | `declaration-track:734cd3b7491bfd71df2b066637e17dfaae073cb1c0334498f19877fd73bf0c05` |
| 21 | `def` | [getSemiringOf](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/getsemiringof--459f3532e706067489ad6459.md) | 135 | `declaration-track:459f3532e706067489ad6459ad7a83848d0a314f89edbd2d4c35356952357385` |
| 22 | `def` | [mkSemiringPrefix](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mksemiringprefix--155e350534c4fb7b0a10cade.md) | 138 | `declaration-track:155e350534c4fb7b0a10cadebe0fc147e20f4c7e6f6c5d8cbfea4b4d08394763` |
| 23 | `def` | [mkSemiringAddRightCancelPrefix](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mksemiringaddrightcancelprefix--ef16cf20048dd320ef49a114.md) | 143 | `declaration-track:ef16cf20048dd320ef49a11403e544cd3b79490352e10ba932aae0eb2dfc628a` |
| 24 | `def` | [_root_.Lean.Meta.Grind.Arith.CommRing.EqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/root-lean-meta-grind-arith-commring-eqcnstr-toexprproof--253040b27ecdcd36fb63b90c.md) | 151 | `declaration-track:253040b27ecdcd36fb63b90c4b4ecf3ba2f0efe460bf189af629fa64de75b9c9` |
| 25 | `def` | [derivToExprProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/derivtoexprproof--4668ab98dfb1dc9249de1e67.md) | 195 | `declaration-track:4668ab98dfb1dc9249de1e6789fe128e00b6a6a88484519cffc1e9e2507a3158` |
| 26 | `def` | [mkImpEqExprProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkimpeqexprproof--5a6aa80ac9236fd446398a5a.md) | 226 | `declaration-track:5a6aa80ac9236fd446398a5a818e68d161cd9a697732174833bf33484764ee20` |
| 27 | `def` | [mkContext](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkcontext--1b01402b99c88bfafa0cf4cf.md) | 237 | `declaration-track:1b01402b99c88bfafa0cf4cfa40827ad9aede4a05b43a6bae9ca923ecc0c8010` |
| 28 | `def` | [mkSemiringContext](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mksemiringcontext--0d2584679a5a3dcd657f1046.md) | 258 | `declaration-track:0d2584679a5a3dcd657f1046ee99131eaad0e78a41ba88f366c7441ab4655ab9` |
| 29 | `abbrev` | [withProofContext](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/withproofcontext--0da515df98518ec49bdcd54f.md) | 275 | `declaration-track:0da515df98518ec49bdcd54fb3a9f10724d01bd405f323674866f0020a985775` |
| 30 | `def` | [EqCnstr.setUnsat](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/eqcnstr-setunsat--ab0effe3dc32811599d58adc.md) | 286 | `declaration-track:ab0effe3dc32811599d58adc2f502ea9a7eb9097674a68abe730b835e1e40c72` |
| 31 | `def` | [DiseqCnstr.setUnsat](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/diseqcnstr-setunsat--975913933297018c78cc3320.md) | 302 | `declaration-track:975913933297018c78cc33204f356ef175de0dcf307c72d4b97d08594f748956` |
| 32 | `def` | [propagateEq](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/propagateeq--06b459e76023d1300a082a04.md) | 313 | `declaration-track:06b459e76023d1300a082a046cc8612c2a6df468a0777b26ac266bc04e82e200` |
| 33 | `def` | [setSemiringDiseqUnsat](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/setsemiringdisequnsat--707e4b5bb521fc97f015a45c.md) | 324 | `declaration-track:707e4b5bb521fc97f015a45cea3541921916aaaf125169fee936989858331019` |
| 34 | `def` | [setNonCommRingDiseqUnsat](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/setnoncommringdisequnsat--1337eb190646adb6f57c003f.md) | 343 | `declaration-track:1337eb190646adb6f57c003f1093c42de2b7eb62ad65b564f3290c4857769d55` |
| 35 | `def` | [setNonCommSemiringDiseqUnsat](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/setnoncommsemiringdisequnsat--4b53ac361c6f67803c2ea6cc.md) | 365 | `declaration-track:4b53ac361c6f67803c2ea6ccbe88b9d8d8f82c6bf0944ddcc1f42e48998522a3` |
| 36 | `structure` | [NormResult](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/normresult--9445cbd15058b15389435e83.md) | 380 | `declaration-track:9445cbd15058b15389435e83b1ce95bcc68bc95fd0719f04092a009ac516d0cd` |
| 37 | `def` | [norm](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/norm--8d31c6a290a4630e2bafb97c.md) | 387 | `declaration-track:8d31c6a290a4630e2bafb97cb5bffe66ed952e0e775c12dab2a785d295850942` |
| 38 | `def` | [mkLeIffProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkleiffproof--a505e085980f985bb33c63ae.md) | 398 | `declaration-track:a505e085980f985bb33c63ae3b0a423910dc988053a1c2ec4079c96d5716847f` |
| 39 | `def` | [mkLtIffProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkltiffproof--563f8e68510223a77491782c.md) | 410 | `declaration-track:563f8e68510223a77491782c3cc882373039b20d540a19dfa36844c24c2717f6` |
| 40 | `def` | [mkEqIffProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mkeqiffproof--fe59b711fc2f9b8ac24458c7.md) | 422 | `declaration-track:fe59b711fc2f9b8ac24458c70523a03de0905e2556867ef1e34f612b44b7f7b9` |
| 41 | `def` | [mkTermEqProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mktermeqproof--e2049f2a6b8211a98f09b11d.md) | 437 | `declaration-track:e2049f2a6b8211a98f09b11d258a8c37b91f4f2e6ba6a34988e30265fe281e5a` |
| 42 | `def` | [mkNonCommLeIffProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mknoncommleiffproof--ed9d744607e05494398d82ee.md) | 447 | `declaration-track:ed9d744607e05494398d82ee7eeb356bbf2ff8ac5fc3cf5b9fa5e6abaec8eabb` |
| 43 | `def` | [mkNonCommLtIffProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mknoncommltiffproof--02aadd518b1595167b78a2ab.md) | 459 | `declaration-track:02aadd518b1595167b78a2ab44fd9b966679de96f9e7f38cdc7495dc9e665b7e` |
| 44 | `def` | [mkNonCommEqIffProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mknoncommeqiffproof--863b6def8de9e0a600912f79.md) | 471 | `declaration-track:863b6def8de9e0a600912f792277aff2d7d3a370a67572d463054b73b2cd8a64` |
| 45 | `def` | [mkNonCommTermEqProof](../../../../mathematics/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/declarations/mknoncommtermeqproof--c99fafdbee5c5723aa669e4e.md) | 486 | `declaration-track:c99fafdbee5c5723aa669e4e1a579fae5be2bc9f104c8ae5e29c9436ac3fe949` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
