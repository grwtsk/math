# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1bb42a81bff9caf112db484783f6489fbf4867f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1bb42a81bff9caf112db484783f6489fbf4867f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_atTop_not_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/eventually-attop-not-isroot--23558b0b646d8a3ba106e604.md) | 46 | `result-track:23558b0b646d8a3ba106e60490000127c5ed6e6a810937bab1f35d80ac0d63bd` |
| 2 | `theorem` | [eventually_atBot_not_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/eventually-atbot-not-isroot--619d1a22060117942174abcd.md) | 49 | `result-track:619d1a22060117942174abcd34416a971da084f3891c9867dcd52f3fa5a779b1` |
| 3 | `theorem` | [isEquivalent_atTop_lead](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isequivalent-attop-lead--c62ea2a34f7f7878411bea6c.md) | 56 | `result-track:c62ea2a34f7f7878411bea6c1c8f4cd72f89aa5e80badfde2fa6ac5a428061c0` |
| 4 | `theorem` | [tendsto_atTop_of_leadingCoeff_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/tendsto-attop-of-leadingcoeff-nonneg--c591ce7ce0ce1b418e923802.md) | 70 | `result-track:c591ce7ce0ce1b418e9238026843e1c8a5df7123f5a25a5c7c1ff4513c0ca3ea` |
| 5 | `theorem` | [tendsto_atTop_iff_leadingCoeff_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/tendsto-attop-iff-leadingcoeff-nonneg--a95ce56ebc9d4aca0dac4727.md) | 76 | `result-track:a95ce56ebc9d4aca0dac4727cf206d721965a284709837dd83218adbaea71879` |
| 6 | `theorem` | [tendsto_atBot_iff_leadingCoeff_nonpos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/tendsto-atbot-iff-leadingcoeff-nonpos--a71a17e2d211b1bf24936bc1.md) | 84 | `result-track:a71a17e2d211b1bf24936bc1013a2e68e4ceb5145d2f866f37ab2c1a0938424d` |
| 7 | `theorem` | [tendsto_atBot_of_leadingCoeff_nonpos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/tendsto-atbot-of-leadingcoeff-nonpos--f1a1529ff79726eefcd910d2.md) | 89 | `result-track:f1a1529ff79726eefcd910d22f37a9b770287a9d26f7f6016cb9521324442258` |
| 8 | `theorem` | [abs_tendsto_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/abs-tendsto-attop--48fd17075c9ba589eedd4bdf.md) | 93 | `result-track:48fd17075c9ba589eedd4bdf5daf513405fc57faefa012d5d87f50cfc6617c54` |
| 9 | `theorem` | [isBoundedUnder_abs_atTop_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isboundedunder-abs-attop-iff--e1a91308c0f83eeafe8ab788.md) | 99 | `result-track:e1a91308c0f83eeafe8ab788342234854a9962efd696453aeb8a8e7e30b7f4d7` |
| 10 | `theorem` | [abs_tendsto_atTop_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/abs-tendsto-attop-iff--323eb71403194eb6789af99e.md) | 107 | `result-track:323eb71403194eb6789af99edb880f8921ce099ed85b16250a424581f9dd4c90` |
| 11 | `theorem` | [tendsto_nhds_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/tendsto-nhds-iff--c3569dbb147cf2a100c309d2.md) | 111 | `result-track:c3569dbb147cf2a100c309d26062c144bd8d898e1b64d5ac089009674004127a` |
| 12 | `theorem` | [isEquivalent_atBot_lead](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isequivalent-atbot-lead--7b775a6d69681798168f9775.md) | 129 | `result-track:7b775a6d69681798168f9775cb7db350cd0c0621cfc7119831bf6f33fcfb1daf` |
| 13 | `theorem` | [abs_tendsto_atBot](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/abs-tendsto-atbot--7fb22ebfff872572b592e0fb.md) | 135 | `result-track:7fb22ebfff872572b592e0fb505af5cbbabb6c5246abcb0c86eb814ca2b29d41` |
| 14 | `theorem` | [isBoundedUnder_abs_atBot_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isboundedunder-abs-atbot-iff--e081ce5d22428e15a0c056f9.md) | 139 | `result-track:e081ce5d22428e15a0c056f94f51e3d3333c54bb3b5eabd414c173c5b626bebd` |
| 15 | `theorem` | [abs_tendsto_atBot_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/abs-tendsto-atbot-iff--845905ec74e3bcef0be55afe.md) | 147 | `result-track:845905ec74e3bcef0be55afe341420d03956dc47aab70f4bfecb61a924cdca63` |
| 16 | `theorem` | [isEquivalent_atTop_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isequivalent-attop-div--896724d48dd9896eec53de31.md) | 155 | `result-track:896724d48dd9896eec53de3159b408052a57f0378e9099db7d1acdce3b9f64fd` |
| 17 | `theorem` | [div_tendsto_atTop_zero_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-attop-zero-of-degree-lt--457e4e469e9074844e9d3454.md) | 167 | `result-track:457e4e469e9074844e9d34546b685863693c78d4563a1f209501b0fe6307467b` |
| 18 | `theorem` | [div_tendsto_atTop_zero_iff_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-attop-zero-iff-degree-lt--e4d69246d9f3bf0ab4a3e5d6.md) | 177 | `result-track:e4d69246d9f3bf0ab4a3e5d6b61c7678ecda268486f53dd9a4b52801c840c333` |
| 19 | `theorem` | [div_tendsto_atTop_leadingCoeff_div_of_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-attop-leadingcoeff-div-of-degree-eq--ea9149b50093171b5cb3c5db.md) | 193 | `result-track:ea9149b50093171b5cb3c5db2d157a138d0c8ae6ea1f9790b104af49737d4a90` |
| 20 | `theorem` | [div_tendsto_atTop_of_degree_gt'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-attop-of-degree-gt--c4951dd7eef17e4cab2878e0.md) | 199 | `result-track:c4951dd7eef17e4cab2878e020e3c4de3a5a232f518d31fb1df3584da2d358eb` |
| 21 | `theorem` | [div_tendsto_atTop_of_degree_gt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-attop-of-degree-gt--5cad176662960e112255fa16.md) | 211 | `result-track:5cad176662960e112255fa16cd7ef6d4d64ab9fbdc3d2d881be513e539b546f6` |
| 22 | `theorem` | [div_tendsto_atBot_of_degree_gt'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-atbot-of-degree-gt--aaa4431d9e755026146f2a5f.md) | 220 | `result-track:aaa4431d9e755026146f2a5f3b8dfd5915444a07db894b2c285e9766aa86dd66` |
| 23 | `theorem` | [div_tendsto_atBot_of_degree_gt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-atbot-of-degree-gt--d53e9d5fc0cc89ae904d2917.md) | 232 | `result-track:d53e9d5fc0cc89ae904d29173263868e19001c73c78986ded68d20f0890c515a` |
| 24 | `theorem` | [abs_div_tendsto_atTop_atTop_of_degree_gt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/abs-div-tendsto-attop-attop-of-degree-gt--99ad19758a064916fae4c116.md) | 241 | `result-track:99ad19758a064916fae4c1164e329d0f2ba2f6e63c3939bded105269e9b5583d` |
| 25 | `theorem` | [isEquivalent_atBot_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isequivalent-atbot-div--7d66235e03b7e3226a903036.md) | 251 | `result-track:7d66235e03b7e3226a90303686de7aea7f9a734b58b8d71795e3294c9327e0bf` |
| 26 | `theorem` | [div_tendsto_atBot_zero_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-atbot-zero-of-degree-lt--349417fd9968a80ddb8be5db.md) | 263 | `result-track:349417fd9968a80ddb8be5db2523572d10bbabeb6fc8726d489f09fce41ce1b5` |
| 27 | `theorem` | [div_tendsto_atBot_zero_iff_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-atbot-zero-iff-degree-lt--c08218018aa9b7101b2af626.md) | 269 | `result-track:c08218018aa9b7101b2af62682cd48a238d8480f1c3dd3c3f1f6cee2d91b0840` |
| 28 | `theorem` | [div_tendsto_atBot_leadingCoeff_div_of_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/div-tendsto-atbot-leadingcoeff-div-of-degree-eq--be741da351ebf3be35a87150.md) | 280 | `result-track:be741da351ebf3be35a87150749aa99c8f4145b2b3970cb1efa00bb6c8488a25` |
| 29 | `theorem` | [abs_div_tendsto_atBot_atTop_of_degree_gt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/abs-div-tendsto-atbot-attop-of-degree-gt--bd608e77914791eba8787487.md) | 285 | `result-track:bd608e77914791eba8787487d2811a54a837f2611c80561d66d68c39060e3f90` |
| 30 | `theorem` | [isLittleO_atTop_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/islittleo-attop-of-degree-lt--0b78f4d77fc4e415eb115791.md) | 297 | `result-track:0b78f4d77fc4e415eb1157912459af10be183508f2c39a5fc11bf8c55d2d5f4b` |
| 31 | `theorem` | [isLittleO_atBot_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/islittleo-atbot-of-degree-lt--822e65e60bf43b6ae756d843.md) | 305 | `result-track:822e65e60bf43b6ae756d843d8939ac1d0c4fc4e98b2bff095ed972679143877` |
| 32 | `theorem` | [isBigO_atTop_of_degree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isbigo-attop-of-degree-le--10cc2c39b93f61df4de8df1e.md) | 310 | `result-track:10cc2c39b93f61df4de8df1e5d222d7cabba995635346d6a09dad96c3992da8b` |
| 33 | `theorem` | [isBigO_atBot_of_degree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isbigo-atbot-of-degree-le--4d7ad04ddeffead298ea83a3.md) | 320 | `result-track:4d7ad04ddeffead298ea83a335f41d8492be3e96b7a02494c54d2b2c02e79768` |
| 34 | `lemma` | [isEquivalent_cobounded_leading_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isequivalent-cobounded-leading-monomial--e35461872172da2dd84924ea.md) | 331 | `result-track:e35461872172da2dd84924ea29123ab4991887f4bf45b733722e86817ee82500` |
| 35 | `theorem` | [isLittleO_cobounded_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/islittleo-cobounded-of-degree-lt--a6f7f2ffbc914ed7e81b486e.md) | 340 | `result-track:a6f7f2ffbc914ed7e81b486edefc6d2917b6c13fe4a5ab9a45880dbfbc7df496` |
| 36 | `theorem` | [isBigO_cobounded_of_degree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/isbigo-cobounded-of-degree-le--652037c991499307a92d0666.md) | 350 | `result-track:652037c991499307a92d0666781a502bcc73d1a7838a6d76aeca4cada661b0e9` |
| 37 | `lemma` | [finite_abs_eval_le_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/finite-abs-eval-le-of-degree-lt--b643dbd6d622ffb79e120fe5.md) | 362 | `result-track:b643dbd6d622ffb79e120fe5f97a9d7b8cbd526b47eace538c78765507d9eda1` |
| 38 | `theorem` | [dvd_of_infinite_eval_dvd_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/declarations/dvd-of-infinite-eval-dvd-eval--9aea978c552aba0b2bdd5d1c.md) | 372 | `result-track:9aea978c552aba0b2bdd5d1c2eaa538a043f05810a6f21172fb258df35785d4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
