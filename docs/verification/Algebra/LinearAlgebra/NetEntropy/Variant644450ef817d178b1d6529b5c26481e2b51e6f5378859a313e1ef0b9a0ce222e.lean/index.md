# Verification target: GRWTSK.Algebra.LinearAlgebra.NetEntropy.Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c56aa969ffe4cead3b75861a49941065a35c97db",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c56aa969ffe4cead3b75861a49941065a35c97db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean.json)

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
| 1 | `def` | [IsDynNetIn](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/isdynnetin--f6a5d6daeb9ca4a77ae557b6.md) | 69 | `declaration-track:f6a5d6daeb9ca4a77ae557b6f558269f5c2cf573345b073c2624d54e8cc40bfe` |
| 2 | `lemma` | [IsDynNetIn.of_le](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/isdynnetin-of-le--0f661a3dac80dbffcd38c1d6.md) | 72 | `result-track:0f661a3dac80dbffcd38c1d63ee074625c925d87b329fa0482049d2f13cc8390` |
| 3 | `lemma` | [IsDynNetIn.of_entourage_subset](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/isdynnetin-of-entourage-subset--897dcc67fb3e4738cfceca5a.md) | 75 | `result-track:897dcc67fb3e4738cfceca5a52ab9ca04d61e3ba63700386261f5594cffbca64` |
| 4 | `lemma` | [isDynNetIn_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/isdynnetin-empty--681a527164f4302b2dc0daa3.md) | 79 | `result-track:681a527164f4302b2dc0daa3dfe618259d50fdca549431bde5eeb37bdc8b1909` |
| 5 | `lemma` | [isDynNetIn_singleton](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/isdynnetin-singleton--ffc0fb493830f2235390c11d.md) | 81 | `result-track:ffc0fb493830f2235390c11d948741ef17e7330359d85c47a06d1343ee050521` |
| 6 | `lemma` | [IsDynNetIn.card_le_card_of_isDynCoverOf](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/isdynnetin-card-le-card-of-isdyncoverof--eb4dc3b28ffbc02a99900560.md) | 88 | `result-track:eb4dc3b28ffbc02a99900560103e9f692a69d2325069f306ff20ed43f6fa3e0c` |
| 7 | `def` | [netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard--a2fa0958be0fce64c0ef1ec7.md) | 102 | `declaration-track:a2fa0958be0fce64c0ef1ec7d371388355507a73b46ac36420cf6a22499b817d` |
| 8 | `lemma` | [IsDynNetIn.card_le_netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/isdynnetin-card-le-netmaxcard--47cf3acd999e74ef0ae618a6.md) | 105 | `result-track:47cf3acd999e74ef0ae618a6fe800845b3bed2d29fd7779a0d38562c8620cfb9` |
| 9 | `lemma` | [netMaxcard_monotone_time](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-monotone-time--518bb4f390153d488b20d90c.md) | 109 | `result-track:518bb4f390153d488b20d90c9f79212edb697cdfde77dadc37f5c7d6dbd905de` |
| 10 | `lemma` | [netMaxcard_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-antitone--8b9bc6f0c288078c60af736f.md) | 113 | `result-track:8b9bc6f0c288078c60af736fb5cbbd986ae670ce05555f39c455cdc2ecc5cc53` |
| 11 | `lemma` | [netMaxcard_finite_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-finite-iff--edc3aea82a57afd962eb6dad.md) | 117 | `result-track:edc3aea82a57afd962eb6dadb279ca879e7e994b9327f5b1dcd182a29b559c7c` |
| 12 | `lemma` | [netMaxcard_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-empty--e45070c95c70fba45830f203.md) | 153 | `result-track:e45070c95c70fba45830f20302f81d4a5b265f6bcfbb895b619a69f46f5c1637` |
| 13 | `lemma` | [netMaxcard_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-eq-zero-iff--7147cdf9c58a1960a1166b45.md) | 160 | `result-track:7147cdf9c58a1960a1166b45d4f1a7e9838c1b19745a32bfce341de7dd544321` |
| 14 | `lemma` | [one_le_netMaxcard_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/one-le-netmaxcard-iff--bfedd50ad4cfdc9110deb687.md) | 171 | `result-track:bfedd50ad4cfdc9110deb687f8aae10c923b57f8e6781599ac1f23779c27d585` |
| 15 | `lemma` | [netMaxcard_zero](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-zero--65e41ec2fb1c6431da064b1c.md) | 176 | `result-track:65e41ec2fb1c6431da064b1c868b482afc3dd3f3f99f548492deedad403eaeb5` |
| 16 | `lemma` | [netMaxcard_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-univ--7f2822e693a3703cbb06e66e.md) | 184 | `result-track:7f2822e693a3703cbb06e66e731c335a4377009b3676ecdc68a86789121cc9bb` |
| 17 | `lemma` | [netMaxcard_infinite_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-infinite-iff--ff0db9d0b278fea96759124d.md) | 192 | `result-track:ff0db9d0b278fea96759124d808702577f26e3199da37e5457548d545a3faf76` |
| 18 | `lemma` | [netMaxcard_le_coverMincard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netmaxcard-le-covermincard--c506c309040d699c7d9b2b06.md) | 208 | `result-track:c506c309040d699c7d9b2b0607a37d854c103364be31f28516c490262df64059` |
| 19 | `lemma` | [coverMincard_le_netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/covermincard-le-netmaxcard--efc98904d8db186489ae2347.md) | 219 | `result-track:efc98904d8db186489ae2347766cbb4d75738711631751df8d349dc033854529` |
| 20 | `def` | [netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyentourage--589de53aa042054f7ba6e3d4.md) | 253 | `declaration-track:589de53aa042054f7ba6e3d4b33657e8f53acca1bafbce7da0b44ef8c6711446` |
| 21 | `def` | [netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage--c5ad37090f0e6adc3a3dfb6b.md) | 259 | `declaration-track:c5ad37090f0e6adc3a3dfb6b9c7c4f244da22aa83830df139cd682490ad0ab41` |
| 22 | `lemma` | [netEntropyInfEntourage_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage-antitone--a9a0979972ffac917198bcb4.md) | 262 | `result-track:a9a0979972ffac917198bcb4d7a9b2915c113348a9a4775a1d8fac0e2313cde8` |
| 23 | `lemma` | [netEntropyEntourage_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyentourage-antitone--637db044c87628bd8c15b3dc.md) | 266 | `result-track:637db044c87628bd8c15b3dc252c66fc86ae9c665bae0b9c95781338d8357736` |
| 24 | `lemma` | [netEntropyInfEntourage_le_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage-le-netentropyentourage--9d2ce817304bc14202ccfda5.md) | 270 | `result-track:9d2ce817304bc14202ccfda5ff02d5c6b38b7f1464af0c448f991ae27e2e31b7` |
| 25 | `lemma` | [netEntropyEntourage_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyentourage-empty--ab73648103fcbc21c05be84a.md) | 275 | `result-track:ab73648103fcbc21c05be84ae0f3d98eccbdb81bfe528a4123a22e03ca6d707c` |
| 26 | `lemma` | [netEntropyInfEntourage_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage-empty--a962d5f77644991268a5fae8.md) | 281 | `result-track:a962d5f77644991268a5fae88db222d2a63b882246c3cb2aff5d7386a690f97d` |
| 27 | `lemma` | [netEntropyInfEntourage_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage-nonneg--06f04fe6a4a1c375a3c3a128.md) | 284 | `result-track:06f04fe6a4a1c375a3c3a128da2672c7cd6a3e6cc1e439a9424f35257213973d` |
| 28 | `lemma` | [netEntropyEntourage_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyentourage-nonneg--4911a7995e4af0232c81977e.md) | 293 | `result-track:4911a7995e4af0232c81977e31f6b48f054ea57c13171115fab69ef39d4d29d7` |
| 29 | `lemma` | [netEntropyInfEntourage_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage-univ--eacf9e2b0b654a1c615e085f.md) | 297 | `result-track:eacf9e2b0b654a1c615e085f85c45af35e8da7c8f890a518e0b2cef29205d49e` |
| 30 | `lemma` | [netEntropyEntourage_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyentourage-univ--434a8092f9c1a70d40abb12b.md) | 302 | `result-track:434a8092f9c1a70d40abb12b34bf8b79381c55b9b5df9f2d580cdff3527eb405` |
| 31 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage-le-coverentropyinfentourage--74b97097ebef1aeee8d0a78e.md) | 307 | `result-track:74b97097ebef1aeee8d0a78e27768e74490afd5f018f3bf3c42dd52263b45fc0` |
| 32 | `lemma` | [coverEntropyInfEntourage_le_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/coverentropyinfentourage-le-netentropyinfentourage--69bf438e328b72517f55bddf.md) | 311 | `result-track:69bf438e328b72517f55bddf3177e9da78b19240bd999957c3e3be29d14d6a6c` |
| 33 | `lemma` | [netEntropyEntourage_le_coverEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyentourage-le-coverentropyentourage--546152f3d48275ae9a80728c.md) | 316 | `result-track:546152f3d48275ae9a80728ca821fff4e8b90f3f96394f93c1f379b230e90fb6` |
| 34 | `lemma` | [coverEntropyEntourage_le_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/coverentropyentourage-le-netentropyentourage--9f4d6820442ce210d3b066a6.md) | 320 | `result-track:9f4d6820442ce210d3b066a6dffce08c3c037c8dd0719fbb26916508423c0629` |
| 35 | `theorem` | [coverEntropyInf_eq_iSup_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/coverentropyinf-eq-isup-netentropyinfentourage--59e5fc3cc5a0d5090cd41935.md) | 332 | `result-track:59e5fc3cc5a0d5090cd41935b340af660a51b90dd4af48526171b6e635ea7aca` |
| 36 | `theorem` | [coverEntropy_eq_iSup_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/coverentropy-eq-isup-netentropyentourage--9a56a15c35f92e91ff2d8be0.md) | 347 | `result-track:9a56a15c35f92e91ff2d8be01741a8c00dbb76add6db534539da3ddf334a084e` |
| 37 | `lemma` | [coverEntropyInf_eq_iSup_basis_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/coverentropyinf-eq-isup-basis-netentropyinfentourage--4db2fccf8a3686d21fb78b9e.md) | 358 | `result-track:4db2fccf8a3686d21fb78b9e101ec7a8bbe1cec993f1f24741ad1fc34e52f77e` |
| 38 | `lemma` | [coverEntropy_eq_iSup_basis_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/coverentropy-eq-isup-basis-netentropyentourage--5e6caa7fe7e36677e7cbd0b5.md) | 368 | `result-track:5e6caa7fe7e36677e7cbd0b5ccebaa425ca17bfde1c72e458061e6054f90084e` |
| 39 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInf](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyinfentourage-le-coverentropyinf--74a33ea78aa0157caafa7c9f.md) | 378 | `result-track:74a33ea78aa0157caafa7c9ffda78fc4dd5d072a924a0824557fb15bed18c86e` |
| 40 | `lemma` | [netEntropyEntourage_le_coverEntropy](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/declarations/netentropyentourage-le-coverentropy--50ce273fadd5cb7ef263048e.md) | 383 | `result-track:50ce273fadd5cb7ef263048e748578783eca6edeaa237b047a9b09b34f14b36c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
