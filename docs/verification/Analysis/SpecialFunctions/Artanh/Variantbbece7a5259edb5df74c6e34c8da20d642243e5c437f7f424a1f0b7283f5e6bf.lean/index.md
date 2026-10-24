# Verification target: GRWTSK.Analysis.SpecialFunctions.Artanh.Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0dd7efab7be4e5d7cd52190b89a67b5dcec4ba9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0dd7efab7be4e5d7cd52190b89a67b5dcec4ba9`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean.json)

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
| 1 | `def` | [artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh--0101c9674093b258e69f317e.md) | 52 | `declaration-track:0101c9674093b258e69f317ed88cd45d16e05e08fc5e54d7ff6b5c50321698e3` |
| 2 | `theorem` | [artanh_eq_half_log](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-eq-half-log--0dd2c3f911ad586a9fc4ea3f.md) | 55 | `result-track:0dd2c3f911ad586a9fc4ea3f4f63cf2897a4f4cdcf2c77e3f29698e620240d60` |
| 3 | `theorem` | [exp_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/exp-artanh--e42fae36da4063c62c19979a.md) | 59 | `result-track:e42fae36da4063c62c19979ab2b00f6233730b517b51ec9b52c9b05d72342393` |
| 4 | `theorem` | [artanh_zero](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-zero--084907f37760e10f1a721d40.md) | 63 | `result-track:084907f37760e10f1a721d403c8b3d2e9ae892a51208dc80417513f98c6611cf` |
| 5 | `theorem` | [sinh_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/sinh-artanh--dd71d60dbe1be30021e3e3e9.md) | 65 | `result-track:dd71d60dbe1be30021e3e3e96fb1e895aa2ce16793ac0651ec4db01e170fe5f7` |
| 6 | `theorem` | [cosh_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/cosh-artanh--464b1ceac409ccca7d727f21.md) | 70 | `result-track:464b1ceac409ccca7d727f219e1e0eca625b567857e9257de966893df8861766` |
| 7 | `theorem` | [tanh_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/tanh-artanh--ec5f80bfabc0240bf8ee3939.md) | 76 | `result-track:ec5f80bfabc0240bf8ee3939744d8feacd7936ad1bea789d1b0de570a8b8db1a` |
| 8 | `theorem` | [artanh_tanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-tanh--c4c17c3c9666fd1a76eff2e1.md) | 81 | `result-track:c4c17c3c9666fd1a76eff2e1fd514a20a162e996ba84bd76adca1bda7d34339a` |
| 9 | `theorem` | [strictMonoOn_one_add_div_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/strictmonoon-one-add-div-one-sub--7fe484f5c4364fd1f8384449.md) | 89 | `result-track:7fe484f5c4364fd1f83844491c36a67cfbbdbd264f39d6a8ee34646ad64ff998` |
| 10 | `theorem` | [strictMonoOn_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/strictmonoon-artanh--5fb4d9d629a82ac05f8c071f.md) | 95 | `result-track:5fb4d9d629a82ac05f8c071f9f78275ad6b9cfb842d5b8d3047e1a999a08cb97` |
| 11 | `theorem` | [artanh_le_artanh_iff](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-le-artanh-iff--dd9d05621dd46c2f59bb18fa.md) | 100 | `result-track:dd9d05621dd46c2f59bb18faf49c2b71951d20496879a07e1a1135259533ab21` |
| 12 | `theorem` | [artanh_lt_artanh_iff](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-lt-artanh-iff--dcd97e0af1308d4f99bb6b57.md) | 104 | `result-track:dcd97e0af1308d4f99bb6b577ddf438aec4db1eb64c56726bc0bdc94e0008d8a` |
| 13 | `theorem` | [artanh_le_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-le-artanh--3d4512712ddbedab23f3427d.md) | 108 | `result-track:3d4512712ddbedab23f3427d6242cc993149e3513f13bc3254afc528ab270ec0` |
| 14 | `theorem` | [artanh_lt_artanh](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-lt-artanh--1b7891a41d3cbcb3fec0b6d9.md) | 112 | `result-track:1b7891a41d3cbcb3fec0b6d961623e2b2d4d12625d50527b0bd7e70a5db7680e` |
| 15 | `theorem` | [artanh_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-eq-zero-iff--6130e8d20b340af2ead3b2bb.md) | 116 | `result-track:6130e8d20b340af2ead3b2bb09e83044fefa8a9175e8997246f8543babcb5573` |
| 16 | `theorem` | [artanh_pos](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-pos--5c02f4a2eeb7c2c2e705a2e4.md) | 119 | `result-track:5c02f4a2eeb7c2c2e705a2e481c690243f2589576969e2171ba87b3416d6064a` |
| 17 | `theorem` | [artanh_neg](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-neg--8df5b8fc809ce32b140c8b54.md) | 123 | `result-track:8df5b8fc809ce32b140c8b5488bd35b2a529f2ab9a466deb8792b71f43fb1e3d` |
| 18 | `theorem` | [artanh_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-nonneg--458e238c52179951077611ad.md) | 127 | `result-track:458e238c52179951077611ad4ca658d580696498beb7360f64dc69241d7fb0ce` |
| 19 | `theorem` | [artanh_nonpos](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-nonpos--826d0c02334012ec0ba08a6a.md) | 134 | `result-track:826d0c02334012ec0ba08a6a1caf037b3a94e9f8201869da0217cf63c7579f21` |
| 20 | `def` | [tanhPartialEquiv](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/tanhpartialequiv--259f1f1312ade4afd5325ee9.md) | 142 | `declaration-track:259f1f1312ade4afd5325ee963e95088fdd8eb8c1894ee915b632b7cad602d86` |
| 21 | `theorem` | [tanh_bijOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/tanh-bijon--5f76f1a131f847c3aee444dc.md) | 152 | `result-track:5f76f1a131f847c3aee444dc031bf95796b7a5dca1726b31a4a06fea7509d407` |
| 22 | `theorem` | [tanh_injective](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/tanh-injective--11f3ad97abf57de02510900e.md) | 154 | `result-track:11f3ad97abf57de02510900e844c82a63679f62ff3722db9116f682425b4a150` |
| 23 | `theorem` | [tanh_surjOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/tanh-surjon--b2df5390b2c4e6295e95722e.md) | 156 | `result-track:b2df5390b2c4e6295e95722e1d97c7a562eca0ac3cfbc5b3545a48407347ba57` |
| 24 | `theorem` | [artanh_bijOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-bijon--7f520e7f49e24f639eee29cc.md) | 158 | `result-track:7f520e7f49e24f639eee29cc8317a9ec5b830ee3297986b5e193ad3ccd8ad072` |
| 25 | `theorem` | [artanh_injOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-injon--761a0a640f7131e9c112965b.md) | 160 | `result-track:761a0a640f7131e9c112965b3f6277e66015ee071e0256af94ab265c140121a2` |
| 26 | `theorem` | [artanh_surjOn](../../../../../mathematics/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/declarations/artanh-surjon--02ca0db96b8fd74a0b2aab97.md) | 162 | `result-track:02ca0db96b8fd74a0b2aab97e6945e5e3f0c479992be7d5593e214ed860d369a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
