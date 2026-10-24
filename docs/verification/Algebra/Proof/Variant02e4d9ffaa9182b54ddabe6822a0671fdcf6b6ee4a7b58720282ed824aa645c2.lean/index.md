# Verification target: GRWTSK.Algebra.Proof.Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c0f26aeb6986979b2714ae6267ec8dac9d2c3db",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c0f26aeb6986979b2714ae6267ec8dac9d2c3db`.

Source path: `GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.RArray` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.ToExpr` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Arith.VarRename` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContextExpr](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/tocontextexpr--0b5309af1ab96e815ef5134f.md) | 35 | `declaration-track:0b5309af1ab96e815ef5134f132c84220ee4099edef0f30e65810f566e33ed8c` |
| 2 | `def` | [toSContextExpr'](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/toscontextexpr--a86cdda6209d5474b96f099e.md) | 42 | `declaration-track:a86cdda6209d5474b96f099e1cb80c04b601d294aac97be5ba1350d63fc439f0` |
| 3 | `def` | [toSContextExpr](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/toscontextexpr--5ec40ceac4d4ac27013693d6.md) | 50 | `declaration-track:5ec40ceac4d4ac27013693d64a7f0efe8586f511e199853e8902696f043e3592` |
| 4 | `def` | [PolyDerivation.getMultiplier](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/polyderivation-getmultiplier--a1c5dab9a058fed8e1f2c512.md) | 54 | `declaration-track:a1c5dab9a058fed8e1f2c512b2c2ad76b035b4c1b83031559e61122fdbc41b46` |
| 5 | `def` | [throwNoNatZeroDivisors](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/thrownonatzerodivisors--5ab6e7902fbc562652dbdba6.md) | 63 | `declaration-track:5ab6e7902fbc562652dbdba6963d28052caa9e2aae8619abb84211e0706583e8` |
| 6 | `def` | [getPolyConst](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/getpolyconst--13270259a3b04227c5b29b07.md) | 66 | `declaration-track:13270259a3b04227c5b29b07f6676b7304418852f97a55bbcca706b816ff6d02` |
| 7 | `structure` | [ProofM.State](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/proofm-state--a1de9bd1579250f8f0865b68.md) | 71 | `declaration-track:a1de9bd1579250f8f0865b683c3ef6e3bbe6e031cff7fa9d5bbba2123ef991b4` |
| 8 | `structure` | [ProofM.Context](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/proofm-context--321a900ef48c79b406e614a7.md) | 78 | `declaration-track:321a900ef48c79b406e614a72ff971bf57bb0077acaa987fd1781830b9066720` |
| 9 | `abbrev` | [ProofM](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/proofm--234875dfa0597b4128e7b3f7.md) | 83 | `declaration-track:234875dfa0597b4128e7b3f7ce7fd457afb18ba5dfea7e66f561e028c5552d43` |
| 10 | `abbrev` | [getContext](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/getcontext--03e5353747f99b3b36eed65b.md) | 86 | `declaration-track:03e5353747f99b3b36eed65b70e03046eb46ee33e0db03f4edebfa83841b0ce0` |
| 11 | `abbrev` | [getSContext](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/getscontext--dac6ff24b44e3b531aeef1e5.md) | 93 | `declaration-track:dac6ff24b44e3b531aeef1e540be9825f2a738664fbd6e944c2ae5916670effa` |
| 12 | `abbrev` | [caching](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/caching--c99dd56e62ae760e9c0b82cd.md) | 98 | `declaration-track:c99dd56e62ae760e9c0b82cd456a484153032a07b2f67a730baee5654f0059a9` |
| 13 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/macro--87f260b7011699decdaae61e.md) | 107 | `declaration-track:87f260b7011699decdaae61e7961a8c230d3f7d10a3a2052bc4b237a1751d78e` |
| 14 | `def` | [mkPolyDecl](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkpolydecl--9e5571ba7af05dfb0c579ac3.md) | 114 | `declaration-track:9e5571ba7af05dfb0c579ac3d4380fd518b8a9cb5459f0439b43600bc0fc23e0` |
| 15 | `def` | [mkExprDecl](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkexprdecl--c6be2b3468768980be1d5a12.md) | 117 | `declaration-track:c6be2b3468768980be1d5a12e076ded0edf6b8c828fe061b2fd079f4d905b022` |
| 16 | `def` | [mkSExprDecl](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mksexprdecl--1e85437f6571b7537ddc8203.md) | 120 | `declaration-track:1e85437f6571b7537ddc820359d2ad97f020eae42c0449924fa9e05d5cfba564` |
| 17 | `def` | [mkMonDecl](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkmondecl--484346c44f14fdce71a53ec4.md) | 123 | `declaration-track:484346c44f14fdce71a53ec4d7c2a6183c0e27dbaacd62391f532ba17f40c8f5` |
| 18 | `def` | [mkStepBasicPrefix](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkstepbasicprefix--6b754cebb9a82905ccceb093.md) | 126 | `declaration-track:6b754cebb9a82905ccceb093f83b8451be4538d8198c0873bdd8bdb441d3410b` |
| 19 | `def` | [mkStepPrefix](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkstepprefix--da9eadab8d67650b32fafe2b.md) | 131 | `declaration-track:da9eadab8d67650b32fafe2b60df55c7204dafcf0ca56d6f366a36d9b275df7f` |
| 20 | `def` | [getSemiringIdOf](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/getsemiringidof--18e5c070ea90865ff8c55f50.md) | 139 | `declaration-track:18e5c070ea90865ff8c55f507e4c0a11b10fad24e43e899a3ccbd227957692ef` |
| 21 | `def` | [getSemiringOf](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/getsemiringof--a5de227a0a15ad91ea76df16.md) | 143 | `declaration-track:a5de227a0a15ad91ea76df166b6853d9eaa5bcbe5298d17fdeb696acc59f387f` |
| 22 | `def` | [mkSemiringPrefix](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mksemiringprefix--6c6fd7f03bdc77da38062b42.md) | 146 | `declaration-track:6c6fd7f03bdc77da38062b42449e3d50f2ccf12c49b4e6594f6b70baa60d2ea0` |
| 23 | `def` | [mkSemiringAddRightCancelPrefix](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mksemiringaddrightcancelprefix--fb31329ef1e3155c4a7bf3fd.md) | 151 | `declaration-track:fb31329ef1e3155c4a7bf3fd01476528be7ebbf5c09f006cabd301f499a98927` |
| 24 | `def` | [_root_.GRWTSK.Algebra.ProofMState.Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.Lean.Meta.Grind.Arith.CommRing.EqCnstr.toExprProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/root-grwtsk-algebra-proofmstate-variant5549d354407c358d745e451499b1c2644--a6b96f59e95e2bcc2cde26a4.md) | 159 | `declaration-track:a6b96f59e95e2bcc2cde26a4b91fd833dd3817ba3bce9fabcd4ed524e04348c9` |
| 25 | `def` | [derivToExprProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/derivtoexprproof--9a566b44fca8014bffeef479.md) | 203 | `declaration-track:9a566b44fca8014bffeef4793fa2f1cff501f2cfcd7538ec8e2e12fdaec6a794` |
| 26 | `def` | [mkImpEqExprProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkimpeqexprproof--3d8f999d237da751c9c0f3c0.md) | 234 | `declaration-track:3d8f999d237da751c9c0f3c071a50865707a3ec85ccedf34edf2a571ac73e75b` |
| 27 | `def` | [mkContext](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkcontext--e5c1cae373ff65528d174a84.md) | 245 | `declaration-track:e5c1cae373ff65528d174a84653119664d3ae41c11f5e9a5d710336723fcce6d` |
| 28 | `def` | [mkSemiringContext](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mksemiringcontext--b877b38e8fd2556ae8cb8b6c.md) | 266 | `declaration-track:b877b38e8fd2556ae8cb8b6c8afbea5ef79851e6532198e698a7b6ba697d7753` |
| 29 | `abbrev` | [withProofContext](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/withproofcontext--dc15cf30cc71cdf432da6f10.md) | 283 | `declaration-track:dc15cf30cc71cdf432da6f100ca07f401b3ebad4edb12e8edc31093c20162345` |
| 30 | `def` | [EqCnstr.setUnsat](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/eqcnstr-setunsat--ed7992810477b380ec0fb1cf.md) | 294 | `declaration-track:ed7992810477b380ec0fb1cf9b77857b32aa66aef034d76e35e41d13fba7e2d9` |
| 31 | `def` | [DiseqCnstr.setUnsat](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/diseqcnstr-setunsat--48e1a3fe67f4925176d9d3ff.md) | 310 | `declaration-track:48e1a3fe67f4925176d9d3ffd0278bd58895f833f73478fcf24e4c052a632387` |
| 32 | `def` | [propagateEq](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/propagateeq--92d3b93b8db83463499b21d9.md) | 321 | `declaration-track:92d3b93b8db83463499b21d91ebb7245389f3e345240709e711f81c61856b129` |
| 33 | `def` | [setSemiringDiseqUnsat](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/setsemiringdisequnsat--8f2b386ece03439306ee1872.md) | 332 | `declaration-track:8f2b386ece03439306ee1872932b1c5aa1f366926337392a9de251e89fcce2f7` |
| 34 | `def` | [setNonCommRingDiseqUnsat](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/setnoncommringdisequnsat--aaeb38682faa22c7863bf5ec.md) | 351 | `declaration-track:aaeb38682faa22c7863bf5ec002914e8cc6b777465585ce6c233b2205aeefd23` |
| 35 | `def` | [setNonCommSemiringDiseqUnsat](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/setnoncommsemiringdisequnsat--722297ec600d9c3f3b08ed07.md) | 373 | `declaration-track:722297ec600d9c3f3b08ed076b493e2ad531b21822767195df02e41fa428cbc8` |
| 36 | `structure` | [NormResult](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/normresult--0c65f0302b7043390231af0e.md) | 388 | `declaration-track:0c65f0302b7043390231af0e7b1852e3621b684c971e2066dd0bde8128a7fbef` |
| 37 | `def` | [norm](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/norm--055201aae192e42360e6cd9e.md) | 395 | `declaration-track:055201aae192e42360e6cd9e559c3ac62df0e79a51e18bfdfb86e4542eaa7fd8` |
| 38 | `def` | [mkLeIffProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkleiffproof--b32c7e769c2043cd0cabb453.md) | 406 | `declaration-track:b32c7e769c2043cd0cabb4539b1004755c6eb15a6e788863a623594d9547184e` |
| 39 | `def` | [mkLtIffProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkltiffproof--f8c206b97f3c6afdb7edd06a.md) | 418 | `declaration-track:f8c206b97f3c6afdb7edd06a09288dc19ea0bcc8911d66744369bb76cebe4dd7` |
| 40 | `def` | [mkEqIffProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mkeqiffproof--f2a841c8c361e28073846de8.md) | 430 | `declaration-track:f2a841c8c361e28073846de8cac92e02185d5f6140fbc0deb2777e5ab04d6f0f` |
| 41 | `def` | [mkTermEqProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mktermeqproof--439e572579893dc2cdda2efb.md) | 445 | `declaration-track:439e572579893dc2cdda2efb76c44e3ad5e77dbaeb1ae1a55995901a9e9ac204` |
| 42 | `def` | [mkNonCommLeIffProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mknoncommleiffproof--3cf77e4eaf72c8bfd0ff80ed.md) | 455 | `declaration-track:3cf77e4eaf72c8bfd0ff80edd13e558b64ca547f6176fd6ac88be1dace5f35d8` |
| 43 | `def` | [mkNonCommLtIffProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mknoncommltiffproof--d1c412ff3812b7b8325ba61b.md) | 467 | `declaration-track:d1c412ff3812b7b8325ba61b8af4280178f8ebddbb1bbb4b37a185c33035e1fe` |
| 44 | `def` | [mkNonCommEqIffProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mknoncommeqiffproof--8da3c31e86c5975faf5466fa.md) | 479 | `declaration-track:8da3c31e86c5975faf5466fa28730411e3d30f442e8853b12a04e7952fefb5d6` |
| 45 | `def` | [mkNonCommTermEqProof](../../../../mathematics/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/declarations/mknoncommtermeqproof--9e2ca4036686fee2510951b9.md) | 494 | `declaration-track:9e2ca4036686fee2510951b96816105c5f4c04ed0163e44861845268f3c302ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
