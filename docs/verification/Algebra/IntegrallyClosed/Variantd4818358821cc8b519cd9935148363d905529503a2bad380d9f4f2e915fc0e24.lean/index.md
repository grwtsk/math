# Verification target: GRWTSK.Algebra.IntegrallyClosed.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeed505a7106e6c4ae328bb1a3d258c216e14d9d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeed505a7106e6c4ae328bb1a3d258c216e14d9d`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean.json)

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
| 1 | `abbrev` | [IsIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosedin--da9d3d6e1e28b31f1f0b42a9.md) | 66 | `declaration-track:da9d3d6e1e28b31f1f0b42a9bbc534394bf5a3f3601255762ec09e3ea289ae89` |
| 2 | `abbrev` | [IsIntegrallyClosed](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosed--de11b9a4c35e98b71d223fc1.md) | 74 | `declaration-track:de11b9a4c35e98b71d223fc1a63dc63d04435c857a3d8a356ff1b340a134a43b` |
| 3 | `theorem` | [AlgHom.isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/alghom-isintegrallyclosedin--b14f0a55dd69a71d7ba32ed3.md) | 82 | `result-track:b14f0a55dd69a71d7ba32ed38ef85b75792ed64b485a386852feb9b19f359e72` |
| 4 | `theorem` | [AlgEquiv.isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/algequiv-isintegrallyclosedin--bcd26c9ce1b6edf8d53e803e.md) | 95 | `result-track:bcd26c9ce1b6edf8d53e803ebcb6e081ba37045015d0509def36468ef5d55f97` |
| 5 | `theorem` | [isIntegrallyClosed_iff_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosed-iff-isintegrallyclosedin--5a6adb6339a2d9bf14657f5c.md) | 102 | `result-track:5a6adb6339a2d9bf14657f5c9a027d8d325c7adb20ae89c1b1e11ee6fd41c8a5` |
| 6 | `theorem` | [isIntegrallyClosed_iff_isIntegralClosure](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosed-iff-isintegralclosure--41a1e1e0a8b2263558b53807.md) | 107 | `result-track:41a1e1e0a8b2263558b538072632fa9a20f3c6e2f76374f2a166996afc908065` |
| 7 | `theorem` | [isIntegrallyClosedIn_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosedin-iff--a3bd8defbc24b1807d111703.md) | 111 | `result-track:a3bd8defbc24b1807d111703484758b54434712d48d166d480c7a2d4f8533bb2` |
| 8 | `theorem` | [isIntegrallyClosed_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosed-iff--4fd7f5f026444398fddb9955.md) | 125 | `result-track:4fd7f5f026444398fddb9955ca346394c3410fd6a29fffc7d90fafe50357c8c7` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/instance--bb8b245506c386c7fed130c0.md) | 130 | `declaration-track:bb8b245506c386c7fed130c0180436b7891be0f231eb479a627405919f946554` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/instance--15a3f4101fb1900959b91d1d.md) | 134 | `declaration-track:15a3f4101fb1900959b91d1d5569b05c5c025a846a7851179c76d5bb8f57785d` |
| 11 | `theorem` | [isIntegrallyClosedIn_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosedin-iff--f14032714a3da6a731327970.md) | 141 | `result-track:f14032714a3da6a731327970c707d7b5b710eeab4cb5bc26f6570bcbd06c3b10` |
| 12 | `theorem` | [isIntegrallyClosed_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosed-iff--c2366171d4c49859ec70de12.md) | 146 | `result-track:c2366171d4c49859ec70de1287853c236baa423e0cf5544d7904db1df2b3fe96` |
| 13 | `theorem` | [integralClosure_le_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/integralclosure-le-iff--b1ec804d6b06e439cc840e16.md) | 150 | `result-track:b1ec804d6b06e439cc840e16651d8a57a9e248f0cbdff79b3eb1cd0a5d958f30` |
| 14 | `theorem` | [integralClosure_subring_le_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/integralclosure-subring-le-iff--507e89fa96039abc123789b0.md) | 158 | `result-track:507e89fa96039abc123789b0af240d104ac27f4f9c7f7e9473f5d8761dbada25` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/instance--86fc4f65d793dd9dca96c3eb.md) | 170 | `declaration-track:86fc4f65d793dd9dca96c3eb340c1d054fca31bc141c524872d4ecc4e558eedb` |
| 16 | `theorem` | [algebraMap_eq_of_integral](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/algebramap-eq-of-integral--d1c4f275e14262e1f2821b6d.md) | 173 | `result-track:d1c4f275e14262e1f2821b6d0bf7a70eeef97b60dd72cafeda819de970f00628` |
| 17 | `theorem` | [isIntegral_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegral-iff--350ac067243af0d36d937dd7.md) | 177 | `result-track:350ac067243af0d36d937dd75a8b952ce3683a09661cb33853da02e5b4d9eaee` |
| 18 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/exists-algebramap-eq-of-isintegral-pow--4f8cef5b406971f1a86859da.md) | 181 | `result-track:4f8cef5b406971f1a86859dabd4f67e12214d04188df332e3af96cb39bee006d` |
| 19 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra--0376c3e46e46beb4c3d973a5.md) | 186 | `result-track:0376c3e46e46beb4c3d973a58e583008f791f159bf79cecdda2364497ea3dcbc` |
| 20 | `theorem` | [integralClosure_eq_bot_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/integralclosure-eq-bot-iff--f14fb08639a61ec30f7ea423.md) | 193 | `result-track:f14fb08639a61ec30f7ea42398d1addcc39c570a43182b6ceea5bb88b6123caf` |
| 21 | `theorem` | [integralClosure_eq_bot](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/integralclosure-eq-bot--761518bddb4fe402d7e6cf21.md) | 208 | `result-track:761518bddb4fe402d7e6cf215b4e2efcc1d19f93beaa68ed68488ddbeaf6dff3` |
| 22 | `lemma` | [of_isIntegralClosure](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/of-isintegralclosure--4209c64289970089773f9047.md) | 215 | `result-track:4209c64289970089773f9047767b2a6114ea4d9019876f765b35fed6445e3f12` |
| 23 | `lemma` | [_root_.IsIntegralClosure.of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/root-isintegralclosure-of-isintegrallyclosedin--faaf194d9e97f94aab7dc279.md) | 223 | `result-track:faaf194d9e97f94aab7dc279d616fa802650ba513b2aa4f6eb2b5cd0a05fb65c` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/instance--c424910c0ad1196073a51fb9.md) | 241 | `declaration-track:c424910c0ad1196073a51fb9eb0d359452a44b5cd7f8c4addc8a92f9c6cc1d61` |
| 25 | `theorem` | [algebraMap_eq_of_integral](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/algebramap-eq-of-integral--11bc8a429f21718bbbccce3d.md) | 244 | `result-track:11bc8a429f21718bbbccce3d1b4f9379bc64c7c6fcfa12ca3d7c33b3de822758` |
| 26 | `theorem` | [isIntegral_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegral-iff--f05bbf7be33f678e3be26c31.md) | 248 | `result-track:f05bbf7be33f678e3be26c3156acc4cbab8003f22b60e6127307d314cee041bb` |
| 27 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/exists-algebramap-eq-of-isintegral-pow--cef95d0be73cca2f46f2dcdd.md) | 252 | `result-track:cef95d0be73cca2f46f2dcdd831dc64572b8274b063a8f70c630e2a85c4c1ec5` |
| 28 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra--484a68473142389014829d9f.md) | 256 | `result-track:484a68473142389014829d9f017d502a942b16fe03b45241679c8a355d8582ee` |
| 29 | `theorem` | [of_equiv](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/of-equiv--a0178bb7cf4a0f796b4ecb1b.md) | 261 | `result-track:a0178bb7cf4a0f796b4ecb1b307c7b3f4c58c62e399516ad03e26f6889ac8868` |
| 30 | `instance` | [_root_.IsIntegralClosure.of_isIntegrallyClosed](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/root-isintegralclosure-of-isintegrallyclosed--312435114396602bb997f478.md) | 272 | `declaration-track:312435114396602bb997f4780d483ffc2adc9a51b15c9b4217414ecbf22edf58` |
| 31 | `lemma` | [of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/of-isintegrallyclosedin--0aa2ffff9ac8df6db3d10a86.md) | 277 | `result-track:0aa2ffff9ac8df6db3d10a86cab829f33921f97c69fe5202572f8beccf7b9db5` |
| 32 | `lemma` | [_root_.IsIntegralClosure.of_isIntegralClosure_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/root-isintegralclosure-of-isintegralclosure-of-isintegrallyclosedin--f8fd2d1cc2b3aa3cb6423a17.md) | 288 | `result-track:f8fd2d1cc2b3aa3cb6423a179832318aebbf863037cf7a36c5ed2a051e20fb5d` |
| 33 | `lemma` | [of_isIntegrallyClosed_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/of-isintegrallyclosed-of-isintegrallyclosedin--acd597965e18da5f740f5959.md) | 309 | `result-track:acd597965e18da5f740f595930c0201ca50a8682797e500661e9291c69225f4c` |
| 34 | `theorem` | [integralClosure_eq_bot_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/integralclosure-eq-bot-iff--cc2493cf925cc35023307cd5.md) | 318 | `result-track:cc2493cf925cc35023307cd58d0a83d92b404603aec95b05cbc4aca7787b05dc` |
| 35 | `theorem` | [pow_dvd_pow_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/pow-dvd-pow-iff--bbc71382aa2bb415047710b2.md) | 323 | `result-track:bbc71382aa2bb415047710b26d79b9c6e66b7df7baaf37094741bbbceba3fa03` |
| 36 | `theorem` | [_root_.Associated.pow_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/root-associated-pow-iff--ff6a6625ca866861388202df.md) | 343 | `result-track:ff6a6625ca866861388202dff90ef3c0ec36e553a6055c9158bf4104bdea09b9` |
| 37 | `theorem` | [integralClosure_eq_bot](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/integralclosure-eq-bot--d4d4770853257cb9d0db39d4.md) | 353 | `result-track:d4d4770853257cb9d0db39d44dbbe711570929b58aade2f10a9ab712c2059e12` |
| 38 | `theorem` | [isIntegrallyClosedOfFiniteExtension](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosedoffiniteextension--bcfaed601fa5db38973483c0.md) | 368 | `result-track:bcfaed601fa5db38973483c03d99c60d90b36a7383886a7e006183c201fae4e0` |
| 39 | `lemma` | [isIntegrallyClosed_of_isLocalization](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/isintegrallyclosed-of-islocalization--f2de6f9a85b405385ffe1e5c.md) | 380 | `result-track:f2de6f9a85b405385ffe1e5c175139d51a58404ac5d6eadb49c6005a23ed8b19` |
| 40 | `instance` | [Field.instIsIntegrallyClosed](../../../../mathematics/Algebra/IntegrallyClosed/Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.lean/declarations/field-instisintegrallyclosed--e83736b8f3cb4fcf601abcbb.md) | 402 | `declaration-track:e83736b8f3cb4fcf601abcbb0bba1382ec9c2082eafcce24614bf2610e83fead` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
