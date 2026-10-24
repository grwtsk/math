# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "459d22cb2c8733239689f0423c645ab08b4e1dd2",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `459d22cb2c8733239689f0423c645ab08b4e1dd2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--9de603d699e3c02b2362786f.md) | 32 | `declaration-track:9de603d699e3c02b2362786f5374a4751e442d9a7a772f31a237e1953fb22fdb` |
| 2 | `instance` | [instMulZeroClassWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instmulzeroclasswithtop--d873efd518d734763247880b.md) | 38 | `declaration-track:d873efd518d734763247880b82385fd9e2e7c2a8d08d6fe3bb6923a1f00946c3` |
| 3 | `theorem` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-def--98bc770ac7b0e8a4840c0a7f.md) | 44 | `result-track:98bc770ac7b0e8a4840c0a7fb59f342f24b9c14bc6a76bc6569b7c8d08d87e2d` |
| 4 | `theorem` | [top_mul_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/top-mul-top--45eb5ae6ed058a4b87d0c614.md) | 51 | `result-track:45eb5ae6ed058a4b87d0c614cd0681beeaa21c51b9a7bdf1fa116dae5c2ad7a6` |
| 5 | `theorem` | [mul_top'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-top--0fb5f95be1140dc21ba3847d.md) | 54 | `result-track:0fb5f95be1140dc21ba3847d2e8ed5f744270dec8e1eb902a77db38ee547a7df` |
| 6 | `theorem` | [mul_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-top--ededaf13f631dce8787d0bd9.md) | 58 | `result-track:ededaf13f631dce8787d0bd9259dd1d008986923d58ae8e46ad51bcdd7f7bd2e` |
| 7 | `theorem` | [top_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/top-mul--bb66bd2a7362190c09715bb6.md) | 61 | `result-track:bb66bd2a7362190c09715bb6cfc839fe931a6ee52f25044f83da4aac26ddd445` |
| 8 | `theorem` | [top_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/top-mul--e1adc588cb8a293efc1520cd.md) | 65 | `result-track:e1adc588cb8a293efc1520cdaaf3a6f11387823366317bd75af6fbbcdc23c17c` |
| 9 | `theorem` | [mul_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-eq-top-iff--dc8626af4cbb1eb8f29f1d4c.md) | 68 | `result-track:dc8626af4cbb1eb8f29f1d4ca7884cbb050e508f72c766cf5819ecf76bf82b8d` |
| 10 | `theorem` | [mul_lt_top'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-lt-top--e139e5e8a0e955618e3d9ec5.md) | 75 | `result-track:e139e5e8a0e955618e3d9ec54aae78866364677298c424aa3e2d581b3fa7785b` |
| 11 | `theorem` | [mul_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-lt-top--e01a619cb8e3489fe7354af6.md) | 80 | `result-track:e01a619cb8e3489fe7354af6834106b23884a24432f4434118a55ae6306e8ffc` |
| 12 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/nozerodivisors--f9c88e45f56a862011c4c3a1.md) | 84 | `declaration-track:f9c88e45f56a862011c4c3a1d7ee56441e1d9760d68538b3f7a41685cd68717f` |
| 13 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/coe-mul--d5639acf83b48fc287856ced.md) | 97 | `result-track:d5639acf83b48fc287856ced1e8e1be9bf8533714c834476b7ab2f33d9795753` |
| 14 | `theorem` | [mul_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-coe--a4122b8e3e7237fc14b42f1d.md) | 106 | `result-track:a4122b8e3e7237fc14b42f1def2e3ac03a679a2755cb5f907f5c63fb360b7700` |
| 15 | `theorem` | [untop'_zero_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/untop-zero-mul--219c0782dabe25772d435e3f.md) | 116 | `result-track:219c0782dabe25772d435e3fba2e31b45f142a8577bcd43343507c871726981a` |
| 16 | `instance` | [instMulZeroOneClassWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instmulzerooneclasswithtop--256789932110906b93d947ce.md) | 127 | `declaration-track:256789932110906b93d947ce5c46d10d9e81c31ce3193edbb625a55d21af7052` |
| 17 | `def` | [_root_.GRWTSK.Algebra.UniversalAlgebra.MulDef.Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.MonoidWithZeroHom.withTopMap](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/root-grwtsk-algebra-universalalgebra-muldef-variant6065bbebb446cf72b2e0f--8933d6c21de1da12696d6db9.md) | 143 | `declaration-track:8933d6c21de1da12696d6db97d7a794575cf06544ded15a1288feebebfbfc172` |
| 18 | `instance` | [instSemigroupWithZeroWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instsemigroupwithzerowithtop--2442ada7a3236a12e0cc9f1b.md) | 164 | `declaration-track:2442ada7a3236a12e0cc9f1b66e5d205b45c7756a1a289500bc2f8b2bf0ecd46` |
| 19 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/monoidwithzero--334ca19107484633f56f613f.md) | 182 | `declaration-track:334ca19107484633f56f613f41d3ff2b173cc09da7dfd05f2702b1e4751bf43f` |
| 20 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/commmonoidwithzero--e8abbd4e4a911679783f7f6e.md) | 186 | `declaration-track:e8abbd4e4a911679783f7f6ef35068ca028cc641be339d0a7ed8abd8454fb917` |
| 21 | `theorem` | [distrib'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/distrib--77770143103357d9ba6a24b0.md) | 196 | `result-track:77770143103357d9ba6a24b0e39314c8c11d826e37bf239f9876e54731908562` |
| 22 | `instance` | [commSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/commsemiring--e3ca77150679bc42e6497d0f.md) | 208 | `declaration-track:e3ca77150679bc42e6497d0fd75a7282af6bb34350beb17bce5b320608274d72` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--cfe41c00af33ec8154337234.md) | 214 | `declaration-track:cfe41c00af33ec8154337234b47bdc5abf65785c517f42f6fc7e4a73677da3fd` |
| 24 | `def` | [_root_.GRWTSK.Algebra.UniversalAlgebra.MulDef.Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.RingHom.withTopMap](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/root-grwtsk-algebra-universalalgebra-muldef-variant6065bbebb446cf72b2e0f--7370d4dcb4c9ab4faa18889a.md) | 220 | `declaration-track:7370d4dcb4c9ab4faa18889a19a97087133eeff9fb6496bdeafda2017bc1f309` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--91b8c2a7ad38d4d89a0e2516.md) | 232 | `declaration-track:91b8c2a7ad38d4d89a0e2516e467aae9a576ccb70c10e0004ce9c1ba8a442827` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--9eaa2d8b0050a45f92084549.md) | 238 | `declaration-track:9eaa2d8b0050a45f92084549655e45b65859e94db843c7f968a01fa1a8fbf68f` |
| 27 | `theorem` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-def--75e720da681275584e6ea94c.md) | 241 | `result-track:75e720da681275584e6ea94cd7da0503e671011fe2c8aa9eeef54dda3aa5740a` |
| 28 | `theorem` | [mul_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-bot--2573dc0526f025451e5350ae.md) | 247 | `result-track:2573dc0526f025451e5350ae7b21bb0ba1f0c7adee36b0798a3752544b5b7db3` |
| 29 | `theorem` | [bot_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/bot-mul--08f94328a2a38f36b4236c79.md) | 252 | `result-track:08f94328a2a38f36b4236c79cf34f87829af73cfcecffb378f76df43d18fb6d8` |
| 30 | `theorem` | [bot_mul_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/bot-mul-bot--e79546f2fba578632eaed4ae.md) | 257 | `result-track:e79546f2fba578632eaed4aeee624a36cd4734a3a82b0ad95e9ae99155fe56a1` |
| 31 | `theorem` | [mul_eq_bot_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-eq-bot-iff--ad6e1afb885a16477846b260.md) | 261 | `result-track:ad6e1afb885a16477846b260e2eec7dddd2606babc8b5f424a2aae0348a26708` |
| 32 | `theorem` | [bot_lt_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/bot-lt-mul--461a200471cbe7c6347dfef8.md) | 265 | `result-track:461a200471cbe7c6347dfef834f10466ba27a2f740e346c22131b8abdfcd15f5` |
| 33 | `theorem` | [bot_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/bot-lt-mul--18e121d05a6f48e1dd659cb1.md) | 269 | `result-track:18e121d05a6f48e1dd659cb1e50eeb124b811ad389d3c111dfdcc020bdc4ab21` |
| 34 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/coe-mul--41f9f2d78ebfa88a554eb48b.md) | 280 | `result-track:41f9f2d78ebfa88a554eb48b39b38b242a8a283995195b6b09fb2f5d19101fa3` |
| 35 | `theorem` | [mul_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/mul-coe--eb5db6fb5ad2f661c6542694.md) | 284 | `result-track:eb5db6fb5ad2f661c65426947863810cd292f129858d3d34f535cebebb536ec3` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--688760f2086d31aa6c7feb95.md) | 292 | `declaration-track:688760f2086d31aa6c7feb957fd10c47c4c958a043ddc28d1d979ee6dd7ce2e4` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--a7defc9993a2b26bdcc12a73.md) | 295 | `declaration-track:a7defc9993a2b26bdcc12a73c6216bc603c54eba2844ae03ae2f04f15cafe210` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--c8682ed31f0d52222c4c2adf.md) | 298 | `declaration-track:c8682ed31f0d52222c4c2adf053d7ed1e1f688cb799c1a4a0931cb2faca082a4` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--8230791bd4ea3f200466a5c5.md) | 301 | `declaration-track:8230791bd4ea3f200466a5c5ac5c75b38e7c9bfecc449056e3ee30bb5d0c3ee9` |
| 40 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/commmonoidwithzero--2163d92947a88baa2faddd57.md) | 304 | `declaration-track:2163d92947a88baa2faddd57add0664ae794645d9499c13271d9e11b23972f66` |
| 41 | `instance` | [commSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/commsemiring--b05b3443124c74ff32b04b33.md) | 308 | `declaration-track:b05b3443124c74ff32b04b33155a80253ca3d65585733cf9670add5a9104644b` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--d5e3ce902047dbe1f48bef67.md) | 312 | `declaration-track:d5e3ce902047dbe1f48bef6756f11474acab95c9db845c8ca1c858d20b50f6a2` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--4c3d8eb5432518eb1a8ec701.md) | 329 | `declaration-track:4c3d8eb5432518eb1a8ec701d7457d2391324844ab67f277b9edf81c367662b8` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--86ca6fc6b4a6993fddcfc4a9.md) | 346 | `declaration-track:86ca6fc6b4a6993fddcfc4a94e06eda3377658e104330721b30222c94c6aca05` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--65ca50ec7462769709bac1a3.md) | 359 | `declaration-track:65ca50ec7462769709bac1a31c5d7bdd7231d178db83c81b0e70c4fcfaeb0c27` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--adf258b62a74c597a4778ef2.md) | 372 | `declaration-track:adf258b62a74c597a4778ef279d6f14f6d089a1bf96ce3f052c0db866651c74a` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--5b068c34970ecb41219f33e9.md) | 390 | `declaration-track:5b068c34970ecb41219f33e94fd06b33ad3b4ad4f38f6c0838ffcbf423325c69` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--352a89c00ebd44ace03031e2.md) | 408 | `declaration-track:352a89c00ebd44ace03031e2a3ec4ed67376b9a33125882f90a320de58c2e373` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/instance--1544630dbbcd309b9f664b4c.md) | 422 | `declaration-track:1544630dbbcd309b9f664b4c1acec0af203d6ac97e569cb951732ee7aecde638` |
| 50 | `instance` | [orderedCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantc3d283faf3db7ce619312916a7837780777efa34ac8ec5432ac7a2613d72a4c5.lean/declarations/orderedcommsemiring--a89d906cadbe5b367c3fa78b.md) | 436 | `declaration-track:a89d906cadbe5b367c3fa78b9b1ada4989d964fae46949c20cd7f5eb091e1140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
