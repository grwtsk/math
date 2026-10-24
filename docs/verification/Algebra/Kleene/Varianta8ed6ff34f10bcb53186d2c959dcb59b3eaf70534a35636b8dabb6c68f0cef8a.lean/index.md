# Verification target: GRWTSK.Algebra.Kleene.Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9abfc687e6ad4f30a7dd7aeadb1176278c77df58",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9abfc687e6ad4f30a7dd7aeadb1176278c77df58`.

Source path: `GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IdemSemiring](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/idemsemiring--8d0f93b28cea7d84144cf1f1.md) | 69 | `declaration-track:8d0f93b28cea7d84144cf1f15f2db3936b7c8f5ef0160b3bf721be1f0dff124f` |
| 2 | `class` | [IdemCommSemiring](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/idemcommsemiring--ea637b3f11bc68cf919228fc.md) | 74 | `declaration-track:ea637b3f11bc68cf919228fc5c98d094edfe6977204c0d5bd04452a8be9536e6` |
| 3 | `class` | [KStar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar--6510f24a76cef795fb02b415.md) | 77 | `declaration-track:6510f24a76cef795fb02b415b5f2ccfef398972b34b2ed18f4bf9ae719d4c8d3` |
| 4 | `class` | [KleeneAlgebra](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kleenealgebra--fc9d4a13d3d2983c9ca885e0.md) | 93 | `declaration-track:fc9d4a13d3d2983c9ca885e08bdbfc08706c3debb223d1e0947da2eac6816626` |
| 5 | `abbrev` | [IdemSemiring.ofSemiring](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/idemsemiring-ofsemiring--3cf8367d3bab529b84c855ba.md) | 102 | `declaration-track:3cf8367d3bab529b84c855babd34162a346709b6d16f815865fcdd9fbf2c5b97` |
| 6 | `theorem` | [add_eq_sup](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/add-eq-sup--25d4927093635831ec35d628.md) | 118 | `result-track:25d4927093635831ec35d628f7c6faf5c741af903f8debee09b3ff005c59460a` |
| 7 | `theorem` | [add_idem](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/add-idem--3ae2ca0e7ceff1556e50c9f9.md) | 123 | `result-track:3ae2ca0e7ceff1556e50c9f9ce4851155a332b2a4c4880155f1fc01b046cb724` |
| 8 | `lemma` | [natCast_eq_one](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/natcast-eq-one--039b814e5d23022361449726.md) | 125 | `result-track:039b814e5d23022361449726d20e089623a2c5039b467515b4d04440c3d661bc` |
| 9 | `lemma` | [ofNat_eq_one](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/ofnat-eq-one--3de96e26ee394576cca8443d.md) | 131 | `result-track:3de96e26ee394576cca8443d5b3b6ed5f5d167ce9ff5e3e9b3f8fbd5793a621d` |
| 10 | `theorem` | [nsmul_eq_self](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/nsmul-eq-self--25623ff4f99f3c32359b2393.md) | 134 | `result-track:25623ff4f99f3c32359b2393a09183b53410656aec843de978b9af71f68300e2` |
| 11 | `theorem` | [add_eq_left_iff_le](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/add-eq-left-iff-le--297110a9a5e8f1781403eb44.md) | 139 | `result-track:297110a9a5e8f1781403eb441e41386fdcf1cb15ab98a2c210c247aac6e4e1ee` |
| 12 | `theorem` | [add_eq_right_iff_le](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/add-eq-right-iff-le--e2dd2974815edd6ae8eb3009.md) | 141 | `result-track:e2dd2974815edd6ae8eb30090310eeeffd7c10dccea1f678e2b830b3e3d0bfd3` |
| 13 | `theorem` | [add_le_iff](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/add-le-iff--43309cd2aebdb6ea6f48d41c.md) | 147 | `result-track:43309cd2aebdb6ea6f48d41c527b8bce7395d28ae0ba7140f8c0181da449361d` |
| 14 | `theorem` | [add_le](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/add-le--60314edee455dbdd0f33c50a.md) | 149 | `result-track:60314edee455dbdd0f33c50a6da6c1d2e10b7d4a847e3a982aa779df51cb908d` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--5ec505798d86ec643d71845d.md) | 153 | `declaration-track:5ec505798d86ec643d71845d2382476e5fc1c81357a83b868713d149ae94776f` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--6d8763513d0c8d15c9b7c1ff.md) | 159 | `declaration-track:6d8763513d0c8d15c9b7c1fff2e02075057c4876c1f629592dfd987ab7b29f0e` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--aa686d1751c24c0bddfe0d86.md) | 165 | `declaration-track:aa686d1751c24c0bddfe0d86f86635a8d84cd46f0eb962d2e966f2a544bc4462` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--94dce1ba6a921a63c11c9bfb.md) | 169 | `declaration-track:94dce1ba6a921a63c11c9bfbc6c1db7e6680620800721a2a0072a343a9c9b821` |
| 19 | `theorem` | [one_le_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/one-le-kstar--330207913077f1c78e3ee27b.md) | 179 | `result-track:330207913077f1c78e3ee27b44b7e5423760c2d1e66cfb0ae823c8cb90836ac0` |
| 20 | `theorem` | [mul_kstar_le_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/mul-kstar-le-kstar--76bcdaecaaa7b5fe50f79ad6.md) | 182 | `result-track:76bcdaecaaa7b5fe50f79ad6e645197a2e1d65f9f478e5199a80e30740b10575` |
| 21 | `theorem` | [kstar_mul_le_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-mul-le-kstar--9d3694c64a1c1ec184f044a3.md) | 185 | `result-track:9d3694c64a1c1ec184f044a3d9dbe63831bdcbace417fbc0531498caad467029` |
| 22 | `theorem` | [mul_kstar_le_self](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/mul-kstar-le-self--62dd33fe183c039722053c3f.md) | 188 | `result-track:62dd33fe183c039722053c3faff9091303fa0630e6f3167491d924b4bbf9d0d9` |
| 23 | `theorem` | [kstar_mul_le_self](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-mul-le-self--401a77ff38f25050294040ff.md) | 191 | `result-track:401a77ff38f25050294040ff1fdaf91e4bf50d60049bdbbdec17ffd9c96d707d` |
| 24 | `theorem` | [mul_kstar_le](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/mul-kstar-le--b954cb4a99032d09c1f1f834.md) | 194 | `result-track:b954cb4a99032d09c1f1f834f2f3c071c9cad2645915f672519bc97347f36894` |
| 25 | `theorem` | [kstar_mul_le](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-mul-le--4e2ed13d62455457db45a39f.md) | 196 | `result-track:4e2ed13d62455457db45a39f3afc24ec540205266923aef60d65c9ffef6955fc` |
| 26 | `theorem` | [kstar_le_of_mul_le_left](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-le-of-mul-le-left--96ebe512d9f9489c6439f51c.md) | 198 | `result-track:96ebe512d9f9489c6439f51c3fcd0be357706a1373b8ba9f8dee098e5319770a` |
| 27 | `theorem` | [kstar_le_of_mul_le_right](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-le-of-mul-le-right--f063e4e0dbcacf25bf907cba.md) | 201 | `result-track:f063e4e0dbcacf25bf907cba6d0dfa2c1b639dc939ba7b6d1a8051f79e561b05` |
| 28 | `theorem` | [le_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/le-kstar--349c70d088214e41812ff037.md) | 205 | `result-track:349c70d088214e41812ff0371420a38bc7fb2bfaba62b06aa3c3870f04cd8e57` |
| 29 | `theorem` | [kstar_mono](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-mono--eeab4a35a6a777495f827efc.md) | 209 | `result-track:eeab4a35a6a777495f827efc67a8185c1f14c9bd470bff9b3fb3cb45018b3508` |
| 30 | `theorem` | [kstar_eq_one](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-eq-one--bb7a8ccf56ea34977802f8f9.md) | 214 | `result-track:bb7a8ccf56ea34977802f8f973042a6602008dca4c83d9f78755f93d05f0a3ea` |
| 31 | `lemma` | [kstar_zero](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-zero--64fc2223e1eb6960e9fc7ea3.md) | 218 | `result-track:64fc2223e1eb6960e9fc7ea3f39072d10e687a046467053025d8234c528d9b43` |
| 32 | `theorem` | [kstar_one](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-one--70aba49faf7fe2f2599200bb.md) | 221 | `result-track:70aba49faf7fe2f2599200bb499bb2167335db5cc03a83f753a94795342c1e32` |
| 33 | `theorem` | [kstar_mul_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-mul-kstar--0fe58a3b322a08899a9c6445.md) | 225 | `result-track:0fe58a3b322a08899a9c64452a38efab4466f0574c07564e0944ab5225dd0714` |
| 34 | `theorem` | [kstar_eq_self](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-eq-self--2647219a059c0bd4575532b8.md) | 229 | `result-track:2647219a059c0bd4575532b865351b4d26d1e33ced9fe04d8922bbdddff15cdd` |
| 35 | `theorem` | [kstar_idem](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-idem--975b7dfad91f51e440c490c6.md) | 234 | `result-track:975b7dfad91f51e440c490c6a7d2e59415739847091f6a51e24d2c434194dda4` |
| 36 | `theorem` | [pow_le_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/pow-le-kstar--e4d7402b7be4f2c473109d43.md) | 238 | `result-track:e4d7402b7be4f2c473109d438f61dec265847134c887cf7afeb73ae82e153fbc` |
| 37 | `theorem` | [one_add_mul_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/one-add-mul-kstar--e28bead80d2a7bb81ddd6d17.md) | 242 | `result-track:e28bead80d2a7bb81ddd6d17359e59353772be9fb98dc7c7c7e06197574eb473` |
| 38 | `theorem` | [one_add_kstar_mul](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/one-add-kstar-mul--b7c30081ddf952de693ed654.md) | 253 | `result-track:b7c30081ddf952de693ed6541f64c2a1a66d8c3f908d9e9427ecc2c6f728ff87` |
| 39 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instidemsemiring--6e3bc533840fae2de71cee1a.md) | 268 | `declaration-track:6e3bc533840fae2de71cee1a896566e1e10da5709954b31dde2b39a54e7f4bc8` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--d9f2cb000f5315d512bca666.md) | 271 | `declaration-track:d9f2cb000f5315d512bca666f1b7caff600f7b14413eea205b0a9bc43e8fff1c` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--92629f9b0f5df427295cce98.md) | 277 | `declaration-track:92629f9b0f5df427295cce98bed14c7f5725ca076df9e89ec49ac62e591b05ee` |
| 42 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-def--905d6a035a3c22e4e331cca2.md) | 285 | `result-track:905d6a035a3c22e4e331cca24dd6768a6c50526e8152b056ba2c6fb536dcd4f2` |
| 43 | `theorem` | [fst_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/fst-kstar--2832ffa028a8d93a0a6e1fef.md) | 289 | `result-track:2832ffa028a8d93a0a6e1fef13856a4fd40a33633cd64987672bc0714f81dea8` |
| 44 | `theorem` | [snd_kstar](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/snd-kstar--03b16c789bcfccff4faacba2.md) | 293 | `result-track:03b16c789bcfccff4faacba29959b762bf829569693a6889c005e7c82cd8d284` |
| 45 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instidemsemiring--301d022c5c41c7e349694fa5.md) | 300 | `declaration-track:301d022c5c41c7e349694fa58d4563555f1beca41fbed319d4ca0ed35069fa93` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--631b1fa5ed3e2c4041a6a4bb.md) | 303 | `declaration-track:631b1fa5ed3e2c4041a6a4bbe1b318973838823a4291ee6206ebc9b73fb0fce5` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/instance--1bbc7e3dd542f20f6d23e831.md) | 309 | `declaration-track:1bbc7e3dd542f20f6d23e83155421896311ecb8aee35957ceb0d2f1b3def1047` |
| 48 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-def--360fb76d98b759557c1e8b98.md) | 318 | `result-track:360fb76d98b759557c1e8b9813df363c6bc75c4c5993baf452e81e7711e6d1fc` |
| 49 | `theorem` | [kstar_apply](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kstar-apply--351a9e2e8fac7184730899a3.md) | 322 | `result-track:351a9e2e8fac7184730899a392392f163f8fb18a92da6b88fb83e1a2c5a2eff9` |
| 50 | `abbrev` | [idemSemiring](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/idemsemiring--8fe9374e08334c26ff3493ac.md) | 331 | `declaration-track:8fe9374e08334c26ff3493ac59b882746757d31d11ef4f5e39404fced9e2784c` |
| 51 | `abbrev` | [idemCommSemiring](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/idemcommsemiring--e5f62c362b3e2020529e0a14.md) | 346 | `declaration-track:e5f62c362b3e2020529e0a14a914d0937e7a2d11ac1243902bf7944f2a13aebb` |
| 52 | `abbrev` | [kleeneAlgebra](../../../../mathematics/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/declarations/kleenealgebra--fcb5662261f7b3a50f4092ca.md) | 359 | `declaration-track:fcb5662261f7b3a50f4092ca7975034011c4833fa9e49f883ff1db9745c64164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
