# Verification target: GRWTSK.Algebra.Basic.Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed995bfa0ffc702b8d0ec8411183ad7673672d08",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed995bfa0ffc702b8d0ec8411183ad7673672d08`.

Source path: `GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean.json)

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
| 1 | `structure` | [Cache](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/cache--3b0ce1941cc51bf733452630.md) | 65 | `declaration-track:3b0ce1941cc51bf733452630bfee3d533176844c8810cfdd0cffc1182e679ac9` |
| 2 | `def` | [mkCache](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/mkcache--ff5f61094ab137e1e566d96d.md) | 71 | `declaration-track:ff5f61094ab137e1e566d96d2f192d09fb564378bd4a74a15abdd2ec462b864e` |
| 3 | `inductive` | [BaseType](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/basetype--d0515879ca4516a8fedb32f2.md) | 87 | `declaration-track:d0515879ca4516a8fedb32f2e09192766477edfd09fda4959115decfc9110933` |
| 4 | `def` | [ExBase](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/exbase--8f7c35db2be5135b48672d26.md) | 91 | `declaration-track:8f7c35db2be5135b48672d2616e2ca6fd87b7354a565be7255bb038429d4f5ed` |
| 5 | `def` | [ExProd](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/exprod--11b558bbcfa9e926200fc9ac.md) | 93 | `declaration-track:11b558bbcfa9e926200fc9ac3ff26e14102c49562edc2557a4e3e840cc1d8b41` |
| 6 | `def` | [ExSum](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/exsum--f05637e0cdd02debb2ae2f59.md) | 95 | `declaration-track:f05637e0cdd02debb2ae2f59e28edc7154b71b144c3c15dac5858d81ee0d4267` |
| 7 | `def` | [evalCast](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/evalcast--966db070bd898c2d7739e644.md) | 100 | `declaration-track:966db070bd898c2d7739e644fd704d8582d08d5d1cfad87757415b8119d8143b` |
| 8 | `def` | [pushCast](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/pushcast--36f5be090854c5432a505f85.md) | 137 | `declaration-track:36f5be090854c5432a505f85dcab524e2cb6ece5b21beb1ee533c48a4a09f167` |
| 9 | `def` | [evalSMulCast](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/evalsmulcast--9d05dd431ba63f5dd30cf28f.md) | 152 | `declaration-track:9d05dd431ba63f5dd30cf28fd2995ab19e5cbccbca6f8068911269a5859e507b` |
| 10 | `def` | [add](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/add--867c6042cf75885522e17376.md) | 175 | `declaration-track:867c6042cf75885522e173760614091f2629b4c12c48793a27a7acd1e1b7466c` |
| 11 | `def` | [mul](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/mul--d6ea026d3a3bc0442602d14d.md) | 188 | `declaration-track:d6ea026d3a3bc0442602d14dc0087e32627bcac220b502be3915ca936a471d32` |
| 12 | `def` | [cast](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/cast--292b1abbfcb8b910d245bb0a.md) | 199 | `declaration-track:292b1abbfcb8b910d245bb0afb38489df6a50d6859144cdc1309b3a32854a791` |
| 13 | `def` | [neg](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/neg--a22f39474b68ae7d0389cb6b.md) | 216 | `declaration-track:a22f39474b68ae7d0389cb6b76f2e13e03c2b20076d561b4732e9b20085c18cf` |
| 14 | `def` | [pow](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/pow--4eb59c079b958562e066d10e.md) | 229 | `declaration-track:4eb59c079b958562e066d10e3e99c9457e0ea781f747951125c667ad33a83e35` |
| 15 | `def` | [inv](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/inv--8ae470786ba143e5a1440d3d.md) | 240 | `declaration-track:8ae470786ba143e5a1440d3d81ef6a3df688a081ca8f6f643428799e71f99071` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/derive--5ecf5b5cc14e2849236b2f5e.md) | 253 | `declaration-track:5ecf5b5cc14e2849236b2f5ef494ec9539fe49f4c371c3d65b411605b2565c44` |
| 17 | `def` | [isOne](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/isone--fec6a35d8e66acfdab72796f.md) | 260 | `declaration-track:fec6a35d8e66acfdab72796f47da7d2a27199e6b2749f6bfcb151a93d9a5f39b` |
| 18 | `def` | [ringCompare](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/ringcompare--b3275d4090bfab0c4a341151.md) | 275 | `declaration-track:b3275d4090bfab0c4a34115114022bb62f145dd29bd16d01b861e7e0e7c124c1` |
| 19 | `def` | [ringCompute](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/ringcompute--8220479db1bf39b342ece7f9.md) | 283 | `declaration-track:8220479db1bf39b342ece7f9849af5038b2d2a8971f4360a9a81a4ccdd773505` |
| 20 | `theorem` | [Nat.cast_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/nat-cast-eq-algebramap--1bb493881f837ea72ef6ce1b.md) | 304 | `result-track:1bb493881f837ea72ef6ce1bc04e809b5fbe66a17e34a42a425a636535e9e250` |
| 21 | `theorem` | [Int.cast_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/int-cast-eq-algebramap--6cd38b59ffa3ef29cc9ab314.md) | 307 | `result-track:6cd38b59ffa3ef29cc9ab314949d659107fe733142a7a2fc58d9ba9388aac2e7` |
| 22 | `def` | [preprocess](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/preprocess--09f7ee8bacb784f70d156591.md) | 311 | `declaration-track:09f7ee8bacb784f70d156591a752345e1900266ec520a6e3bda6b78e1adbe217` |
| 23 | `def` | [collectScalarRingsAux](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/collectscalarringsaux--9b4b60a6fd7362bf09d2e38f.md) | 323 | `declaration-track:9b4b60a6fd7362bf09d2e38f86de894164e6e41d425c90c4f64123728bc088fe` |
| 24 | `def` | [collectScalarRings](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/collectscalarrings--65e3afd267f370a26221bc48.md) | 349 | `declaration-track:65e3afd267f370a26221bc48743c04ef9927d8b7602bb1c7d104ab34b2a19e59` |
| 25 | `def` | [pickLargerRing](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/picklargerring--b96de5945cb726d97bc4f1cc.md) | 355 | `declaration-track:b96de5945cb726d97bc4f1ccfc841fea646d8579fff60d1fb6cfe1827c562c97` |
| 26 | `def` | [inferBase](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/inferbase--eceb3f1151e1a678bc1d062f.md) | 380 | `declaration-track:eceb3f1151e1a678bc1d062f553860981f457b83e813564d10ebf203de7399a9` |
| 27 | `def` | [proveEq](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/proveeq--ab29edaa5c72fcd91874fbb8.md) | 397 | `declaration-track:ab29edaa5c72fcd91874fbb87ab31ec3a04463f0e8bd5e444c9fe96e1534c90e` |
| 28 | `elab` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/elab--f282782c70f0658e99cae887.md) | 445 | `declaration-track:f282782c70f0658e99cae887bbacab0cf224d9e55c1f347f1c0afa65eced6b3d` |
| 29 | `elab` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/declarations/elab--d7beefcc546a4ec86f46cb4b.md) | 452 | `declaration-track:d7beefcc546a4ec86f46cb4b52e23991b3f5a8ac440e514b84a30a69cb6bdaa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
