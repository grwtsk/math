# Verification target: GRWTSK.Algebra.SemiringM.Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed4228e0441eb758d5567e8455d70469ef17bb57",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/index.md) · [Full source](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed4228e0441eb758d5567e8455d70469ef17bb57`.

Source path: `GRWTSK/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemiringM.Context](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/semiringm-context--6996ed334a3d306441861a79.md) | 24 | `declaration-track:6996ed334a3d306441861a79e072b92a1465a65095b7bf4f2d3b8ebcb3ac124b` |
| 2 | `abbrev` | [SemiringM](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/semiringm--34409d50db6aeb2df2a0aa77.md) | 27 | `declaration-track:34409d50db6aeb2df2a0aa776a3c8fac7282db2f4dc4f0a99ddab93cc1379711` |
| 3 | `abbrev` | [SemiringM.run](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/semiringm-run--0e7b204e69e4a0bc8f636186.md) | 29 | `declaration-track:0e7b204e69e4a0bc8f636186d5c113e8488692c8b61feef0a2027f1cc17e8d42` |
| 4 | `abbrev` | [getSemiringId](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/getsemiringid--f5d1a2b8498b48d0f4e7a341.md) | 32 | `declaration-track:f5d1a2b8498b48d0f4e7a341442ff9f0c9f7d456b3c13f69d36c8efbf90567a1` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/instance--60c732134af60504a4b46a3a.md) | 35 | `declaration-track:60c732134af60504a4b46a3a858b15a8f8dc8c8884d12888e125357feeb2ceed` |
| 6 | `def` | [SemiringM.getCommSemiring](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/semiringm-getcommsemiring--c58010e373a38c6393eec755.md) | 39 | `declaration-track:c58010e373a38c6393eec7550db60e0555c7592b5e17653d90691b0ea64ef820` |
| 7 | `def` | [SemiringM.modifyCommSemiring](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/semiringm-modifycommsemiring--b9021ae5d4e44d8088142189.md) | 47 | `declaration-track:b9021ae5d4e44d8088142189e5b4cd690b3e978bffc0196ec384bb5c06a52428` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/instance--a9ca6f7b5a50049489b92d93.md) | 51 | `declaration-track:a9ca6f7b5a50049489b92d93dcc3a15b159c064a277a4e01de62839eff4bb7eb` |
| 9 | `def` | [SemiringM.getCommRing](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/semiringm-getcommring--a57e54f53c4b53f4bf7d3902.md) | 55 | `declaration-track:a57e54f53c4b53f4bf7d3902632d635bc8b9f83488eaf35186f5f66214408418` |
| 10 | `def` | [SemiringM.modifyCommRing](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/semiringm-modifycommring--b903b681ba7b8ab0f06942f5.md) | 63 | `declaration-track:b903b681ba7b8ab0f06942f5e1ae567b7b5693cd163789c3f79af39baf686c28` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/instance--4a70562d41a3fe8913582c78.md) | 67 | `declaration-track:4a70562d41a3fe8913582c78a9345930906201ab998bf32b5af1af0da0ed57cb` |
| 12 | `def` | [getToQFn](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/gettoqfn--47f65c36b210491389597605.md) | 71 | `declaration-track:47f65c36b21049138959760511a36aa819d7208821444f208186314900158d51` |
| 13 | `def` | [mkAddRightCancelInst?](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/mkaddrightcancelinst--162913c8ec220d21b21d08f3.md) | 78 | `declaration-track:162913c8ec220d21b21d08f305225a59f25fd33ce97105808748cd0b602191c8` |
| 14 | `def` | [getAddRightCancelInst?](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/getaddrightcancelinst--5d7b6cb8ff7d7f0276440bbd.md) | 84 | `declaration-track:5d7b6cb8ff7d7f0276440bbdd319cf4587d2c510064d55de915dc002fc7e98fd` |
| 15 | `def` | [getAddFn'](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/getaddfn--2a9665fd20f3f0b71a0d8503.md) | 94 | `declaration-track:2a9665fd20f3f0b71a0d85037d1a3fb2ff7b4ae31942ea195786035cf0613b0d` |
| 16 | `def` | [getMulFn'](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/getmulfn--c4c1b2bd255f2c2bc68d01e8.md) | 102 | `declaration-track:c4c1b2bd255f2c2bc68d01e8755c833ea0dac6737091be477c197d4e548843b0` |
| 17 | `def` | [getPowFn'](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/getpowfn--e31a8ac1e19bcb3ee2638261.md) | 110 | `declaration-track:e31a8ac1e19bcb3ee26382615f873ab010ba962fb15caa3ba908e7f5f99c7be8` |
| 18 | `def` | [getNatCastFn'](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/getnatcastfn--9b7b862c74234d23d7e61598.md) | 117 | `declaration-track:9b7b862c74234d23d7e6159820cbbfe95011236a5708903f268eeef311037047` |
| 19 | `def` | [getTermSemiringId?](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/gettermsemiringid--b78f937262b0b4c66d131ad0.md) | 126 | `declaration-track:b78f937262b0b4c66d131ad07d019536a5cece2eca8850011917f69c46f0012e` |
| 20 | `def` | [setTermSemiringId](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/settermsemiringid--67e2cafc84986d7564a4fbf7.md) | 129 | `declaration-track:67e2cafc84986d7564a4fbf734c403ac6f3789c6a1a6dd776613b96acec3b86e` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/instance--8d4d3e9c75e60fbd1bce3a4b.md) | 137 | `declaration-track:8d4d3e9c75e60fbd1bce3a4b0e979809c8a86a8942fa5e38a1f59af9227e31c0` |
| 22 | `def` | [mkSVarCore](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/mksvarcore--d52b179aab6d349789fe58e1.md) | 141 | `declaration-track:d52b179aab6d349789fe58e112c4b0a3a14b7431c5b080df6e4fe00d3f696213` |
| 23 | `def` | [mkSVar](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/mksvar--b1de54bc2e4572ff1b15ee8a.md) | 154 | `declaration-track:b1de54bc2e4572ff1b15ee8acfb8519d4b9d19822b7af24ff586ff6791f9998a` |
| 24 | `def` | [_root_.GRWTSK.Algebra.SemiringMContext.Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.Lean.Grind.CommRing.Expr.denoteAsRingExpr](../../../../mathematics/Algebra/SemiringM/Variant8db5a89370e387e955751079d374037407f5302222b5e674e56fdb9482d8f183.lean/declarations/root-grwtsk-algebra-semiringmcontext-variant1f22423d19bde098d79ac0367216--c8dac5ba17a626bd886cd86b.md) | 157 | `declaration-track:c8dac5ba17a626bd886cd86b47f60fafce216aa2fd08b23d253c4b067096a276` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
