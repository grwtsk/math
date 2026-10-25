# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf84cd10edc5ac314dcbe6f644a88942bae39c94",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf84cd10edc5ac314dcbe6f644a88942bae39c94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Arith.Int.Simp` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.CommRing` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.VarRename` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.VarRename` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.ToExpr` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/proofm-state--c318c145e519bb6e55e8735c.md) | 47 | `declaration-track:c318c145e519bb6e55e8735c4a0632b7c6fbce6fbb7fcc31db78608cba405e6d` |
| 2 | `structure` | [ProofM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/proofm-context--e70f9705c4e4111077472b36.md) | 67 | `declaration-track:e70f9705c4e4111077472b3601ad89151bca9dda42f0e874e89043399830fb4d` |
| 3 | `abbrev` | [ProofM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/proofm--eb2238f86757c9c628c2dc10.md) | 79 | `declaration-track:eb2238f86757c9c628c2dc1094a6040d061ee0f10f4306df20eb686c8b0f53f8` |
| 4 | `def` | [getContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/getcontext--f581456ca29e6df6c7171a53.md) | 82 | `declaration-track:f581456ca29e6df6c7171a532ca07df689d236edab00ccdbfc49366028e0ab4d` |
| 5 | `def` | [withUnordered](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/withunordered--9fb2b6a3ee2e7cd0da596c4f.md) | 89 | `declaration-track:9fb2b6a3ee2e7cd0da596c4fe9dd882467815ed50da984057adee1520773c887` |
| 6 | `def` | [getVarMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/getvarmap--0afc1d4cbcd5dac9861b63b8.md) | 96 | `declaration-track:0afc1d4cbcd5dac9861b63b84edb22a16249ef2c2182f1bc5722831541968987` |
| 7 | `def` | [getVarOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/getvarof--77007d849dc2c0165dcb1f56.md) | 102 | `declaration-track:77007d849dc2c0165dcb1f5690128ef9d46399e47531d68012055126e3a8907d` |
| 8 | `def` | [caching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/caching--5d139ec0c4918bb878214a9b.md) | 106 | `declaration-track:5d139ec0c4918bb878214a9bbc6a276dcbebf7d79736758359f2db2008cd20dc` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/macro--fad4fddfaafad05f130652a2.md) | 115 | `declaration-track:fad4fddfaafad05f130652a23af506f2461a2d242b8bc00fcd47bd7c4752a9ba` |
| 10 | `def` | [mkVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkvardecl--ac161d2ad085e0a983a2d09b.md) | 122 | `declaration-track:ac161d2ad085e0a983a2d09b1f64773b2ca223c45d0466212efa2d728eca2b30` |
| 11 | `def` | [mkPolyDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkpolydecl--9237c85993b96260f0cd26f5.md) | 128 | `declaration-track:9237c85993b96260f0cd26f54e19b36af4a9d7be57c3cccfc021112584a8c60e` |
| 12 | `def` | [mkExprDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkexprdecl--be77db6193a6e4eaa81d37d7.md) | 134 | `declaration-track:be77db6193a6e4eaa81d37d76ff62d057f8000de3c957ed11ef7731915a8dba1` |
| 13 | `def` | [mkRingPolyDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkringpolydecl--8bb480d5d5f5432bde64b8b5.md) | 140 | `declaration-track:8bb480d5d5f5432bde64b8b503efdc67ff146230889292c82bfdcb9112deb363` |
| 14 | `def` | [mkRingExprDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkringexprdecl--d012553f225a76ead8f7c2c9.md) | 143 | `declaration-track:d012553f225a76ead8f7c2c97552d5b961826f5efa6c719417c8eaea6bf855e0` |
| 15 | `def` | [toContextExprCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/tocontextexprcore--13dec6cc4b95d504600fd04c.md) | 146 | `declaration-track:13dec6cc4b95d504600fd04c91982e8f9a65b2e03d9c80fae8a5352cdca10998` |
| 16 | `def` | [mkContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkcontext--24ce98360b2b3f7c461c6b86.md) | 154 | `declaration-track:24ce98360b2b3f7c461c6b8671e37cfe0d4b2db22bfb153616c6214c7e3edb08` |
| 17 | `def` | [mkRingContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkringcontext--245b0d2dec39883580d88ef8.md) | 174 | `declaration-track:245b0d2dec39883580d88ef8cd408179b534a623c281b0572c33eb9616b94471` |
| 18 | `def` | [withProofContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/withproofcontext--ee3a4608bb726bba497dcdc2.md) | 192 | `declaration-track:ee3a4608bb726bba497dcdc2b693689b9d1c3b4fc19fcff93de69a01d2b6acd1` |
| 19 | `def` | [getRingContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/getringcontext--5f1d7a7863d6128d052467ed.md) | 208 | `declaration-track:5f1d7a7863d6128d052467edbbb777839f76864520ee6c2b135045bd228faa70` |
| 20 | `def` | [DvdCnstr.get_d_a](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/dvdcnstr-get-d-a--d909edb87471c18e2b3a41aa.md) | 211 | `declaration-track:d909edb87471c18e2b3a41aa447d34149842390651903723ba0eae48f222f8a8` |
| 21 | `def` | [getCurrVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/getcurrvars--a3610318367c35639952a3ca.md) | 216 | `declaration-track:a3610318367c35639952a3cabf8911ceef9792c7ca8866236892a46ada53fc22` |
| 22 | `def` | [_root_.Int.Internal.Linear.Poly.denoteExprUsingCurrVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/root-int-internal-linear-poly-denoteexprusingcurrvars--66366194035ee663be9e3811.md) | 223 | `declaration-track:66366194035ee663be9e3811c04f7814a34ed0670e24f8af782a68072fcb793d` |
| 23 | `inductive` | [MulEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/muleqproof--941aa917134ae3ec9f8e273b.md) | 227 | `declaration-track:941aa917134ae3ec9f8e273ba17f7e5d37bebe1177f1414ddfcf317b0b66a8e1` |
| 24 | `opaque` | [EqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/eqcnstr-toexprproof--1cbfc48a0e47588a7da93fa9.md) | 234 | `declaration-track:1cbfc48a0e47588a7da93fa9c112ae8af17694da6bfada4ede920bd94d601b1b` |
| 25 | `def` | [mkMulEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkmuleqproof--9bac78b4024a9df55eed6894.md) | 236 | `declaration-track:9bac78b4024a9df55eed6894f5bc5c50f4534d57b62fe84a82640d608e051763` |
| 26 | `def` | [mkDivEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkdiveqproof--3bc7c55c2227b5f0ae3490f2.md) | 281 | `declaration-track:3bc7c55c2227b5f0ae3490f27f5aaad785f611c4499cdff9c510280f13efdde2` |
| 27 | `def` | [mkModEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkmodeqproof--6c35c936929abe5ef22fa2c1.md) | 296 | `declaration-track:6c35c936929abe5ef22fa2c1bdb8b03a6d9945f74c750700ed3499247e7417f5` |
| 28 | `def` | [mkPowEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/mkpoweqproof--2dbc2ad9c9d681aec1a293f7.md) | 311 | `declaration-track:2dbc2ad9c9d681aec1a293f7f6efc14d214f80cd5d063b1bc8842878cf557756` |
| 29 | `def` | [EqCnstr.toExprProofImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/eqcnstr-toexprproofimpl--25407ec2f7826a0ef6bac8aa.md) | 332 | `declaration-track:25407ec2f7826a0ef6bac8aa921eccea9983b0a0daf664d43ca6ee02897a5cc7` |
| 30 | `def` | [DvdCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/dvdcnstr-toexprproof--15ce5af2a01095d1f363e830.md) | 387 | `declaration-track:15ce5af2a01095d1f363e8301b9f7190c00a249d9ee4b098c2d680d22d69cb3e` |
| 31 | `def` | [LeCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/lecnstr-toexprproof--1855beef9654e66f98c45006.md) | 451 | `declaration-track:1855beef9654e66f98c450066f0f5e9fc39083a07ae65a0c74867b6455580544` |
| 32 | `def` | [DiseqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/diseqcnstr-toexprproof--399c0c4200a46d6ce657849c.md) | 530 | `declaration-track:399c0c4200a46d6ce657849c65fcc52b3284b29ff896582f029c3714a592f94a` |
| 33 | `def` | [CooperSplit.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/coopersplit-toexprproof--d66c36178d6590e48ebdc20f.md) | 556 | `declaration-track:d66c36178d6590e48ebdc20f631be75b0e829a00d2b6d9eb883a7be1fb357eb8` |
| 34 | `def` | [UnsatProof.toExprProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/unsatproof-toexprproofcore--a4d1b4182ddb2150096fd397.md) | 595 | `declaration-track:a4d1b4182ddb2150096fd397143d486aedd8ec4a6e69c6aa942e36baaed4d703` |
| 35 | `def` | [UnsatProof.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/unsatproof-toexprproof--1aea43866e8457d0e8db9453.md) | 618 | `declaration-track:1aea43866e8457d0e8db94536b0b551ad4a2b40c498a1e40cdc432eec7dbcf60` |
| 36 | `def` | [setInconsistent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/setinconsistent--03cb1810fef2c7d88b903d83.md) | 621 | `declaration-track:03cb1810fef2c7d88b903d83b3a0b8b9e3d66ed767458987ff0d93844a03e011` |
| 37 | `def` | [EqCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/eqcnstr-collectdecvars--74e312ce53cf729755aa0299.md) | 636 | `declaration-track:74e312ce53cf729755aa0299611e11629b68d20dea12e7315f9e6888f84a3968` |
| 38 | `def` | [CooperSplit.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/coopersplit-collectdecvars--0e6e1e5804b506ded37c8b18.md) | 646 | `declaration-track:0e6e1e5804b506ded37c8b18c85855abef954665b38187c8d598d2d2a49a4749` |
| 39 | `def` | [DvdCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/dvdcnstr-collectdecvars--ecddc895508200642481cf2d.md) | 655 | `declaration-track:ecddc895508200642481cf2da3dcb76ce0e1be80ab58bd5a9187f462b77aac5c` |
| 40 | `def` | [LeCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/lecnstr-collectdecvars--aae6b4061d2e40012d716334.md) | 662 | `declaration-track:aae6b4061d2e40012d716334b77e3c7856aacae8abdf4f3a0be065a12e32e07f` |
| 41 | `def` | [DiseqCnstr.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/diseqcnstr-collectdecvars--68a02895d82487f7dec9a3f3.md) | 673 | `declaration-track:68a02895d82487f7dec9a3f304e7b4b9422de50786d09d97cdc75e7d28e5609a` |
| 42 | `def` | [UnsatProof.collectDecVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/declarations/unsatproof-collectdecvars--40b56fda2a762b86a0159975.md) | 681 | `declaration-track:40b56fda2a762b86a0159975e81fe37a08575296c07766bf4d213d4295c4e00b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
