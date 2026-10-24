# Verification target: GRWTSK.Algebra.UniversalFactorizationRing.Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md) · [Full source](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae678ab555f97d3252bab1329bec03a83142e418`.

Source path: `GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean.json)

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
| 1 | `def` | [freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/freemonic--8c65dd3c4c30701d94962237.md) | 48 | `declaration-track:8c65dd3c4c30701d94962237a86e136a25d1942a2f95057cf8ddb8f72b1e9ad3` |
| 2 | `lemma` | [coeff_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/coeff-freemonic--6effc309925807b100f92466.md) | 51 | `result-track:6effc309925807b100f924666d9a1bc5426cb18c68655629a8c754a333b13bbb` |
| 3 | `lemma` | [degree_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/degree-freemonic--8536f47e5aa3699a8a06f750.md) | 60 | `result-track:8536f47e5aa3699a8a06f750bbec2f7292dbb6680558e485f94d9c5f99cb637d` |
| 4 | `lemma` | [natDegree_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/natdegree-freemonic--261dac09810348e610983ba1.md) | 65 | `result-track:261dac09810348e610983ba1ac2da33abbed4c64e2c5f42b418f7cd89ecb6ac6` |
| 5 | `lemma` | [monic_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/monic-freemonic--06452bcca9af91cdba52c344.md) | 68 | `result-track:06452bcca9af91cdba52c344895c5f6cb87f55b23b970789095cd4869ca07611` |
| 6 | `lemma` | [map_map_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/map-map-freemonic--6cc526da68b9183b058349e1.md) | 73 | `result-track:6cc526da68b9183b058349e1a72c242d8940b22a77f82e0b26d061a34004207b` |
| 7 | `def` | [MonicDegreeEq.freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/monicdegreeeq-freemonic--5cfa832522b849f45b496cf8.md) | 81 | `declaration-track:5cfa832522b849f45b496cf888912c46dcac39b1174c34105f5cbd22bf1ccdb1` |
| 8 | `def` | [mapEquivMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/mapequivmonic--de36d0c02124b5555b1116f4.md) | 92 | `declaration-track:de36d0c02124b5555b1116f4b2d27f35a022a54d60cb303b011ef2152f81023a` |
| 9 | `lemma` | [coe_mapEquivMonic_comp](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/coe-mapequivmonic-comp--c7a7cef57c2f6f6866251df1.md) | 105 | `result-track:c7a7cef57c2f6f6866251df10c1a27f3eaeea8f9ca17d7bc4e95d7fb9f6dc624` |
| 10 | `lemma` | [coe_mapEquivMonic_comp'](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/coe-mapequivmonic-comp--f873b664360b327a6e88ad7e.md) | 110 | `result-track:f873b664360b327a6e88ad7eb08648ebd3722e5bdbe877acd1539dd8223122da` |
| 11 | `lemma` | [mapEquivMonic_symm_map](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/mapequivmonic-symm-map--ee1cdef00c56bb7aebdb4659.md) | 115 | `result-track:ee1cdef00c56bb7aebdb46594fdbcc58c8cefea345291326d8c4f2fe8fbcf7e0` |
| 12 | `lemma` | [mapEquivMonic_symm_map_algebraMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/mapequivmonic-symm-map-algebramap--09ae5149644da2a034cab3b4.md) | 121 | `result-track:09ae5149644da2a034cab3b4b1fc699fcb442f1f82989cebe3ccf50f43da8b00` |
| 13 | `def` | [universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationmap--85f858c17445ec1b0dd35700.md) | 132 | `declaration-track:85f858c17445ec1b0dd35700552c91659946b503b17e4f90ba85124a4b0f8f87` |
| 14 | `lemma` | [universalFactorizationMap_freeMonic](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationmap-freemonic--13d5e2f4d9a3f28280b13c05.md) | 145 | `result-track:13d5e2f4d9a3f28280b13c0543e921901f5f19d69bffcb13a37172b54f4cc3ca` |
| 15 | `lemma` | [universalFactorizationMap_comp_map](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationmap-comp-map--855582ed4ba2710c160f7704.md) | 155 | `result-track:855582ed4ba2710c160f77040f571d7063527ad48ada7e21b67dcc4614cc300c` |
| 16 | `def` | [universalFactorizationMapLiftEquiv](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationmapliftequiv--83002c76080aa80d5e7595fd.md) | 171 | `declaration-track:83002c76080aa80d5e7595fda68a3bed8160ba3ec7faa2b4f71c3cf0bc3bf728` |
| 17 | `lemma` | [ker_eval₂Hom_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/ker-eval-hom-universalfactorizationmap--d7da4eb718d5716ce0209b12.md) | 189 | `result-track:d7da4eb718d5716ce0209b1233df9efb04c97747a333674141fd728e2564e3c5` |
| 18 | `def` | [universalFactorizationMapPresentation](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationmappresentation--2d26fdb43c345a1b56afbf1c.md) | 224 | `declaration-track:2d26fdb43c345a1b56afbf1cd18a80416fb370871cde892acfd2744a57442e86` |
| 19 | `lemma` | [pderiv_inl_universalFactorizationMap_X](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/pderiv-inl-universalfactorizationmap-x--47964eca371ca9110b655017.md) | 245 | `result-track:47964eca371ca9110b65501709383416c4065d78578c4020e3be273f061018dd` |
| 20 | `lemma` | [pderiv_inr_universalFactorizationMap_X](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/pderiv-inr-universalfactorizationmap-x--96c0100a36212fa131fd8cfb.md) | 268 | `result-track:96c0100a36212fa131fd8cfb04e999f21bd4e40069df4c268b9d6fc4a79b8985` |
| 21 | `lemma` | [universalFactorizationMapPresentation_jacobiMatrix](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationmappresentation-jacobimatrix--c7da6acd1b0131033f9ff4cd.md) | 289 | `result-track:c7da6acd1b0131033f9ff4cd6f1a176bd43374a1179b98d3935ca635f800db65` |
| 22 | `lemma` | [universalFactorizationMapPresentation_jacobian](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationmappresentation-jacobian--845977db94aeb37ff60131a9.md) | 306 | `result-track:845977db94aeb37ff60131a9de698730294c1404e3645ae5db296545aa1e702e` |
| 23 | `lemma` | [finitePresentation_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/finitepresentation-universalfactorizationmap--589f330a33fbb384909e5931.md) | 329 | `result-track:589f330a33fbb384909e59312d25a39498501f58f2172cecb506a4bef3dfb6c0` |
| 24 | `lemma` | [finite_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/finite-universalfactorizationmap--ceb26d63ee2756af1a237e4d.md) | 334 | `result-track:ceb26d63ee2756af1a237e4db04c8e5e6915df102037190784f6961a501c39d6` |
| 25 | `def` | [UniversalFactorizationRing](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring--2a7607268bcd89282d5fb64b.md) | 394 | `declaration-track:2a7607268bcd89282d5fb64b445abe473d14907d149fcfa7467a2fc9df69f353` |
| 26 | `def` | [UniversalFactorizationRing.fromTensor](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-fromtensor--9374eb7d7e902a3018e237c9.md) | 404 | `declaration-track:9374eb7d7e902a3018e237c9b986465b84d88f1658932e878d98275f6a8ce3e1` |
| 27 | `def` | [UniversalFactorizationRing.monicDegreeEq](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-monicdegreeeq--85a9903447088c97abef8cbb.md) | 411 | `declaration-track:85a9903447088c97abef8cbb967b6549accbb8a7747cf01c83500574270ae634` |
| 28 | `lemma` | [UniversalFactorizationRing.fromTensor_comp_universalFactorizationMap](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-fromtensor-comp-universalfactorizationmap--58c0373a476acb7969a0d8ca.md) | 416 | `result-track:58c0373a476acb7969a0d8ca51e6a06ad0253f39285248c83fa0367b861b169a` |
| 29 | `lemma` | [UniversalFactorizationRing.fromTensor_comp_universalFactorizationMap'](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-fromtensor-comp-universalfactorizationmap--18bb8c3d995774bf1edd140f.md) | 423 | `result-track:18bb8c3d995774bf1edd140f51883588ec418e9e03abd8b626c91e854551ea84` |
| 30 | `def` | [UniversalFactorizationRing.factor₁](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-factor--5c569a2029148bbda4d5c54b.md) | 431 | `declaration-track:5c569a2029148bbda4d5c54b3b2183c121f8a69348892cea106b62fa597ae735` |
| 31 | `def` | [UniversalFactorizationRing.factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-factor--16d9eeba4409f492ee840ad8.md) | 436 | `declaration-track:16d9eeba4409f492ee840ad89ad86f6dfffb48145d8a4759ea202837b322f153` |
| 32 | `lemma` | [UniversalFactorizationRing.factor₁_mul_factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-factor-mul-factor--30cb94531c0320066d5f1c59.md) | 440 | `result-track:30cb94531c0320066d5f1c59a3f294f01cf482e880cb3096a2da575ed4280027` |
| 33 | `def` | [UniversalFactorizationRing.homEquiv](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-homequiv--a68f9353de942e70bc57b0f7.md) | 449 | `declaration-track:a68f9353de942e70bc57b0f76d092e1bf88f9b6b9102ad34769b2b1c3eb6ca2f` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/instance--99e008e4e3564f07d05bdbc1.md) | 488 | `declaration-track:99e008e4e3564f07d05bdbc1b3373468483d2dc7222d9d745d87823ef0187c6c` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/instance--a72db09a998ef80d6de1fd55.md) | 496 | `declaration-track:a72db09a998ef80d6de1fd5538835a7da39f41d8c7bed9b848b8907b7ec4b357` |
| 36 | `def` | [UniversalFactorizationRing.presentation](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-presentation--4d701ba24da49867b20192bc.md) | 505 | `declaration-track:4d701ba24da49867b20192bc7b3e910d496b36607b5755f25b37a2801df46d5f` |
| 37 | `lemma` | [UniversalFactorizationRing.jacobian_resentation](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalfactorizationring-jacobian-resentation--cbb802dd57963e79c6394d62.md) | 512 | `result-track:cbb802dd57963e79c6394d6281931ca9fb9e7a129505a7ea33ec6aca56a571f4` |
| 38 | `abbrev` | [UniversalCoprimeFactorizationRing](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring--1682445b2ad2390d3a58bc5d.md) | 537 | `declaration-track:1682445b2ad2390d3a58bc5d916a75c28510d2e5e01632b178fca4ce075bb451` |
| 39 | `def` | [UniversalCoprimeFactorizationRing.factor₁](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-factor--e267ad225163ebc607b779f0.md) | 543 | `declaration-track:e267ad225163ebc607b779f09e3616ce8d223a413a272db68981ad895c0e5ad2` |
| 40 | `def` | [UniversalCoprimeFactorizationRing.factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-factor--d895c99c4bd02f5fb04d9dee.md) | 547 | `declaration-track:d895c99c4bd02f5fb04d9deea53d5bfba99f10015535205295857913270d9d93` |
| 41 | `lemma` | [UniversalCoprimeFactorizationRing.factor₁_mul_factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-factor-mul-factor--93d5c94a70b8548bc699d1d5.md) | 550 | `result-track:93d5c94a70b8548bc699d1d5ed5423ea097381fa873a2fd953073313d3f5759b` |
| 42 | `lemma` | [UniversalCoprimeFactorizationRing.isCoprime_factor₁_factor₂](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-iscoprime-factor-factor--54e28804e8e1c94dc80bc8b7.md) | 555 | `result-track:54e28804e8e1c94dc80bc8b77a04564e6559d77cefac94eb3dc607685a830656` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/instance--342af91a2e3bfe2691545d5e.md) | 568 | `declaration-track:342af91a2e3bfe2691545d5ec6b7a1809712fa6906db9caa4cf134541aeeeb99` |
| 44 | `def` | [UniversalCoprimeFactorizationRing.homEquiv](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-homequiv--b45fbc455667512469253be7.md) | 585 | `declaration-track:b45fbc455667512469253be796a72509b3d49a0d680dd12d9d6e37153b7a0c66` |
| 45 | `lemma` | [UniversalCoprimeFactorizationRing.homEquiv_comp_fst](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-homequiv-comp-fst--3a0a1981a0d8afe25e55e5a0.md) | 623 | `result-track:3a0a1981a0d8afe25e55e5a0174c8cc05d8c8788f27af9a02ab0ebf4638c202b` |
| 46 | `lemma` | [UniversalCoprimeFactorizationRing.homEquiv_comp_snd](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-homequiv-comp-snd--08eafb2096869f16211b305f.md) | 631 | `result-track:08eafb2096869f16211b305f9e2648ab495be25c2e8a08b4ee6c8a39c1dc280b` |
| 47 | `lemma` | [UniversalCoprimeFactorizationRing.exists_liesOver_residueFieldMap_bijective](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/universalcoprimefactorizationring-exists-liesover-residuefieldmap-biject--df892d23a79a9f66d6afc135.md) | 643 | `result-track:df892d23a79a9f66d6afc1354e2608ff1d13fdcc7ec8f6d06c4c943ae8362486` |
| 48 | `lemma` | [_root_.Algebra.exists_etale_bijective_residueFieldMap_and_map_eq_mul_and_isCoprime.](../../../../mathematics/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/declarations/root-algebra-exists-etale-bijective-residuefieldmap-and-map-eq-mul-and-i--b90b8a3e2388963c86dd8cb3.md) | 688 | `result-track:b90b8a3e2388963c86dd8cb3679c9d16a17756b84f7147b6d51ef12ceb4f9deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
