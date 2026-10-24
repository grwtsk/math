# Verification target: GRWTSK.Algebra.Exponent.Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e79f7a4beeac97a663bc8c65201575c409812f77",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/index.md) · [Full source](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e79f7a4beeac97a663bc8c65201575c409812f77`.

Source path: `GRWTSK/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasExponent](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/hasexponent--71cee4c4308e4b7ce08614f6.md) | 50 | `declaration-track:71cee4c4308e4b7ce08614f68be6a70e7e5b488d5acc9e15061ec581bf10f8da` |
| 2 | `theorem` | [hasExponent_iff'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/hasexponent-iff--26f804ace06dcf2d26d28f22.md) | 54 | `result-track:26f804ace06dcf2d26d28f2280b5655024e10781459878052f62d445d9c18b48` |
| 3 | `def` | [exponent](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/exponent--8ad1c14e5380f16ac5abed1e.md) | 61 | `declaration-track:8ad1c14e5380f16ac5abed1e0f720f01b4a425638b8893c62b400ab31ef371e4` |
| 4 | `theorem` | [exponent_def](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/exponent-def--1b70af9c00dc59e86cf092c3.md) | 67 | `result-track:1b70af9c00dc59e86cf092c357154ce727b01178561c667c16e5d707b624cdd6` |
| 5 | `theorem` | [exponent_def'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/exponent-def--392b325987f0d9b77d13dfc9.md) | 72 | `result-track:392b325987f0d9b77d13dfc9f49b50e2e33a413d956fb05ac8a90edb4f66d220` |
| 6 | `theorem` | [exponent_min](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/exponent-min--c055f673256d7a32132a6d7f.md) | 79 | `result-track:c055f673256d7a32132a6d7fb1ba96581b72b783c51fbd58f9a52bba2a77099a` |
| 7 | `theorem` | [exponent_min'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/exponent-min--476c474e62cc3d6b327b0961.md) | 84 | `result-track:476c474e62cc3d6b327b0961fe3c723672e4f3e94ad2bad185f6e34c14f99734` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/instance--76d788a98f03fe0dc62f1e57.md) | 94 | `declaration-track:76d788a98f03fe0dc62f1e57a2b81f63275918433ae21cc1e5c5fd2033c3ec92` |
| 9 | `def` | [elemExponent](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent--33dc2665ed743ca17ba5513e.md) | 110 | `declaration-track:33dc2665ed743ca17ba5513ec0ef7bc1ccef825f9b4548f768afda27e2241819` |
| 10 | `theorem` | [elemExponent_eq_zero_of_mem_range](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-eq-zero-of-mem-range--9aec23df38835b942e2b67ec.md) | 115 | `result-track:9aec23df38835b942e2b67ecf8d3098a995611b4c3dc4e7372017e245df764fd` |
| 11 | `theorem` | [elemExponent_eq_zero_of_charZero](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-eq-zero-of-charzero--1c1c8e05febf37bcc98c185b.md) | 122 | `result-track:1c1c8e05febf37bcc98c185ba550d71fb32138935ec2a393ca9e92a2365138f4` |
| 12 | `def` | [elemReduct](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemreduct--ea41b4c4823ac3bc358dcc29.md) | 130 | `declaration-track:ea41b4c4823ac3bc358dcc29a0ec2d7b6d58da8176e2e7a3b59809c415fea58d` |
| 13 | `theorem` | [minpoly_eq](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/minpoly-eq--a090b68437faf10878eb323d.md) | 134 | `result-track:a090b68437faf10878eb323dd65db73f098519a7aa7b6e8ab951a4f204535274` |
| 14 | `theorem` | [minpoly_eq'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/minpoly-eq--08d64abc853fa995d7c0a6e1.md) | 140 | `result-track:08d64abc853fa995d7c0a6e16d3d230ea99f4f7ba5022981c2e6d2c1e373374f` |
| 15 | `theorem` | [minpoly_natDegree_eq](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/minpoly-natdegree-eq--3136b2d2bf8634e0ad2ae577.md) | 146 | `result-track:3136b2d2bf8634e0ad2ae577a07acd39dbb8c5ebdead9b748ed267821855b441` |
| 16 | `theorem` | [minpoly_natDegree_eq'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/minpoly-natdegree-eq--3d0e5b3b948f2206cdd4f747.md) | 151 | `result-track:3d0e5b3b948f2206cdd4f747dd853b4948448db7f7bef8117678fb5cf0b2c779` |
| 17 | `theorem` | [algebraMap_elemReduct_eq](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/algebramap-elemreduct-eq--05f38fa3b9564aa68e66fdbe.md) | 155 | `result-track:05f38fa3b9564aa68e66fdbe803a1e769516a6eb89cc25314d780caec8b3f7b3` |
| 18 | `theorem` | [algebraMap_elemReduct_eq'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/algebramap-elemreduct-eq--6c73105ef4860592f6214af9.md) | 161 | `result-track:6c73105ef4860592f6214af9128def551af7d2b11e82a3b88bb4746dba6a7bd0` |
| 19 | `theorem` | [elemExponent_def](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-def--e75e5d49673a6cedd7f8e606.md) | 165 | `result-track:e75e5d49673a6cedd7f8e60626b1f1a2869eb997cb5b34a178f1b3272a3d3d94` |
| 20 | `theorem` | [elemExponent_def'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-def--120cd6ff9afc55bccb4d3e35.md) | 170 | `result-track:120cd6ff9afc55bccb4d3e358e38a36f8943cead64c272074cdcfdcd1be30345` |
| 21 | `theorem` | [elemExponent_le_of_pow_mem](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-le-of-pow-mem--89313648742618f55c4f7e0d.md) | 175 | `result-track:89313648742618f55c4f7e0dd8fb4e10d34a4b07dd4a544586b2bf7a585e9c8c` |
| 22 | `theorem` | [elemExponent_le_of_pow_mem'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-le-of-pow-mem--27ec573f84bb033e14a729bb.md) | 192 | `result-track:27ec573f84bb033e14a729bb2b22e4da3491d2cc0e61c5f0e93785f905d07140` |
| 23 | `theorem` | [elemExponent_min](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-min--10ffbbda2be06610e5061439.md) | 197 | `result-track:10ffbbda2be06610e5061439516abdb3bc5788170a7276a19534ea3440778873` |
| 24 | `theorem` | [elemExponent_min'](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-min--8afacb481e67b7b33883bc95.md) | 202 | `result-track:8afacb481e67b7b33883bc951d6defc46f3961632ddde4b9532e607d4b6f5fc7` |
| 25 | `theorem` | [elemExponent_le_exponent](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/elemexponent-le-exponent--5966ed2737fe282669ec703a.md) | 207 | `result-track:5966ed2737fe282669ec703a8ead67a6a82bef3c680dbec3bf4542de5abdfcc0` |
| 26 | `instance` | [hasExponent_of_finiteDimensional](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/hasexponent-of-finitedimensional--5a02f5cc179224bbf4bf696a.md) | 212 | `declaration-track:5a02f5cc179224bbf4bf696a1ec8c0591d3204cb8ed04817d270cc1c755d118d` |
| 27 | `def` | [iterateFrobeniusAux](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/iteratefrobeniusaux--09f235c05d724f4dc93c6c3c.md) | 243 | `declaration-track:09f235c05d724f4dc93c6c3ca54f6db7c159d5fea1206ea0e209a4182ac0e9bd` |
| 28 | `theorem` | [algebraMap_iterateFrobeniusAux](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/algebramap-iteratefrobeniusaux--1fa8701e85a4fcf4e0253c79.md) | 248 | `result-track:1fa8701e85a4fcf4e0253c79527da9396181afb833d6c19e512a907a14e72da6` |
| 29 | `def` | [iterateFrobenius](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/iteratefrobenius--be769d031b4e93a8075ff264.md) | 257 | `declaration-track:be769d031b4e93a8075ff264e5ecf0d082ad6066a712c8a7b6fb75f4e9d5b043` |
| 30 | `theorem` | [algebraMap_iterateFrobenius](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/algebramap-iteratefrobenius--432431625c905491499c6cd6.md) | 289 | `result-track:432431625c905491499c6cd6e5b97c13b4ac9847790884038343de3adeb992b0` |
| 31 | `theorem` | [iterateFrobenius_algebraMap](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/iteratefrobenius-algebramap--16128284ff20956d057624ac.md) | 295 | `result-track:16128284ff20956d057624ac43a8d319b6d535f544ae30fee193b5104be896b2` |
| 32 | `def` | [iterateFrobeniusₛₗ](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/iteratefrobenius--d8bb06fe2a4fb16fad31c1ca.md) | 309 | `declaration-track:d8bb06fe2a4fb16fad31c1ca51dd088977e6fff1a10ba111b00dcb8d8168184d` |
| 33 | `theorem` | [algebraMap_iterateFrobeniusₛₗ](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/algebramap-iteratefrobenius--7499ace0e3ea22aa9fd04e42.md) | 326 | `result-track:7499ace0e3ea22aa9fd04e4276252bdb9077bf5f1048978250132b5f4974af82` |
| 34 | `theorem` | [iterateFrobeniusₛₗ_algebraMap](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/iteratefrobenius-algebramap--d104d471c62cbbb4fe2aa3a3.md) | 331 | `result-track:d104d471c62cbbb4fe2aa3a316fd8d58e5560fbb36897de201e8c9e3fe535cd2` |
| 35 | `theorem` | [iterateFrobeniusₛₗ_algebraMap_base](../../../../mathematics/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/declarations/iteratefrobenius-algebramap-base--c617e2ed912ec168912c6b05.md) | 336 | `result-track:c617e2ed912ec168912c6b05761a82800f78220f07dae327b428fcb3c98f5a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
