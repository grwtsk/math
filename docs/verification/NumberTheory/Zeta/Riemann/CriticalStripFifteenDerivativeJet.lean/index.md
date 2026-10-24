# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58b659fdd4811b8e9d0ac115dd75ca486fc3191b",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58b659fdd4811b8e9d0ac115dd75ca486fc3191b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenDerivativeSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/center--cea523b09d0d650c79f673bc.md) | 23 | `declaration-track:cea523b09d0d650c79f673bca3b2655c3c0639d15f92575cab4c48f9bd8ebcd7` |
| 2 | `def` | [logRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/logradius--498b3b5b1652c53f2d317a16.md) | 24 | `declaration-track:498b3b5b1652c53f2d317a1656f25cc25e3aad2567cbd6703302d6c8e47a75bd` |
| 3 | `def` | [sampleRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/sampleradius--cd9db3467517ed4a506a6da1.md) | 25 | `declaration-track:cd9db3467517ed4a506a6da1b292a2992dfb2f632db7bb1c33e22d96054612d6` |
| 4 | `def` | [logCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/logcenter--a97844a24fc87c91e7b4547e.md) | 27 | `declaration-track:a97844a24fc87c91e7b4547e028bf63d5f45399c9f97747d92bb5e58b2398e11` |
| 5 | `def` | [sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/sample--dad6b1794ff9e2b931a04ead.md) | 28 | `declaration-track:dad6b1794ff9e2b931a04eada16fcf7162e0290805a6fdad904edd8307612049` |
| 6 | `def` | [weightCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/weightcoefficient--e01026de2f9787d69ec1b846.md) | 29 | `declaration-track:e01026de2f9787d69ec1b846e1934fae4c2a60928f1feddc410f7c73244fdb42` |
| 7 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/coefficient--3669ba51ad19a85f0782a7e4.md) | 30 | `declaration-track:3669ba51ad19a85f0782a7e4f8b3ed68f6b600cfde04e454f3137af845bee2cb` |
| 8 | `lemma` | [center_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/center-norm--f5e83106b55b2a38ccc88ace.md) | 32 | `result-track:f5e83106b55b2a38ccc88ace3e740fd2eaab8e7ba9c4ddd623944e23e2f8a1da` |
| 9 | `lemma` | [rounded_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/rounded-log--04bccb1f681fd61f6ac92250.md) | 35 | `result-track:04bccb1f681fd61f6ac9225021801e64d83d23cd2d47dd382e127e251386712c` |
| 10 | `lemma` | [log_enclosed_1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-1--07211596ebdd40957fbd4d96.md) | 41 | `result-track:07211596ebdd40957fbd4d961d1bda89013c7de40fd1e574f93b21b7a895ea1a` |
| 11 | `lemma` | [log_enclosed_2](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-2--56d3c68503f0dd8474da0f30.md) | 50 | `result-track:56d3c68503f0dd8474da0f30c466a16da8ab160221af481cbe1fbb01ebd61a0a` |
| 12 | `lemma` | [log_enclosed_3](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-3--1713eee46ba96ed0931a13c4.md) | 59 | `result-track:1713eee46ba96ed0931a13c404a40667fdda4e9822f7374e188a1904835fb4b2` |
| 13 | `lemma` | [log_enclosed_4](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-4--1af423694f6b0842bd703c0d.md) | 68 | `result-track:1af423694f6b0842bd703c0d9bccbeb89efafd7d05546ae00daa2fbb6366b42f` |
| 14 | `lemma` | [log_enclosed_5](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-5--1c590255c765ee11397c6a0a.md) | 77 | `result-track:1c590255c765ee11397c6a0a12a9b9e565107d048af427fa09aeb335eecd4eeb` |
| 15 | `lemma` | [log_enclosed_6](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-6--fdacb184f436fc2c6d5fe1a6.md) | 86 | `result-track:fdacb184f436fc2c6d5fe1a635dd794cda381b7b8201952b8f554c966bb90c91` |
| 16 | `lemma` | [log_enclosed_7](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-7--c6250af1d95da3aa195517c8.md) | 95 | `result-track:c6250af1d95da3aa195517c8c69da15aa3ac9c6ba63ba6455e3df2f46e63b791` |
| 17 | `lemma` | [log_enclosed_8](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-8--1b01228d59d9838dd8a667e6.md) | 104 | `result-track:1b01228d59d9838dd8a667e672af48c6008330ca61934406cb07c413d681d0b0` |
| 18 | `lemma` | [log_enclosed_9](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-9--7feb4a6ae51d86f92f51c7df.md) | 113 | `result-track:7feb4a6ae51d86f92f51c7dfe42180ce6725a9d21d0e161cba2369f24526e5cf` |
| 19 | `lemma` | [log_enclosed_10](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-10--6df29c058fe0340592b026b2.md) | 122 | `result-track:6df29c058fe0340592b026b2e6f0941ac6a5c4cc707835e8eaae89f05fbeabdf` |
| 20 | `lemma` | [log_enclosed_11](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-11--7c7fd7f1ce4c6ce6dd91f992.md) | 131 | `result-track:7c7fd7f1ce4c6ce6dd91f9920df19bd9bc3421294f33075006128cdc3fb3bbd2` |
| 21 | `lemma` | [log_enclosed_12](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-12--25091bf3564f0a9ca60425b4.md) | 140 | `result-track:25091bf3564f0a9ca60425b4e4400f7b48ae3883135facf8e69feba5df4598e1` |
| 22 | `lemma` | [log_enclosed_13](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-13--a8b5db222e710212793f99aa.md) | 149 | `result-track:a8b5db222e710212793f99aa01775132d86a1d9cc6d87976ec68bc0f23be70e6` |
| 23 | `lemma` | [log_enclosed_14](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-14--d3a93f47e16c29fc78bcdc54.md) | 158 | `result-track:d3a93f47e16c29fc78bcdc5470ceb8aae3530946cba37fe2a0d2d47dbc37a083` |
| 24 | `lemma` | [log_enclosed_15](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-15--e53c6e5dab3824611928e16c.md) | 167 | `result-track:e53c6e5dab3824611928e16c2a9b3f6d5bfbbe48263752941f3efc4902fc88a3` |
| 25 | `lemma` | [log_enclosed_16](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-enclosed-16--739e9b8f6f5caab963e598e2.md) | 176 | `result-track:739e9b8f6f5caab963e598e20a2dc574cb606fede64d9aad863e034176cb4c82` |
| 26 | `lemma` | [log_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/log-encloses--fa2826713ddb855b650439f1.md) | 185 | `result-track:fa2826713ddb855b650439f19f3c8a75e20a61055e056ecb62b418d65277d833` |
| 27 | `def` | [logRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/logrecord--64113cb9bcf6f62287d3e496.md) | 204 | `declaration-track:64113cb9bcf6f62287d3e496b3da51c27ddc90aab24d5066d6f758b9eeb1faf9` |
| 28 | `lemma` | [logCenter_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/logcenter-bound--d1e24da97a945e1f677f5927.md) | 210 | `result-track:d1e24da97a945e1f677f5927da0634077a1187d378dc9ac44efd5fa7f45a0ec4` |
| 29 | `lemma` | [sample_rounding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/sample-rounding--ae02bc4d37d962cb44e58941.md) | 214 | `result-track:ae02bc4d37d962cb44e5894172a186a720b03f71341e05234a3687e572daa1af` |
| 30 | `lemma` | [sample_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/sample-encloses--e7d65d262853f83c36da22cb.md) | 222 | `result-track:e7d65d262853f83c36da22cb82223815803231f1d981b5829cc95e2931641317` |
| 31 | `lemma` | [region_distance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/region-distance--67205f4a36ad34e1dcb51458.md) | 241 | `result-track:67205f4a36ad34e1dcb5145819a8ecc5edcf1f83384cfc74861cde84295f9000` |
| 32 | `def` | [powerJet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/powerjet--858640f5b827a8986148e6bd.md) | 252 | `declaration-track:858640f5b827a8986148e6bd166b2e6b9d0e0dc91342ef584dbe10107841810d` |
| 33 | `lemma` | [power_jet_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/power-jet-encloses--6d7744db8e9e918e52802dff.md) | 255 | `result-track:6d7744db8e9e918e52802dffc19bdd17b044987a72bf4189d706fae3ca3faaad` |
| 34 | `def` | [rawModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/rawmodel--9b4ee8dc21fd8b47c5b20690.md) | 308 | `declaration-track:9b4ee8dc21fd8b47c5b206907d4d181a61fda18c3ef83c8186efb5b3346b5f82` |
| 35 | `def` | [model](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/model--00acf45309d43348ee327aa6.md) | 312 | `declaration-track:00acf45309d43348ee327aa6d8b19e786bd433c1dce159e5b9d4181343eead66` |
| 36 | `def` | [eCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/ecoefficient--30a759a0ddf7e5a8eafc2471.md) | 314 | `declaration-track:30a759a0ddf7e5a8eafc247136683f364b1efff0a241caeb4f6a2d86721c9dd2` |
| 37 | `def` | [wCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/wcoefficient--d45253dfb78728f225c0961f.md) | 317 | `declaration-track:d45253dfb78728f225c0961fa101f7bb6616121b9f3605fd22d5bbd14bebfdc6` |
| 38 | `def` | [rawCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/rawcoefficient--2d656a2faf1346851e214bf8.md) | 319 | `declaration-track:2d656a2faf1346851e214bf837e2651cb21d8278fc94547c2023a1abf1c87b94` |
| 39 | `def` | [liftedCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/liftedcoefficient--c95158c4293059f3026aa230.md) | 326 | `declaration-track:c95158c4293059f3026aa2304cf117808187889b2ddff9abb0b400fe88d99e4b` |
| 40 | `lemma` | [weight_centered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/weight-centered--1d41d9cbaac405b68a1dd783.md) | 328 | `result-track:1d41d9cbaac405b68a1dd783ec36ba681d6567c47346c6847c048fbfd3bab192` |
| 41 | `lemma` | [weightSlope_centered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/weightslope-centered--e84748a8a65e2854d42acf3c.md) | 332 | `result-track:e84748a8a65e2854d42acf3c237fcec9d86c2a7fa32668d5d1d0243f9b8e4352` |
| 42 | `lemma` | [raw_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/raw-identity--a9f5c69fbd6c87e409a8a7ee.md) | 337 | `result-track:a9f5c69fbd6c87e409a8a7ee29bd8f3b19c35f9b0d92baada418f076fa98c45b` |
| 43 | `lemma` | [model_lifted](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/model-lifted--d0e5d82d72c6ea3b2fad4518.md) | 342 | `result-track:d0e5d82d72c6ea3b2fad4518a879da426bf75fda2ba494eb9d68c35d9eb161fd` |
| 44 | `lemma` | [rounding_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/rounding-budget--75614ab50cbd9cd2ac5b9d28.md) | 346 | `result-track:75614ab50cbd9cd2ac5b9d28ab5ef1845db8158f081c850013b47b1414216a16` |
| 45 | `lemma` | [rounding_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/rounding-error--ff1c2508ec327fd39823003c.md) | 355 | `result-track:ff1c2508ec327fd39823003c281f34bee2bc4eb5bba7dada2d3f2b1e2b724da7` |
| 46 | `lemma` | [finite_term_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/finite-term-error--3dd3f56709fd88909349dd22.md) | 371 | `result-track:3dd3f56709fd88909349dd2294e48533f9f41f89d8c1c425b3d107480b98468d` |
| 47 | `lemma` | [endpoint_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/endpoint-error--1bf1075f16d7a43a9ab4d896.md) | 403 | `result-track:1bf1075f16d7a43a9ab4d8963d189ccbf2dd9fec6a8fa609aa805c6da59212a1` |
| 48 | `theorem` | [finite_derivative_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/declarations/finite-derivative-enclosure--a8af0fcd7f7624272eee477b.md) | 438 | `result-track:a8af0fcd7f7624272eee477b00b9ee93162c83dcfc352bcc46c091eb8f8bffb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
