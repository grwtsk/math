# Verification target: GRWTSK.Algebra.Proof.Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09b069e22dfcacb3208604738b57eeb6bd44578b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/index.md) · [Full source](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09b069e22dfcacb3208604738b57eeb6bd44578b`.

Source path: `GRWTSK/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Module.OfNatModule` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Data.RArray` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.ToExpr` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.VarRename` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.ToExpr` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.VarRename` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContextExpr](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/tocontextexpr--b8565908e2211cf5fda80e62.md) | 38 | `declaration-track:b8565908e2211cf5fda80e62f2eea11b6c27c92802532178655fe085a9f4824f` |
| 2 | `structure` | [ProofM.State](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/proofm-state--6b1bcc6fae0422aeb9550f04.md) | 45 | `declaration-track:6b1bcc6fae0422aeb9550f04456b928fdf3f2207eef138c1dac20169b446364e` |
| 3 | `structure` | [ProofM.Context](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/proofm-context--5abaf94e00b5f59e2993447d.md) | 54 | `declaration-track:5abaf94e00b5f59e2993447d03081c4be7b4fa34d04dc67614d1ec9ccbffb7a8` |
| 4 | `abbrev` | [ProofM](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/proofm--3ac3f61350d6df9b796cff7a.md) | 59 | `declaration-track:3ac3f61350d6df9b796cff7abc639f0ef8895f3485527607a7f922a0cd396d6a` |
| 5 | `abbrev` | [getContext](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/getcontext--9882d08861ad6761d093ef8e.md) | 62 | `declaration-track:9882d08861ad6761d093ef8e08bf7cfd4ff4b2a1ab126ad6d56277078f9ed7d7` |
| 6 | `abbrev` | [getRingContext](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/getringcontext--3f9b59a35cbd9611778ceda4.md) | 69 | `declaration-track:3f9b59a35cbd9611778ceda43132c126ebfb994ab7fc1f0bac17bf24cea05689` |
| 7 | `abbrev` | [caching](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/caching--764d192e83df189a02e7160f.md) | 72 | `declaration-track:764d192e83df189a02e7160f69bf3318c07b331d42b131f3144d7ae29fc7a46f` |
| 8 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/macro--9c6ab5b59ad7cc05d31d1df2.md) | 81 | `declaration-track:9c6ab5b59ad7cc05d31d1df2d46ba73e707ec53fafdbe9447879c17c69cf77eb` |
| 9 | `def` | [mkVarDecl](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkvardecl--4a48fee341a3e0376af301a0.md) | 88 | `declaration-track:4a48fee341a3e0376af301a099edd69284d397b20a8f22850c58ca65ae82b18c` |
| 10 | `def` | [mkPolyDecl](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkpolydecl--2c537b066a3ec3309bbb9393.md) | 91 | `declaration-track:2c537b066a3ec3309bbb939309d1aa01ed000718e482297c7258706df651fb6b` |
| 11 | `def` | [mkExprDecl](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkexprdecl--d375fd92494bd3c8a2301351.md) | 94 | `declaration-track:d375fd92494bd3c8a23013515e0301b4a020a699d8ab1d21cd783c95b62bac6b` |
| 12 | `def` | [mkRingPolyDecl](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkringpolydecl--50401d21368f6f344612cb07.md) | 97 | `declaration-track:50401d21368f6f344612cb0771fb26193537fefc9de9a0eadfd5454a21d4ea5f` |
| 13 | `def` | [mkRingExprDecl](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkringexprdecl--18f7c846c871c465d4248472.md) | 100 | `declaration-track:18f7c846c871c465d4248472dd83319f0a9514ea8e651fc4e833e952ff4f3d78` |
| 14 | `def` | [mkRingVarDecl](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkringvardecl--8665b90c4baef6b2eeaa2692.md) | 103 | `declaration-track:8665b90c4baef6b2eeaa2692addc5cb6141105cb5a3e62e2b2c9229303f99e9a` |
| 15 | `def` | [mkContext](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcontext--c37ed3c3ba4da22a7a3c560e.md) | 106 | `declaration-track:c37ed3c3ba4da22a7a3c560e4da0ac6aeabe3bc8ff79f118f9734c82982b21b2` |
| 16 | `def` | [mkRingContext](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkringcontext--0f01a4cc200ed0070e8a8926.md) | 132 | `declaration-track:0f01a4cc200ed0070e8a892638dcbe3a21e3633c74ed1a813779d85312660f36` |
| 17 | `abbrev` | [withProofContext](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/withproofcontext--d124474d2bcb67eb896ef222.md) | 156 | `declaration-track:d124474d2bcb67eb896ef222690dd2ff9ce688d24f6376c4e982f5534224257e` |
| 18 | `def` | [mkIntModThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkintmodthmprefix--d7dbc552d3cf9697b735bee2.md) | 170 | `declaration-track:d7dbc552d3cf9697b735bee2c3deae98ffc5a03a4a1e4cd0c608d4a5968f2fa7` |
| 19 | `def` | [mkIntModNoNatDivThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkintmodnonatdivthmprefix--a2632485fda658dbb8f23aee.md) | 178 | `declaration-track:a2632485fda658dbb8f23aee3cca8ca79b489c1cbf01ed4f7507241f799e77e4` |
| 20 | `def` | [mkIntModPreThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkintmodprethmprefix--61e91150da210231121153cc.md) | 186 | `declaration-track:61e91150da210231121153cc051d38500fef85860c1ed2dcd8b3911ebb99fa5b` |
| 21 | `def` | [mkIntModPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkintmodpreordthmprefix--591932c8256dea8b1e3f9a62.md) | 195 | `declaration-track:591932c8256dea8b1e3f9a62b44b5a8d0c81714cd857cd922d100920c1fc5bac` |
| 22 | `def` | [mkIntModLawfulPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkintmodlawfulpreordthmprefix--deaec52f8ca561f3df566547.md) | 204 | `declaration-track:deaec52f8ca561f3df566547b630e390af2157738b6772e6519130a1663763ba` |
| 23 | `def` | [mkIntModLinOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkintmodlinordthmprefix--fdf49387c10d855cc68c2902.md) | 213 | `declaration-track:fdf49387c10d855cc68c29029c1b899c824c3b62371839703127fd99d6368f89` |
| 24 | `def` | [mkCommRingThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcommringthmprefix--dab5633d6edad16dd882b174.md) | 221 | `declaration-track:dab5633d6edad16dd882b174f324eba5222d2a76571ed05aef0852576aedaa3c` |
| 25 | `def` | [mkCommRingNoNatDivThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcommringnonatdivthmprefix--9f667fc3012ec41877ff5bfd.md) | 229 | `declaration-track:9f667fc3012ec41877ff5bfdc0b3c84c6855eeb4d93ac825ce9de442ab380cac` |
| 26 | `def` | [mkCommRingLEThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcommringlethmprefix--db0bd8abdb1bbf1952f19ab1.md) | 237 | `declaration-track:db0bd8abdb1bbf1952f19ab101f5c604869193ba7afb24203ba19c33ac8eb1e2` |
| 27 | `def` | [mkCommRingLTThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcommringltthmprefix--ce1a73852dc5d3fef45dfdb3.md) | 245 | `declaration-track:ce1a73852dc5d3fef45dfdb3b3dbc59a4328b7ddd1c2bf4b09de0c72146e9b16` |
| 28 | `def` | [mkCommRingPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcommringpreordthmprefix--e76beee297e2a082636ed506.md) | 253 | `declaration-track:e76beee297e2a082636ed50648e711b7bcebd6e14424164e0c2934c4e186e9d9` |
| 29 | `def` | [mkCommRingLawfulPreOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcommringlawfulpreordthmprefix--6ae0e4cc884a9a71bfe24bc4.md) | 261 | `declaration-track:6ae0e4cc884a9a71bfe24bc44a435b0f11cd38437c4789a1717c66ff7977b81e` |
| 30 | `def` | [mkCommRingLinOrdThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkcommringlinordthmprefix--f11e247909d9b841daa64548.md) | 269 | `declaration-track:f11e247909d9b841daa64548f962650777bab80b078a712ca268218d38579af9` |
| 31 | `def` | [mkFieldChar0ThmPrefix](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/mkfieldchar0thmprefix--9dd60ac1e771c415ccb98999.md) | 277 | `declaration-track:9dd60ac1e771c415ccb98999f05800081d75cdbe9ae77ca9166fe901423c69b0` |
| 32 | `def` | [RingIneqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/ringineqcnstr-toexprproof--b8ad98210b4d88c630275e89.md) | 281 | `declaration-track:b8ad98210b4d88c630275e8931ef49ecb4c0c085dd916ec6c4399455141e9db9` |
| 33 | `def` | [RingEqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/ringeqcnstr-toexprproof--a6752e87c0fd3bdab1d108e4.md) | 304 | `declaration-track:a6752e87c0fd3bdab1d108e4aa93fc60b40806d0e6d9a103df96ddaef3976d2b` |
| 34 | `def` | [RingDiseqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/ringdiseqcnstr-toexprproof--42dac49c7b4483450a130dcc.md) | 322 | `declaration-track:42dac49c7b4483450a130dcc7e0683dd48df6c2a15c2d151928559a6d32cf018` |
| 35 | `def` | [IneqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/ineqcnstr-toexprproof--3817b61c0736a45bc22a754f.md) | 337 | `declaration-track:3817b61c0736a45bc22a754fdfda8f41bfc4aae323c7ce94f35dadcb04795387` |
| 36 | `def` | [DiseqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/diseqcnstr-toexprproof--8ae747526aa5b9997173f976.md) | 422 | `declaration-track:8ae747526aa5b9997173f976b68cb479045ef56fafc7b9e497730151ca6be506` |
| 37 | `def` | [EqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/eqcnstr-toexprproof--af6dcba5f4410cc40c783da2.md) | 454 | `declaration-track:af6dcba5f4410cc40c783da2981adcac9c23fe7ce477bda1ef0f358ae5b37ddf` |
| 38 | `def` | [UnsatProof.toExprProofCore](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/unsatproof-toexprproofcore--f8056eeee77921318dabad51.md) | 480 | `declaration-track:f8056eeee77921318dabad5153431ea3bd12d365376562acd8cf5b12a82557f6` |
| 39 | `def` | [UnsatProof.toExprProof](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/unsatproof-toexprproof--3aa5957dde2f82d69cae5108.md) | 487 | `declaration-track:3aa5957dde2f82d69cae510853538c446723b85e8ac05eab287454a4ce0839cd` |
| 40 | `def` | [setInconsistent](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/setinconsistent--431b3f8ab1a40ab6a80cd341.md) | 490 | `declaration-track:431b3f8ab1a40ab6a80cd3419e2de9998e6b3d42813cd8a039ebc0983e0addeb` |
| 41 | `def` | [propagateImpEq](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/propagateimpeq--cb9703fb2fc19ee714c33fcf.md) | 498 | `declaration-track:cb9703fb2fc19ee714c33fcf16bfb5a3c00ab5d5eb0506e474ef395877537304` |
| 42 | `def` | [IneqCnstr.collectDecVars](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/ineqcnstr-collectdecvars--c30e01dfdd68a38c67094ba0.md) | 515 | `declaration-track:c30e01dfdd68a38c67094ba093b1275032ef2072af56a8105a71904c569692f1` |
| 43 | `def` | [DiseqCnstr.collectDecVars](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/diseqcnstr-collectdecvars--009acf68a6f859ec0c88ddbf.md) | 527 | `declaration-track:009acf68a6f859ec0c88ddbf8afaa3646013bb1333d8f05510356aa65aff4e84` |
| 44 | `def` | [EqCnstr.collectDecVars](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/eqcnstr-collectdecvars--42556fc6368e8e7def6f6a2c.md) | 533 | `declaration-track:42556fc6368e8e7def6f6a2cdb4cc681964cc809034fce31e80d6c8948a920e6` |
| 45 | `def` | [UnsatProof.collectDecVars](../../../../mathematics/Algebra/Proof/Variant994debc8e251cfae2f750e8a5160c03a26e5295603bbcff9f0fe48e42c076472.lean/declarations/unsatproof-collectdecvars--3d71064f3b50a50fc6bddb9d.md) | 541 | `declaration-track:3d71064f3b50a50fc6bddb9da8f70357a2306b7993ac677f26cfbf2a06ddaa71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
