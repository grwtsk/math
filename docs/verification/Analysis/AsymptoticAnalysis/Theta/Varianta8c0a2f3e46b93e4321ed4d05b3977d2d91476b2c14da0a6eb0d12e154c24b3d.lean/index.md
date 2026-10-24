# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Theta.Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19f512f654ca55358a339c65c68431c15059d950",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19f512f654ca55358a339c65c68431c15059d950`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta--9cf64d0e234a5b97efb2b0f4.md) | 48 | `declaration-track:9cf64d0e234a5b97efb2b0f46e86c92d8f62a420a13f79e3ed6642d1e30200e2` |
| 2 | `theorem` | [IsBigO.antisymm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/isbigo-antisymm--9b95eefc307331ca4e2f0b43.md) | 54 | `result-track:9b95eefc307331ca4e2f0b431df436e0ccdf31a25fc621738e598c901daff2d3` |
| 3 | `lemma` | [IsTheta.isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-isbigo--103227d70cee1acf81502726.md) | 58 | `result-track:103227d70cee1acf81502726233e0fed7da0432b324431712ac4a2a1a4419703` |
| 4 | `lemma` | [IsTheta.isBigO_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-isbigo-symm--c281ba191c59a8e12e83d733.md) | 60 | `result-track:c281ba191c59a8e12e83d73388cb7b25497c5793cfb424946f3ec7c211c08f19` |
| 5 | `theorem` | [isTheta_refl](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-refl--8a3484c2c91786c0e2d1c1e5.md) | 63 | `result-track:8a3484c2c91786c0e2d1c1e50add79ec0fa4c609e4701f8bb00059d6ed2fec58` |
| 6 | `theorem` | [isTheta_rfl](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-rfl--4335ed1e0259adfcc1ff604d.md) | 67 | `result-track:4335ed1e0259adfcc1ff604dc696ddb5ac18c2a18a5c74a3dec023d51318092d` |
| 7 | `theorem` | [IsTheta.symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-symm--41a5576cbb4c73be7a96448c.md) | 72 | `result-track:41a5576cbb4c73be7a96448c3ec894c53e7ae8448b4d812ce9623519a3ef62e1` |
| 8 | `theorem` | [isTheta_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-comm--9d7c945613d2c12658369ba8.md) | 76 | `result-track:9d7c945613d2c12658369ba8268af19323ee8ffd14c42bc33dd79e7cda7f1f3d` |
| 9 | `theorem` | [IsTheta.trans](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-trans--72bdfb35cf1e0086c8ec035e.md) | 81 | `result-track:72bdfb35cf1e0086c8ec035e532459bdacedca8bf7a3b2892878e766505fcc28` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/instance--6a5e2143dacca8dc2315d620.md) | 87 | `declaration-track:6a5e2143dacca8dc2315d620dc895f7988508028aba33d24b562256508e56202` |
| 11 | `theorem` | [IsBigO.trans_isTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/isbigo-trans-istheta--33e8763c1c435267b2967840.md) | 91 | `result-track:33e8763c1c435267b296784022009bad822322a7f8ce6d36e55d47eae20cbc26` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/instance--38cf917cda8b14238638b42b.md) | 97 | `declaration-track:38cf917cda8b14238638b42bb1eda0951d077d2030e95dd018aa383c19089f96` |
| 13 | `theorem` | [IsTheta.trans_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-trans-isbigo--e899e2e1bc69825796211bca.md) | 101 | `result-track:e899e2e1bc69825796211bcaf9cec7c6c119e8c988bd847366091233050a43e7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/instance--73f13f5315bd89bf0dc75885.md) | 107 | `declaration-track:73f13f5315bd89bf0dc75885c2e63d6717528d56801fd18cf8536614872828d7` |
| 15 | `theorem` | [IsLittleO.trans_isTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/islittleo-trans-istheta--f21f6134b68c0318513f844b.md) | 111 | `result-track:f21f6134b68c0318513f844beb692f90b403e27fa227cb6bf4159fd0ea1f9bb5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/instance--eafbf6219584c0c40fb78d16.md) | 117 | `declaration-track:eafbf6219584c0c40fb78d1651578e616e651806d1a0f026cadf6385451af0a3` |
| 17 | `theorem` | [IsTheta.trans_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-trans-islittleo--39555ba864a80abdefb571b2.md) | 121 | `result-track:39555ba864a80abdefb571b210fe3ec8445ad5fe79734c1debeb557574fee41a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/instance--43b11a94f3627bece0b56ca6.md) | 127 | `declaration-track:43b11a94f3627bece0b56ca61e5395b787ca575b9e5732f7782f44416aa2e83a` |
| 19 | `theorem` | [IsTheta.trans_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-trans-eventuallyeq--1a8759da90f1b2115cd46557.md) | 131 | `result-track:1a8759da90f1b2115cd46557750c4c1ef34a902441cd4122f06cd8c0465343c0` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/instance--a47f8b1a1641c139d819a541.md) | 137 | `declaration-track:a47f8b1a1641c139d819a54120f5b44ecb10fd60e5d135d82956fc43c73875c1` |
| 21 | `theorem` | [_root_.Filter.EventuallyEq.trans_isTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/root-filter-eventuallyeq-trans-istheta--2d86bd4d2db07938410606f5.md) | 141 | `result-track:2d86bd4d2db07938410606f5d676b0faf73b9b6cf1e3695a63ecd05fe93e40c5` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/instance--ae8c69b190156aa975d454c9.md) | 147 | `declaration-track:ae8c69b190156aa975d454c916c238122f305d7b4e13642d7d6708682da40336` |
| 23 | `theorem` | [isTheta_norm_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-norm-left--f668002701db1278e2f39e4d.md) | 151 | `result-track:f668002701db1278e2f39e4defb32424a1b3ce43310e78ca1a8a67a2cf62628d` |
| 24 | `theorem` | [isTheta_norm_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-norm-right--21f57005c3ee90372b7fbf33.md) | 155 | `result-track:21f57005c3ee90372b7fbf331f7d53a1867b306ddf6e8407aa3569ae548c5c33` |
| 25 | `theorem` | [isTheta_of_norm_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-of-norm-eventuallyeq--0a40681a4df8ee39c027838b.md) | 166 | `result-track:0a40681a4df8ee39c027838b5f978d121e7f6a530cb3dc464023b1a28e1e7496` |
| 26 | `theorem` | [isTheta_of_norm_eventuallyEq'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-of-norm-eventuallyeq--548e009e4b9372467255b719.md) | 171 | `result-track:548e009e4b9372467255b719495cc00d237a7b66fbc018ab3b85c08e7824086f` |
| 27 | `theorem` | [IsTheta.isLittleO_congr_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-islittleo-congr-left--2acb4e9b0bc07ba01008bad2.md) | 175 | `result-track:2acb4e9b0bc07ba01008bad23f0623474488b11e710ea622d9bb56319d3c0d74` |
| 28 | `theorem` | [IsTheta.isLittleO_congr_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-islittleo-congr-right--5bf65fdefbcfa141b3e65fce.md) | 179 | `result-track:5bf65fdefbcfa141b3e65fceee5939a9eb6d85f8f3e53088abced06880b0ab77` |
| 29 | `theorem` | [IsTheta.isBigO_congr_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-isbigo-congr-left--7da6c935b0b4d0c7483a80e8.md) | 183 | `result-track:7da6c935b0b4d0c7483a80e8a3108a2a9beb09339ea0a51d9de057c98bd3b1df` |
| 30 | `theorem` | [IsTheta.isBigO_congr_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-isbigo-congr-right--56bfc4977a3747d1b7075e0b.md) | 187 | `result-track:56bfc4977a3747d1b7075e0b3a858ed50f0ba4686a1d890f3c97645521a9dc06` |
| 31 | `theorem` | [IsTheta.mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-mono--4ddcd7ac33f72ba3b1be9590.md) | 191 | `result-track:4ddcd7ac33f72ba3b1be9590ef17ac22bc30dc06522e86829edd07897706d470` |
| 32 | `theorem` | [IsTheta.sup](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-sup--278926cdd4cbe69486ad80d6.md) | 195 | `result-track:278926cdd4cbe69486ad80d63c979f9d54e6f4af357f9a7c1cd105e0bcafa6dc` |
| 33 | `theorem` | [isTheta_sup](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-sup--09eb0684507f5fa7253ca30e.md) | 200 | `result-track:09eb0684507f5fa7253ca30e77296a17edc11406002d7ee650c119ed3845317a` |
| 34 | `theorem` | [IsTheta.eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-eq-zero-iff--d00f7b1df5b8961a7164893d.md) | 204 | `result-track:d00f7b1df5b8961a7164893d9cd0cdd7ea470aac00ab7727162becf15691f85e` |
| 35 | `theorem` | [IsTheta.tendsto_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-tendsto-zero-iff--4fb13f10835c3d14debab951.md) | 208 | `result-track:4fb13f10835c3d14debab951388407da8f5a085d793c2d66fb4d62087ea637dd` |
| 36 | `theorem` | [IsTheta.tendsto_norm_atTop_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-tendsto-norm-attop-iff--1e272f71912f14c3b7cbff3e.md) | 212 | `result-track:1e272f71912f14c3b7cbff3e0063899395b768807ae1bb411eee54f8961f1f1b` |
| 37 | `theorem` | [IsTheta.isBoundedUnder_le_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-isboundedunder-le-iff--84069910d0be620f356e9baf.md) | 217 | `result-track:84069910d0be620f356e9baf29ac799b7d4e4999ecba69d531e5d40d3f469257` |
| 38 | `theorem` | [IsTheta.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-smul--20695f3e5ba8481104e36c52.md) | 222 | `result-track:20695f3e5ba8481104e36c5224e28a05907824dcc2f0f8c542c5ff045b0e9b9c` |
| 39 | `theorem` | [IsTheta.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-mul--bd5810cb642a79e7e6f83eec.md) | 228 | `result-track:bd5810cb642a79e7e6f83eec453dde3a0d201c63be25296ac417115d7aea081e` |
| 40 | `theorem` | [IsTheta.inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-inv--09ec5006004edecf36addac1.md) | 233 | `result-track:09ec5006004edecf36addac158f11829e96606cf89849ab735a49bb39a0c3258` |
| 41 | `theorem` | [isTheta_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-inv--f17a0434bd45709a901d8372.md) | 239 | `result-track:f17a0434bd45709a901d8372ee5c0bc1c98c0783cd728a62ef44876325e0cf18` |
| 42 | `theorem` | [IsTheta.div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-div--3abeeec88e73c75039ffa248.md) | 244 | `result-track:3abeeec88e73c75039ffa2481d13509c4adee401d6513bc0eba2d5bcb19a9f65` |
| 43 | `theorem` | [IsTheta.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-pow--aed1505a8e50acad28d393c2.md) | 249 | `result-track:aed1505a8e50acad28d393c2462580fd3e71bea98855e8a589ab4b64edf36567` |
| 44 | `theorem` | [IsTheta.zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-zpow--b2972c2c9cca07c7cd7e58c5.md) | 254 | `result-track:b2972c2c9cca07c7cd7e58c56c630d6f33c67103684bfcb22840a998da39bb37` |
| 45 | `theorem` | [isTheta_const_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-const-const--2a4664a1c334d9e0ee30d7fa.md) | 261 | `result-track:2a4664a1c334d9e0ee30d7fa8ef3979226e26f368afc5be5550ad7972864f401` |
| 46 | `theorem` | [isTheta_const_const_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-const-const-iff--9c2c20857280cb2b3a7bfcb8.md) | 267 | `result-track:9c2c20857280cb2b3a7bfcb813fe377272ff228cc62c56c0d291fa5003b4adeb` |
| 47 | `theorem` | [isTheta_zero_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-zero-left--121f6e8e8a39f10863b72ac4.md) | 273 | `result-track:121f6e8e8a39f10863b72ac46d33cce4dff0cc0c3bd36576c1cf3a7e3c88b93f` |
| 48 | `theorem` | [isTheta_zero_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-zero-right--c7c3fdceb09a2b5f6da03840.md) | 278 | `result-track:c7c3fdceb09a2b5f6da03840394e73124bc0dcbf440bb81fd5fd886d8044dc88` |
| 49 | `theorem` | [isTheta_const_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-const-smul-left--68ad076824ef4baa354aed28.md) | 282 | `result-track:68ad076824ef4baa354aed283764f992c007c67f5f61e7105c83f4fb1fac016b` |
| 50 | `theorem` | [isTheta_const_smul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-const-smul-right--bc3a7e766669a4948cd847e8.md) | 291 | `result-track:bc3a7e766669a4948cd847e82fe84e1e4463e855c538cc0adf5abeed161ae7ce` |
| 51 | `theorem` | [isTheta_const_mul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-const-mul-left--2866956f123eb8ee63f2c9f1.md) | 300 | `result-track:2866956f123eb8ee63f2c9f15d545f34356e78c2d05fdef92bd8190f61c5b146` |
| 52 | `theorem` | [isTheta_const_mul_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-const-mul-right--c8db13f609e6e5acd32c9121.md) | 309 | `result-track:c8db13f609e6e5acd32c9121640b999b450a8ed69c40b64049a4466debaa23ff` |
| 53 | `lemma` | [IsTheta.add_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Theta/Varianta8c0a2f3e46b93e4321ed4d05b3977d2d91476b2c14da0a6eb0d12e154c24b3d.lean/declarations/istheta-add-islittleo--3b95ecd855c5b1188efc1a56.md) | 318 | `result-track:3b95ecd855c5b1188efc1a56b6f705a3949899f07ad9d37fb4c239f2f30d6ea7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
