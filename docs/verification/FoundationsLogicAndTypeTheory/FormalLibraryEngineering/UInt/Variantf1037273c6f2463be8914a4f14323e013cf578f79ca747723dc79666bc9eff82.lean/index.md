# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UInt.Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b83956f8e74367fc49de560763aaa2d179b53dc",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b83956f8e74367fc49de560763aaa2d179b53dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Ring.ToInt` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/ofnat-mod-size--c14478313a31dcd1229331fe.md) | 21 | `result-track:c14478313a31dcd1229331fec932d0aa8ae7652b889d2666b6967734ed3cfbc8` |
| 2 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/natcast--9a1a616037726b9a61a09505.md) | 24 | `declaration-track:9a1a616037726b9a61a0950536db587a535dde8ffe974b137a4972b6662649ee` |
| 3 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast--7d14ea76b8e03f15af7046c8.md) | 28 | `declaration-track:7d14ea76b8e03f15af7046c8857b01de2e9c07c575cbe1e163d2ed0844b5027a` |
| 4 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-neg--4683b28cc21f185d84dfa9fc.md) | 33 | `result-track:4683b28cc21f185d84dfa9fc8cc6161c7d4ed75fc54f92cc9db05dc7220e85cf` |
| 5 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-ofnat--e9d6b5f0d51aabb9f84732a4.md) | 36 | `result-track:e9d6b5f0d51aabb9f84732a4b352322f2b2cf4132f1c387e634e3299348590a0` |
| 6 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/ofnat-mod-size--ca9f4b42d50217026d60afea.md) | 52 | `result-track:ca9f4b42d50217026d60afea373be6e02f9fe888e79722b48832bd182a9db477` |
| 7 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/natcast--616566f6513f94c1a9a8f941.md) | 55 | `declaration-track:616566f6513f94c1a9a8f9413e9fb0395adabe9bf8281ff1a4193efe0a9aab28` |
| 8 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast--2aa95a528fa991e5025dc71e.md) | 59 | `declaration-track:2aa95a528fa991e5025dc71e0ea4a8176dccd75032ef7221e636226e83f09522` |
| 9 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-neg--db087cd8c94a8b14cae08cec.md) | 64 | `result-track:db087cd8c94a8b14cae08cec98e1a61fef77f83dd7e5796db52142ed5eb9be5c` |
| 10 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-ofnat--ce7a6f733aee8c574f364411.md) | 67 | `result-track:ce7a6f733aee8c574f364411fe2303ddd032f2db9cf50d6cc3b808cf012fa4a0` |
| 11 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/ofnat-mod-size--3dee1ced215296484a1b37d4.md) | 83 | `result-track:3dee1ced215296484a1b37d4a3289a59f28e9788328cd78c1dc8c0e5f5566377` |
| 12 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/natcast--d2516606a691f731e8e49c45.md) | 86 | `declaration-track:d2516606a691f731e8e49c45b7f082fe1691d87367797893c8f0e7ac11b231a7` |
| 13 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast--5474f9076a8397c074473566.md) | 90 | `declaration-track:5474f9076a8397c0744735668bba7f86e5820207b9ed8061ccc2e7263e7777b0` |
| 14 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-neg--9f5153d28ece9b790e7e18b8.md) | 95 | `result-track:9f5153d28ece9b790e7e18b86d45f3fd4cbfbfe723e6f0036ba53e0ce17fea44` |
| 15 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-ofnat--55f60cabddb9166e2815befe.md) | 98 | `result-track:55f60cabddb9166e2815befeece9c5832c8eba0059d82af61dfa6d12595cedff` |
| 16 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/ofnat-mod-size--ef60502459a2657638d27ff7.md) | 114 | `result-track:ef60502459a2657638d27ff7cfdfb12e48983a46db20f5a7d35aacd64305c7d0` |
| 17 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/natcast--ef208a094ad312186911e182.md) | 117 | `declaration-track:ef208a094ad312186911e18212d201510033328cac05efe3ba3599f93ae5fa23` |
| 18 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast--562258049cb64d1481612367.md) | 121 | `declaration-track:562258049cb64d148161236772d773104981aefe0100f0b3e385946dbb7adaf9` |
| 19 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-neg--f050e94b8a9cab823b1c8b3b.md) | 126 | `result-track:f050e94b8a9cab823b1c8b3b3e4fe8b49353ef628872035c59ab85bd3eb26b9e` |
| 20 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-ofnat--9f8946c001740ab840b79319.md) | 129 | `result-track:9f8946c001740ab840b793190c0af6e03a3c656139c5dfb4a6eda7dd7ba99e38` |
| 21 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/natcast--2766e1642e37dc1dfa445c36.md) | 145 | `declaration-track:2766e1642e37dc1dfa445c362afcfa7cc5c341f3df77c4a2f177609e42824eeb` |
| 22 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast--bbab86c8ce80f91ae59b03df.md) | 149 | `declaration-track:bbab86c8ce80f91ae59b03dfe778571f306806fd12f088898011da0920244057` |
| 23 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-neg--cb16c05e2fba345a1908c08e.md) | 154 | `result-track:cb16c05e2fba345a1908c08e161d1147f3aea6b05792049ea75271c3f9731803` |
| 24 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/intcast-ofnat--c8262af512200ffc3ab3ecf0.md) | 157 | `result-track:c8262af512200ffc3ab3ecf05384060ce09bedaf23172f7d2f5d545d7fad0aad` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--460248c7169a52406c55bf3f.md) | 173 | `declaration-track:460248c7169a52406c55bf3ff0450954d1625d5eff6ce0909b30710d3765534d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--a5a0ccc86e344397db2c43f9.md) | 199 | `declaration-track:a5a0ccc86e344397db2c43f9a6becf6648413be8fbdafaea7724d0230add3042` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--d3132073f87c1f11c6a5503a.md) | 205 | `declaration-track:d3132073f87c1f11c6a5503a186cf34d5fd48991a8825a143177542ca6e4bc3f` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--708ce4c960a36439f52e29fe.md) | 206 | `declaration-track:708ce4c960a36439f52e29fe11519dc9a2a69319d63d688dcbcf6400f1c3e83e` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--ff36660e1344bbee857f2f07.md) | 207 | `declaration-track:ff36660e1344bbee857f2f0704aa506f3e58e345091508e0391ae9f7279e685f` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--a1c3bddd7b0c6ffb467e3188.md) | 209 | `declaration-track:a1c3bddd7b0c6ffb467e3188dc52a38375f8afd53826173599760781392fbb30` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--1474545e3921b004bee10b8e.md) | 212 | `declaration-track:1474545e3921b004bee10b8e0170bbb242320ee6d114e25af6dae3b25afd1abe` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--b3e1217ea260d842a9069820.md) | 238 | `declaration-track:b3e1217ea260d842a906982094d94a0a2a124318d7f2502acbb707923651a37c` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--f34b91f84b911489f8b8749c.md) | 244 | `declaration-track:f34b91f84b911489f8b8749c52d77f92e917e6641fd1e3fe53539759378b083d` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--b5aec65a5421f90c986cada3.md) | 245 | `declaration-track:b5aec65a5421f90c986cada3d42b20a9f7828a823a24194ee789ace1ae08bc57` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--f08cb6c5949efe45dde41595.md) | 246 | `declaration-track:f08cb6c5949efe45dde41595f3ee3d93d9f923bd1ab8de05cd10742820a019a3` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--05a885bde71ce72d1a255507.md) | 248 | `declaration-track:05a885bde71ce72d1a255507427851d3f25ef24f7136dd65dc4d2a763bd40d21` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--996f3b0ab7f12aa86e26b9e6.md) | 251 | `declaration-track:996f3b0ab7f12aa86e26b9e6ae54e1f4adcc43844ab3b2194166b5698f41664a` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--acfb290c98656dcd0ab1fe81.md) | 277 | `declaration-track:acfb290c98656dcd0ab1fe81608108a5aacc8b9f628857c9d51c4087e80a6224` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--e340452be94bb31286635a4c.md) | 283 | `declaration-track:e340452be94bb31286635a4c98903e1b909e1b4094eac0d13192bf33d598e02c` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--826900700fe161c8b2c1d982.md) | 284 | `declaration-track:826900700fe161c8b2c1d9824d04da8621b051b6f42ef84497879a638d6949d9` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--0041091a661d4fb40b0049e2.md) | 285 | `declaration-track:0041091a661d4fb40b0049e2d1a3ed2411373953ddbae974c742d28f5d2dd748` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--c29a75fbbcfdf4f95a880809.md) | 287 | `declaration-track:c29a75fbbcfdf4f95a880809e912b93535a18a6cc77b8f093c3fdd74c70ae34a` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--93fc1a29387c05f92a2add4f.md) | 290 | `declaration-track:93fc1a29387c05f92a2add4fc9828aa61917a79b06c37fc858ced065a8f0605e` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--39bfe31cfd48b53f85625e45.md) | 316 | `declaration-track:39bfe31cfd48b53f85625e45ac4ce34a451965849abe15efa88f833e0e97c473` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--2d36230fd0fa3b9181decaa7.md) | 322 | `declaration-track:2d36230fd0fa3b9181decaa707e6e01c88882c8b24b0788386dc4be33f4cc8ad` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--7827cedf0dae72fe9166672e.md) | 323 | `declaration-track:7827cedf0dae72fe9166672e4cfd7df614365ea8097bbd28ed9669f24c647bc2` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--b2798f77cae295ed108a5936.md) | 324 | `declaration-track:b2798f77cae295ed108a59365d6b33d43534e7f3b049da893424a236a8bb3961` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--2d4f238717a3ccd7a7a4f0b7.md) | 326 | `declaration-track:2d4f238717a3ccd7a7a4f0b7fe21df689eefb2c66315a1ac15a37f351754e5a6` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--5dcc0b70d83204db23a68a0b.md) | 329 | `declaration-track:5dcc0b70d83204db23a68a0b7fc219720a1aaab0d6e1de233c5607d631927516` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--ceea03064b68c9d63891d56a.md) | 357 | `declaration-track:ceea03064b68c9d63891d56a963921154984bf88f9545308daa2f786069864c3` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--18541aec18f6eb56315ac31f.md) | 363 | `declaration-track:18541aec18f6eb56315ac31f312fa04d473245ef7e4b11f997c74d72d65d41ff` |
| 52 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--b012c8bb9a33f7b58b2bf905.md) | 364 | `declaration-track:b012c8bb9a33f7b58b2bf9051f229b02fd7b8b5ee9ed816a7d481848c6610cd5` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/example--731b424fa64d6026fd341b0c.md) | 365 | `declaration-track:731b424fa64d6026fd341b0c5fbd9491cb00ce8a945d59b3ea173f81d99bc06b` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variantf1037273c6f2463be8914a4f14323e013cf578f79ca747723dc79666bc9eff82.lean/declarations/instance--809b2389587a14679977bdfe.md) | 367 | `declaration-track:809b2389587a14679977bdfe5d2cc64c4052e4f8df79e6d66cead4f25f2fc3bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
