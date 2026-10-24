# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCubicPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f8e9045130f5c155966f2e920d03f508ae13011",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f8e9045130f5c155966f2e920d03f508ae13011`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuadraticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cubic_unit_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cubic-unit-bound--1b63205d50972a672eb87ddc.md) | 32 | `result-track:1b63205d50972a672eb87ddc41a1b4d2c1524d7313507d1bc76f2c10b3867da5` |
| 2 | `def` | [realKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/realkernel--a8fb46bde667c1fa0a852638.md) | 63 | `declaration-track:a8fb46bde667c1fa0a85263803cdba17bd318a235b7b73e9224e512714fbf39b` |
| 3 | `def` | [kernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel--5cfe2a327efb6e909ae53c1f.md) | 67 | `declaration-track:5cfe2a327efb6e909ae53c1f5c57a7659bc3d5139199e5ed002b1af47ab61195` |
| 4 | `lemma` | [kernel_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-norm-le--6d6d53540506fa46802544bd.md) | 69 | `result-track:6d6d53540506fa46802544bdd0b81a0c9879e5d7184e701aa9cb8276ab15f531` |
| 5 | `lemma` | [kernel_measurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-measurable--6ce40810f00b4c8d0fe0d4a0.md) | 73 | `result-track:6ce40810f00b4c8d0fe0d4a0b55428e1e7a38ba5d942dca8702bc535633e3af0` |
| 6 | `lemma` | [kernel_zero_below](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-zero-below--374cba6c2efd6681c7a2d270.md) | 79 | `result-track:374cba6c2efd6681c7a2d27053c75ba12eae7052b2f5dc6672a2c48b937f30d6` |
| 7 | `lemma` | [kernel_nat](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-nat--5dd580c684acf4f1ed8ce74d.md) | 82 | `result-track:5dd580c684acf4f1ed8ce74d07cab5b899582d6d92fd4db0c7f0051ef361521b` |
| 8 | `lemma` | [kernel_locallyIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-locallyintegrable--9795ba7c460aa8a18198ff78.md) | 90 | `result-track:9795ba7c460aa8a18198ff78516e118ac2d64f391e3b5e563902bb873b971fbb` |
| 9 | `lemma` | [kernel_isBigO_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-isbigo-top--294986a1146222bb40292166.md) | 96 | `result-track:294986a1146222bb40292166663f38a12f3703b2c93f0d7f5b270f56d27d7928` |
| 10 | `lemma` | [kernel_isBigO_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-isbigo-zero--26d9a442fd0e4d9c5e863dac.md) | 102 | `result-track:26d9a442fd0e4d9c5e863dacbff3d1d1351b861fd4c726335a0f55de7e29b633` |
| 11 | `def` | [integrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/integrand--2510356f2702233efccf2333.md) | 109 | `declaration-track:2510356f2702233efccf2333f4a84692c5f798918482afc32ebd9ab70dc3dfb9` |
| 12 | `def` | [tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/tail--cc04bb2ed319b158f9afbb36.md) | 110 | `declaration-track:cc04bb2ed319b158f9afbb364ff069262f14e545997d398c5f3a5c658f7d0050` |
| 13 | `def` | [adjustedIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjustedintegrand--5501f58fccb7822442ccaf45.md) | 112 | `declaration-track:5501f58fccb7822442ccaf45f819be4a51e7eaebcd8d56940656f13ea4c34542` |
| 14 | `def` | [adjustedTail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjustedtail--69a631c474de0ad3af2509ea.md) | 114 | `declaration-track:69a631c474de0ad3af2509eaf976ff389174cdb3d00ca39901aea7813f34d43d` |
| 15 | `lemma` | [integrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/integrand-integrable--71d0f5bce506b746d3bafa07.md) | 116 | `result-track:71d0f5bce506b746d3bafa074836e5f10f43f278f3ed061b0d7e52236605507f` |
| 16 | `lemma` | [correction_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/correction-integrable--23c6016688231eea5a852619.md) | 131 | `result-track:23c6016688231eea5a85261920f1463eb90c69a538dc2ce89d51ae4acc07105f` |
| 17 | `lemma` | [adjusted_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjusted-integrable--dd906427c18e15e0499525c7.md) | 137 | `result-track:dd906427c18e15e0499525c7b1310575e5ebcc70655d90a098c4071c322bf3ed` |
| 18 | `lemma` | [adjusted_kernel_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjusted-kernel-norm-le--c16dd3c24a4408c0b056681b.md) | 146 | `result-track:c16dd3c24a4408c0b056681bc37e1cc5f4eeb3921436bdf87e38b609ad21d066` |
| 19 | `theorem` | [tail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/tail-norm-le--37cfdb6f3d2c9fd8dc1f5835.md) | 157 | `result-track:37cfdb6f3d2c9fd8dc1f5835f993407224a70fa6ee078bbc581b71c31b64c574` |
| 20 | `lemma` | [adjustedTail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjustedtail-norm-le--4fec11ef31fcb020b58d9b8e.md) | 180 | `result-track:4fec11ef31fcb020b58d9b8e16ad3d7f7cbbe70942fcda3c927ab52e72f43d74` |
| 21 | `lemma` | [adjustedTail_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjustedtail-eq--1e79d46957b4fc56da7efb61.md) | 205 | `result-track:1e79d46957b4fc56da7efb614f372d5f27a792b202978befa2b714ee4db5d1df` |
| 22 | `def` | [cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cell--70f1b91a99e29314bd655c22.md) | 221 | `declaration-track:70f1b91a99e29314bd655c2284f7d4a7ffd1445ddf3d553075c59b51ed4f01cf` |
| 23 | `def` | [cellDerivative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cellderivative--2d107030006c6f96fbb404b6.md) | 224 | `declaration-track:2d107030006c6f96fbb404b62c608312af6084f915f00bb12f9a88b361eadcf9` |
| 24 | `lemma` | [cell_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cell-left--e8d14633c3b5c13931e43443.md) | 226 | `result-track:e8d14633c3b5c13931e43443338b4759b9d09bfdc19651e93b50e4ea11b6833e` |
| 25 | `lemma` | [cell_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cell-right--6b82015bc0c12c832d89789b.md) | 227 | `result-track:6b82015bc0c12c832d89789b903e8cd1d2779ad5e64541215250b1a30cc8fde7` |
| 26 | `lemma` | [derivative_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/derivative-left--37d2bd49bae198d36472a86d.md) | 229 | `result-track:37d2bd49bae198d36472a86d362509673d3382e4add61e05cea59e1d4db8e876` |
| 27 | `lemma` | [derivative_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/derivative-right--66faa5d5b34fdef563f80a15.md) | 231 | `result-track:66faa5d5b34fdef563f80a1559d431f00cd35dd8baa15a1789ffa07a05eadb02` |
| 28 | `lemma` | [cell_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cell-hasderivat--8374a665e0844cdc2ebbf1e2.md) | 234 | `result-track:8374a665e0844cdc2ebbf1e23d6f7f09aa252bca28ad09dbd541056c3205f780` |
| 29 | `lemma` | [cellDerivative_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cellderivative-hasderivat--248a6774d964dc4304d8fe71.md) | 241 | `result-track:248a6774d964dc4304d8fe7179d8f7002fc4239742a0d1b7fc1fa39a5e413b0d` |
| 30 | `lemma` | [kernel_eq_cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/kernel-eq-cell--36ba768ef780dc199cd88848.md) | 245 | `result-track:36ba768ef780dc199cd88848439155b6223e93e340f3058fbe399d09ee495a41` |
| 31 | `lemma` | [cell_integral_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/cell-integral-identity--dabd5709d6d69b4022b427a7.md) | 253 | `result-track:dabd5709d6d69b4022b427a7044a50cb931edb390fce77d712b2e640515c9a6d` |
| 32 | `lemma` | [finite_integral_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/finite-integral-identity--9e5932440aa1783118c8c64a.md) | 297 | `result-track:9e5932440aa1783118c8c64acc4bd1d288ecceb969828f421d3a75abb2e1fdd4` |
| 33 | `theorem` | [adjusted_value_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjusted-value-identity--3ef786334a94715a0978104d.md) | 322 | `result-track:3ef786334a94715a0978104dce18651f66f5e00e31c41c6237660c9e43035672` |
| 34 | `lemma` | [adjusted_integer_tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/adjusted-integer-tail-identity--5a1ad111efce0456961e9cf7.md) | 360 | `result-track:5a1ad111efce0456961e9cf7a0d701f70d49a74abb6c5a9c34ded0e7ed060f63` |
| 35 | `theorem` | [integer_tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/integer-tail-identity--64f30c573794b269d9e854d0.md) | 374 | `result-track:64f30c573794b269d9e854d073161b91cc261f915ef24346863e42c4d23655d4` |
| 36 | `theorem` | [value_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/value-identity--8c5d8236e10ea31efe24b31d.md) | 389 | `result-track:8c5d8236e10ea31efe24b31de427ebed848eb3aed9bd284481171ac81b4cb5ec` |
| 37 | `def` | [reference](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/reference--ad07b8f85b178f7297d6969d.md) | 395 | `declaration-track:ad07b8f85b178f7297d6969d8358079c9041a38f8cabd8a9b734a31ee8190b8a` |
| 38 | `def` | [multiplier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/multiplier--75c2c53cfd0430c71afda4d8.md) | 396 | `declaration-track:75c2c53cfd0430c71afda4d8090af1f361fd0b2cf985dc88e8a72f2a844147b5` |
| 39 | `theorem` | [source_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/source-identity--4e6584c7dc5a943bfd421ceb.md) | 398 | `result-track:4e6584c7dc5a943bfd421ceb97e992a49f6274824dac9c868398a56a3412e3fe` |
| 40 | `def` | [finiteModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/finitemodel--a6f9deb216d0d29487f11551.md) | 405 | `declaration-track:a6f9deb216d0d29487f11551638b7a9ec6580299b5f94dc555735b50184e7cbc` |
| 41 | `theorem` | [finiteModel_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/finitemodel-residual--3b504554a3f7f2963879affe.md) | 408 | `result-track:3b504554a3f7f2963879affe1a86ca1e0f68a167b72e45c9a1bcb7daed450408` |
| 42 | `theorem` | [finiteModel_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/finitemodel-error--b491cb31f3ec69b24a990d5b.md) | 415 | `result-track:b491cb31f3ec69b24a990d5b7412260271412eb1dfa9cc80da46009adda81842` |
| 43 | `theorem` | [finiteModel_majorant_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/declarations/finitemodel-majorant-tendsto-zero--03015cd2b70bce5efdcec1bd.md) | 423 | `result-track:03015cd2b70bce5efdcec1bdc1d94ed2502fd151843229f246ae46f3c23d6616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
