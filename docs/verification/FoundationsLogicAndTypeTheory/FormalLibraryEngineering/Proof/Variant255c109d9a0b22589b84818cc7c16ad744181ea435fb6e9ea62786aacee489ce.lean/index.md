# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9b3728968e885da4934f70c241bf6d906cb5091",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9b3728968e885da4934f70c241bf6d906cb5091`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Arith.Int.Simp` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.CommRing` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.VarRename` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.VarRename` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.ToExpr` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/proofm-state--edbb8427d9892528f0940910.md) | 55 | `declaration-track:edbb8427d9892528f0940910ddfd8923ffa757e18637e590d39fda8097b089cb` |
| 2 | `structure` | [ProofM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/proofm-context--16def9bd40a9aa335357ce0e.md) | 75 | `declaration-track:16def9bd40a9aa335357ce0e0e99d5ca7d04ce4b5071de1a1808221fcaa011f9` |
| 3 | `abbrev` | [ProofM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/proofm--f4c5f8966ebd203598a889d1.md) | 87 | `declaration-track:f4c5f8966ebd203598a889d1babd38ddcc61ba75f0326b2b67032c9686d3e933` |
| 4 | `def` | [getContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/getcontext--73cf2fbba7b258bb7dac39ed.md) | 90 | `declaration-track:73cf2fbba7b258bb7dac39ed2a32366517908f2bdf7d0e44b2a39611d4638966` |
| 5 | `def` | [withUnordered](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/withunordered--2027cc37cb62ba88df06c3ad.md) | 97 | `declaration-track:2027cc37cb62ba88df06c3ad8ed559f576ef0508ee13ea38f6027eeeebde878b` |
| 6 | `def` | [getVarMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/getvarmap--474d5f4753cb60a208cecc48.md) | 104 | `declaration-track:474d5f4753cb60a208cecc485cef86f7a09c27d8dda6b9f82d63080d926a15ed` |
| 7 | `def` | [getVarOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/getvarof--e4911ce6f34fac9fba41cbce.md) | 110 | `declaration-track:e4911ce6f34fac9fba41cbce12a770242c36f2ab769b5d24aaa043459d20f440` |
| 8 | `def` | [caching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/caching--6f4fcc8497a84a9dd7bac39b.md) | 114 | `declaration-track:6f4fcc8497a84a9dd7bac39b7b955402218db3e1789aa81d91e94eb13ecfc212` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/macro--20c238f58d727896b3929608.md) | 123 | `declaration-track:20c238f58d727896b3929608bce2c9b751c8f1de040060614b6858fe68934bb2` |
| 10 | `def` | [mkVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkvardecl--5adf7fa5b5dbc311e9ff42da.md) | 130 | `declaration-track:5adf7fa5b5dbc311e9ff42dacbaebb36163cdbe667cd819936371a61c40bdd1e` |
| 11 | `def` | [mkPolyDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkpolydecl--637b0e331fd4195f7a167cef.md) | 136 | `declaration-track:637b0e331fd4195f7a167cef736026758b198c4d8153b59768029d773366134d` |
| 12 | `def` | [mkExprDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkexprdecl--bc17e45ae73c5c30fbd91473.md) | 142 | `declaration-track:bc17e45ae73c5c30fbd9147382bac1128e4352d1ff8031f57f9c057a25984611` |
| 13 | `def` | [mkRingPolyDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkringpolydecl--20d1f2123eec8e1d2aa01ff9.md) | 148 | `declaration-track:20d1f2123eec8e1d2aa01ff9b33e922f29b6dcac1740c421ea937aba6bf0adf8` |
| 14 | `def` | [mkRingExprDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkringexprdecl--6e8164419acb0c785a3b8448.md) | 151 | `declaration-track:6e8164419acb0c785a3b84488670da7313340d51a4b8ebef594542bc42f63c41` |
| 15 | `def` | [toContextExprCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/tocontextexprcore--1a8e283825db4b6185d349ad.md) | 154 | `declaration-track:1a8e283825db4b6185d349addfcf4ea389dde7aa1193599e7006c58294dadc88` |
| 16 | `def` | [mkContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkcontext--2a6bae98a247c8e286a2490d.md) | 162 | `declaration-track:2a6bae98a247c8e286a2490de59085e8d70de0bebaac23dba40b35264466df35` |
| 17 | `def` | [mkRingContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkringcontext--e6c3c8a1525999b51bc68063.md) | 182 | `declaration-track:e6c3c8a1525999b51bc680632e22f43c46d1f8a192a932116b90d8944289347e` |
| 18 | `def` | [withProofContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/withproofcontext--e7e021ac87946f03533b7199.md) | 200 | `declaration-track:e7e021ac87946f03533b71990a36ad562f61c817bf717e24c24727057f62bb78` |
| 19 | `def` | [getRingContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/getringcontext--3b0609a4a8b466fac2977fc5.md) | 216 | `declaration-track:3b0609a4a8b466fac2977fc521316f34dc763f1ce2aa86cfdfb3e0713bda268f` |
| 20 | `def` | [DvdCnstr.get_d_a](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/dvdcnstr-get-d-a--8122089ecc72869c52b4ef92.md) | 219 | `declaration-track:8122089ecc72869c52b4ef92a3cc598dfc97131a565d75f01decb7d4ece145a7` |
| 21 | `def` | [getCurrVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/getcurrvars--26dd2399a0a0223defd6ffc1.md) | 224 | `declaration-track:26dd2399a0a0223defd6ffc129be8d0ba3c0ea28918a47761f048ac04202dbb6` |
| 22 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofMState.Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.Int.Internal.Linear.Poly.denoteExprUsingCurrVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-proof--1a651d290a19516fa6709be8.md) | 231 | `declaration-track:1a651d290a19516fa6709be8391a38bf821961ebbbc24662aee06b577c85416f` |
| 23 | `inductive` | [MulEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/muleqproof--e6b3239d644b4b8c66c11de9.md) | 235 | `declaration-track:e6b3239d644b4b8c66c11de9dac6d7e119d9bb1a4478f3eaf99a07ba72652a88` |
| 24 | `opaque` | [EqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/eqcnstr-toexprproof--0c957efe9501b3f3cf655d67.md) | 242 | `declaration-track:0c957efe9501b3f3cf655d67fccf6cd7587cde0be7c2a27144feca12b55ecf94` |
| 25 | `def` | [mkMulEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkmuleqproof--1a6892f544b3aa38cc94d46e.md) | 244 | `declaration-track:1a6892f544b3aa38cc94d46e8994bc88b4d5b66caa7d2fb5e0b38b3f8e8d4199` |
| 26 | `def` | [mkDivEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkdiveqproof--d7caac891701d280d0f5b072.md) | 289 | `declaration-track:d7caac891701d280d0f5b072c1613c60acf07c9969a66f58cc1ff4945d38c210` |
| 27 | `def` | [mkModEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkmodeqproof--decec0f1009e5af1cc45e47e.md) | 304 | `declaration-track:decec0f1009e5af1cc45e47ed7da4871e86adf50c91587503335c50a5e24ed83` |
| 28 | `def` | [mkPowEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/mkpoweqproof--2b16ad3ba4600b59278e8db1.md) | 319 | `declaration-track:2b16ad3ba4600b59278e8db1a4b23919b79b0ac5f8740a42319300350a554340` |
| 29 | `def` | [EqCnstr.toExprProofImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/eqcnstr-toexprproofimpl--d85dfe1741051ceacca52f17.md) | 340 | `declaration-track:d85dfe1741051ceacca52f17829a86c4fa0135d894932cafc320b07816bcba6a` |
| 30 | `def` | [DvdCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/dvdcnstr-toexprproof--ea9ca1d398f53a7bc78c3255.md) | 395 | `declaration-track:ea9ca1d398f53a7bc78c32552a9fd6053f3a0cca224f34fb2357b558b732ad58` |
| 31 | `def` | [LeCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/lecnstr-toexprproof--471932b8c248253301d7501e.md) | 459 | `declaration-track:471932b8c248253301d7501e67ef3925ce8d38b8d97aed644e1e75d46ac1e287` |
| 32 | `def` | [DiseqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/diseqcnstr-toexprproof--35e8808e11a5cb2c9098b2af.md) | 538 | `declaration-track:35e8808e11a5cb2c9098b2afd2a9a2aa6854219e819122015ee71259b092147c` |
| 33 | `def` | [CooperSplit.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/coopersplit-toexprproof--0aaa26d5b2086a73f9234594.md) | 564 | `declaration-track:0aaa26d5b2086a73f923459401d0dc33a9754640be3eaaebbc1c3c8fcdd56768` |
| 34 | `def` | [UnsatProof.toExprProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/unsatproof-toexprproofcore--2e9b83a5a8ce9f5a95273d11.md) | 603 | `declaration-track:2e9b83a5a8ce9f5a95273d1115c4f6111151393ebdc26e6ae491a4560e206fb8` |
| 35 | `def` | [UnsatProof.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/unsatproof-toexprproof--9058bddb4964a7e52020eb19.md) | 626 | `declaration-track:9058bddb4964a7e52020eb194838a2b4e25967d414b40f057166665a07c75f6e` |
| 36 | `def` | [setInconsistent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/setinconsistent--8b0a9fc18188bb512946271d.md) | 629 | `declaration-track:8b0a9fc18188bb512946271d3f4040e75178785cdb9f7f6902aaf89bdfe4cad2` |
| 37 | `def` | [EqCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/eqcnstr-collectdecvars--c30811e23a32705a411edf32.md) | 644 | `declaration-track:c30811e23a32705a411edf3234b98473e3d3cca1d1d4c59271cca6b3ba93316a` |
| 38 | `def` | [CooperSplit.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/coopersplit-collectdecvars--e112c88b0489725e2b5e4690.md) | 654 | `declaration-track:e112c88b0489725e2b5e4690d3070025824e944ac6998f3c1642f636362906ba` |
| 39 | `def` | [DvdCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/dvdcnstr-collectdecvars--c2f529722efc0054566d6c47.md) | 663 | `declaration-track:c2f529722efc0054566d6c47ec51aa06e575a75ffc56d2a516d029d0c53f8634` |
| 40 | `def` | [LeCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/lecnstr-collectdecvars--bea7b6abf93bbe1db8edcd72.md) | 670 | `declaration-track:bea7b6abf93bbe1db8edcd7257bb589b35caafd904fd5c921a9893a41d92da66` |
| 41 | `def` | [DiseqCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/diseqcnstr-collectdecvars--b23678284cfb0d9ba4c60092.md) | 681 | `declaration-track:b23678284cfb0d9ba4c600920489b01638572ed616990d693736e28f9a6b5761` |
| 42 | `def` | [UnsatProof.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/declarations/unsatproof-collectdecvars--3db5e1505912f86a905ccfa3.md) | 689 | `declaration-track:3db5e1505912f86a905ccfa3cc344ad183087c5247f444f34852928083120336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
