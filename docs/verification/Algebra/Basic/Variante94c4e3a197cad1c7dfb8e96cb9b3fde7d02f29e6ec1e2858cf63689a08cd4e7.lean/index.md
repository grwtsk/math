# Verification target: GRWTSK.Algebra.Basic.Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23`.

Source path: `GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean.json)

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
| 1 | `structure` | [Cache](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/cache--f4419a43964eba96745e6209.md) | 57 | `declaration-track:f4419a43964eba96745e620915d325077a81d43bd75be0c1319347bc6d923fe1` |
| 2 | `def` | [mkCache](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/mkcache--e9cf1415c47bf5fc8228a7c2.md) | 63 | `declaration-track:e9cf1415c47bf5fc8228a7c283ffe02b06890276001584ef761af1d0d2898790` |
| 3 | `inductive` | [BaseType](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/basetype--36882eb07f90578c0a5f3379.md) | 79 | `declaration-track:36882eb07f90578c0a5f3379e4c82c27f5c4b77e2d663cdb3284554ee33ca37e` |
| 4 | `def` | [ExBase](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/exbase--a1f8e079c7d0343ec694e7fa.md) | 83 | `declaration-track:a1f8e079c7d0343ec694e7fac197d8d8aefbc0e73e0a50bd6937f451799a776f` |
| 5 | `def` | [ExProd](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/exprod--b5f4a443ee3eeda89377050a.md) | 85 | `declaration-track:b5f4a443ee3eeda89377050ac1fff43c6c96f2b011a0317107b68b4b394c389a` |
| 6 | `def` | [ExSum](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/exsum--df31054af641b034e183c1b6.md) | 87 | `declaration-track:df31054af641b034e183c1b6bf3df38319c7020d08153bd8cc322c0f52398feb` |
| 7 | `def` | [evalCast](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/evalcast--38f996328d7d1a052f1cc309.md) | 92 | `declaration-track:38f996328d7d1a052f1cc309dae5c46ef6b467275eb4855a6698f31dabaeacb7` |
| 8 | `def` | [pushCast](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/pushcast--eea7cd5cafe9f8f1e7c21f94.md) | 129 | `declaration-track:eea7cd5cafe9f8f1e7c21f94d5fc788af4cda0b62aa30bf991bfff57706898d1` |
| 9 | `def` | [evalSMulCast](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/evalsmulcast--059c1073cfae8b15822438e0.md) | 144 | `declaration-track:059c1073cfae8b15822438e05654c3c332b2216582572576db05dded57def392` |
| 10 | `def` | [add](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/add--2ad25f60ec45efcef7f9a460.md) | 167 | `declaration-track:2ad25f60ec45efcef7f9a46001e2bd68d6a457fb22e4c74b080ed96e873ce721` |
| 11 | `def` | [mul](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/mul--7403891c6ee852f8e9e6fec4.md) | 180 | `declaration-track:7403891c6ee852f8e9e6fec4ffffabbef64021afc523be1a56d468932ef8a986` |
| 12 | `def` | [cast](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/cast--3d36b982db3431ea05f21ba8.md) | 191 | `declaration-track:3d36b982db3431ea05f21ba8024676382929d036a5756d318b72d99397de9646` |
| 13 | `def` | [neg](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/neg--8cb91466462c7f2a197a1fab.md) | 208 | `declaration-track:8cb91466462c7f2a197a1fab6ec193a651ebf3b6c8bda8b5da7f17ceb6fbf051` |
| 14 | `def` | [pow](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/pow--bc1f541d3d64721fa94f05e8.md) | 221 | `declaration-track:bc1f541d3d64721fa94f05e82eb0fdc43c11dd68d7d2a9212efe7adb67f1cd03` |
| 15 | `def` | [inv](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/inv--594787dfa8fb95bfe1f865a8.md) | 232 | `declaration-track:594787dfa8fb95bfe1f865a8ea102c2850d048277e1c35839e965b0f1fa2460d` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/derive--25be8bb1946b691074c11998.md) | 245 | `declaration-track:25be8bb1946b691074c11998b60d5393f78eddb35c5dbc0e4551262a8dad8dfb` |
| 17 | `def` | [isOne](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/isone--5f62bb8f97cf57b5c7552102.md) | 252 | `declaration-track:5f62bb8f97cf57b5c7552102227667576bf791ae11f17ef04234dcb711b4912a` |
| 18 | `def` | [ringCompare](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/ringcompare--e5478f18f898498a104aa2fa.md) | 267 | `declaration-track:e5478f18f898498a104aa2fa2db82d0acb8699d635dc2abacbe46e4b4541fed2` |
| 19 | `def` | [ringCompute](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/ringcompute--7ee6c6c50928c39c6f5a7b7e.md) | 275 | `declaration-track:7ee6c6c50928c39c6f5a7b7e804e3c52cbc3344ec1dbee7fe3a02840422f8a2b` |
| 20 | `theorem` | [Nat.cast_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/nat-cast-eq-algebramap--fa01161e693cfed12880cf39.md) | 296 | `result-track:fa01161e693cfed12880cf392172c9d34cc62b1929187a316242a51765ffa47b` |
| 21 | `theorem` | [Int.cast_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/int-cast-eq-algebramap--2829c51b4be48401bcc8ff11.md) | 299 | `result-track:2829c51b4be48401bcc8ff11a9bcd45b6ebdce61f47ce64a69d6085ca1e5ab00` |
| 22 | `def` | [preprocess](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/preprocess--38528a71c9dfe728e5cc0c06.md) | 303 | `declaration-track:38528a71c9dfe728e5cc0c0602cc147dc6944b11805caa1844305c9979dec7c2` |
| 23 | `def` | [collectScalarRingsAux](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/collectscalarringsaux--4f68dcd57b6123b12a40c240.md) | 315 | `declaration-track:4f68dcd57b6123b12a40c240558055326c56c825f2090020e258029ab22f8a4d` |
| 24 | `def` | [collectScalarRings](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/collectscalarrings--41d2a9e287c14db2ee2cb2b4.md) | 341 | `declaration-track:41d2a9e287c14db2ee2cb2b4282ec1e3fdeb51aa47de327a0f21f1a636dcd59e` |
| 25 | `def` | [pickLargerRing](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/picklargerring--7770b3950eb962799a9d2b6f.md) | 347 | `declaration-track:7770b3950eb962799a9d2b6fd9533a56ccb605296dae597081a62aa8b95628f5` |
| 26 | `def` | [inferBase](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/inferbase--3a8b7916dd8ef2d27fe0b242.md) | 372 | `declaration-track:3a8b7916dd8ef2d27fe0b242052315b40f5ce7ce9ee68d94524d65f1dd923bd4` |
| 27 | `def` | [proveEq](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/proveeq--2876083f61af5e2bd629add0.md) | 389 | `declaration-track:2876083f61af5e2bd629add06c5975bf397216872e851cb7f40fac933d61f594` |
| 28 | `elab` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/elab--64acbbce783aa194cd3f3775.md) | 437 | `declaration-track:64acbbce783aa194cd3f377546502bb7b9194024ee064c4b104e7190533b6817` |
| 29 | `elab` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/declarations/elab--8b50cb0b2917bb53cf5655ce.md) | 444 | `declaration-track:8b50cb0b2917bb53cf5655cec45bdc8721a611e8e9873846ac48c02f4b133556` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
