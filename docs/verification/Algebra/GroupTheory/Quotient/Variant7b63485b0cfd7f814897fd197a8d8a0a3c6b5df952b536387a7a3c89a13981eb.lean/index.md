# Verification target: GRWTSK.Algebra.GroupTheory.Quotient.Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a28ccbb664f5e94ddd571ea66f9e8be14ec04c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a28ccbb664f5e94ddd571ea66f9e8be14ec04c`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean.json)

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
| 1 | `class` | [QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotientaction--a1916a378888b94a4c0c85bf.md) | 60 | `declaration-track:a1916a378888b94a4c0c85bf4f2534a1def395ce33f673f2ddb7c40db2f469e0` |
| 2 | `class` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.AddAction.QuotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variant579e692f6e7b6f84fa--394d20e0bffeddbbf16c1a30.md) | 66 | `declaration-track:394d20e0bffeddbbf16c1a30e2910c61e98cb6113cb49ab08396992d8204e3cd` |
| 3 | `instance` | [left_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/left-quotientaction--228a51c0214139caac186cd9.md) | 75 | `declaration-track:228a51c0214139caac186cd965a53a92d9743ba4ed59c5e8f5b1426b53abd9db` |
| 4 | `instance` | [right_quotientAction](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/right-quotientaction--afa5fac77cca5cd697de73ae.md) | 79 | `declaration-track:afa5fac77cca5cd697de73ae6d56a509f2db813fbb765c757cdf03cb85e5c6c3` |
| 5 | `instance` | [right_quotientAction'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/right-quotientaction--201b8013b9a600c6729b91e7.md) | 85 | `declaration-track:201b8013b9a600c6729b91e71ea70a23b0ca720d39d28535c32f512ab7480743` |
| 6 | `instance` | [quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotient--2de6250ef5f0f6e96ea86261.md) | 91 | `declaration-track:2de6250ef5f0f6e96ea862610b59b1590966438f4820687f17a8ab8712aa07df` |
| 7 | `theorem` | [Quotient.smul_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotient-smul-mk--050c92540350dbf54e2a2ee0.md) | 101 | `result-track:050c92540350dbf54e2a2ee07e5223c8169e3f57cdae1729d67b1a155dafa9ec` |
| 8 | `theorem` | [Quotient.smul_coe](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotient-smul-coe--8085164c093240094c8bfd94.md) | 106 | `result-track:8085164c093240094c8bfd941d994b6303bfc80c500e1763ab15229551002ed7` |
| 9 | `theorem` | [Quotient.mk_smul_out](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotient-mk-smul-out--789bc106fad54afc14a5fca5.md) | 111 | `result-track:789bc106fad54afc14a5fca59e4de077d4e42d539c747d61adeaa7a639bc4a15` |
| 10 | `theorem` | [Quotient.coe_smul_out](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotient-coe-smul-out--ff8d9dd48a5585b71b3daabc.md) | 115 | `result-track:ff8d9dd48a5585b71b3daabca8913b6113eb562f8e83e3a8004eeca474e19532` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.QuotientGroup.out_conj_pow_minimalPeriod_mem](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variant579e692f6e7b6f84fa--8de0cca54fc5b63a60e6c44d.md) | 118 | `result-track:8de0cca54fc5b63a60e6c44dd88341df13062f89f1e238548c6bd5d8ea60efaa` |
| 12 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.MulActionHom.toQuotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variant579e692f6e7b6f84fa--a1205e0c6463d7e9950b40ba.md) | 128 | `declaration-track:a1205e0c6463d7e9950b40ba61224b982c9e858ac00e8b74b748920d2472a000` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.MulActionHom.toQuotient_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/root-grwtsk-algebra-grouptheory-quotientaction-variant579e692f6e7b6f84fa--9f5fdd69bccee3f6656c670b.md) | 132 | `result-track:9f5fdd69bccee3f6656c670b3f9bac8a7218bc9af4be02ef1616a6ab91725dd7` |
| 14 | `theorem` | [coe_quotient_smul](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/coe-quotient-smul--833a7c4127fd3282061b0846.md) | 137 | `result-track:833a7c4127fd3282061b08464d2c0f918d4f59f32f42d39007c08082cb382a1f` |
| 15 | `def` | [ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/ofquotientstabilizer--e1c896e3b30d134ae8fc088e.md) | 148 | `declaration-track:e1c896e3b30d134ae8fc088ebbd5131bc06811a892061be25ce88050a5244c7e` |
| 16 | `theorem` | [ofQuotientStabilizer_mk](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/ofquotientstabilizer-mk--4177a212058d48af69bde831.md) | 155 | `result-track:4177a212058d48af69bde8319202216b1de6f4770cc41955f0fd222e6baa921a` |
| 17 | `theorem` | [ofQuotientStabilizer_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/ofquotientstabilizer-mem-orbit--40ba6106d30b536864f060b2.md) | 159 | `result-track:40ba6106d30b536864f060b27913eef97e2e957650121fd86131357ed282c0a4` |
| 18 | `theorem` | [ofQuotientStabilizer_smul](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/ofquotientstabilizer-smul--9f6404639fe192d882a62790.md) | 163 | `result-track:9f6404639fe192d882a627903dc9966557f4c8f7205b95b88b2f4f823c8495d5` |
| 19 | `theorem` | [injective_ofQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/injective-ofquotientstabilizer--4dda9e4b646df40fe3760381.md) | 168 | `result-track:4dda9e4b646df40fe376038158cb0855cfee384cf28824087461f6f133636032` |
| 20 | `def` | [orbitEquivQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/orbitequivquotientstabilizer--7d21b2c494a732e238e3abf9.md) | 178 | `declaration-track:7d21b2c494a732e238e3abf907d93a78a4701c9800af4f125ab55125b9531960` |
| 21 | `def` | [orbitProdStabilizerEquivGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/orbitprodstabilizerequivgroup--f73cffb771911fd25a9d00b8.md) | 186 | `declaration-track:f73cffb771911fd25a9d00b897ca94cecc416304537aa0bc0e0676256ab8df48` |
| 22 | `theorem` | [card_orbit_mul_card_stabilizer_eq_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/card-orbit-mul-card-stabilizer-eq-card-group--e55c5fb07a96213e914ffa22.md) | 193 | `result-track:e55c5fb07a96213e914ffa22eed73c00809a1401c407924d9f093911ab05ce20` |
| 23 | `theorem` | [orbitEquivQuotientStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/orbitequivquotientstabilizer-symm-apply--bf3d1948683c37bc2ca00089.md) | 199 | `result-track:bf3d1948683c37bc2ca0008979b4f899eeae039c96f8b4ccabebc52f2bb4de6a` |
| 24 | `theorem` | [stabilizer_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/stabilizer-quotient--919e89029eacd4bbc3dba351.md) | 204 | `result-track:919e89029eacd4bbc3dba3515acf3c6cc32d93d090135c6b3ec4745d6a428d53` |
| 25 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/selfequivsigmaorbitsquotientstabilizer--193a15ef4c31b9831df33ae4.md) | 226 | `declaration-track:193a15ef4c31b9831df33ae4d374e5078e6f1e34f65a8433b8b6101e200c0233` |
| 26 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/selfequivsigmaorbitsquotientstabilizer--058031f90771b33092d194e9.md) | 240 | `declaration-track:058031f90771b33092d194e95f27438109a4fa8866fc2126cb64f02759812556` |
| 27 | `def` | [sigmaFixedByEquivOrbitsProdGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/sigmafixedbyequivorbitsprodgroup--94aaa3d498e4f23225e0422e.md) | 250 | `declaration-track:94aaa3d498e4f23225e0422eef5ebab36678f6fe8d14e26ac14157a62e379426` |
| 28 | `theorem` | [sum_card_fixedBy_eq_card_orbits_mul_card_group](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/sum-card-fixedby-eq-card-orbits-mul-card-group--f57f1d616306aaec008a3f87.md) | 276 | `result-track:f57f1d616306aaec008a3f878407bff240debf21cdd071940facf600062350f6` |
| 29 | `instance` | [isPretransitive_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/ispretransitive-quotient--326d4b600a86973ef98c0abf.md) | 282 | `declaration-track:326d4b600a86973ef98c0abff76fa95a5887310a2177937cd2e8cfee23ed2490` |
| 30 | `instance` | [finite_quotient_of_pretransitive_of_finite_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/finite-quotient-of-pretransitive-of-finite-quotient--4d42e55214623e9beb93f3fb.md) | 291 | `declaration-track:4d42e55214623e9beb93f3fb5ac80709d6ab12b45d24e7bb644304944cde2937` |
| 31 | `def` | [equivSubgroupOrbitsSetoidComap](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/equivsubgrouporbitssetoidcomap--7812e2c4ef61a813df02ccae.md) | 311 | `declaration-track:7812e2c4ef61a813df02ccae3a1df7d0337949aa3eab539e86fc492726ba024c` |
| 32 | `def` | [equivSubgroupOrbits](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/equivsubgrouporbits--cc90ad8504877b277cbcffbe.md) | 343 | `declaration-track:cc90ad8504877b277cbcffbe8ec8e3ffdacef6e42f4d6ae188f41a9d46bfbc9e` |
| 33 | `instance` | [finite_quotient_of_finite_quotient_of_finite_quotient](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/finite-quotient-of-finite-quotient-of-finite-quotient--03e3cd38bd8de5bede7bbaa4.md) | 351 | `declaration-track:03e3cd38bd8de5bede7bbaa4b72d00a15554bfe2a5102d140388c2ff36fa59ef` |
| 34 | `def` | [equivSubgroupOrbitsQuotientGroup](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/equivsubgrouporbitsquotientgroup--54287b98d3f1bd6277089605.md) | 361 | `declaration-track:54287b98d3f1bd62770896054d47d5a5d22d620eba0d40a7c3b3ead0887cd802` |
| 35 | `def` | [selfEquivOrbitsQuotientProd'](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/selfequivorbitsquotientprod--148d4fac0dc2348ab2d72efa.md) | 403 | `declaration-track:148d4fac0dc2348ab2d72efa7e6c9f8d9652e133b15f7d0940ac80203b68e41c` |
| 36 | `def` | [selfEquivOrbitsQuotientProd](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/selfequivorbitsquotientprod--055837affd4eb7c20222b750.md) | 417 | `declaration-track:055837affd4eb7c20222b75080ae97290dff3b81f83127a02d03adadc58dceee` |
| 37 | `theorem` | [ConjClasses.card_carrier](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/conjclasses-card-carrier--1884e397e1f655803c5ba96f.md) | 423 | `result-track:1884e397e1f655803c5ba96f12bc6757942d0de9226e46ee936b56d5ee0df60d` |
| 38 | `theorem` | [normalCore_eq_ker](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/normalcore-eq-ker--76b0c1eccf3cc6a475ed7205.md) | 437 | `result-track:76b0c1eccf3cc6a475ed720581cbf2765c44d262726af233f7063f2e13994fe6` |
| 39 | `def` | [quotientCentralizerEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotientcentralizerembedding--d2abb67e26fd30faa3adb8fc.md) | 452 | `declaration-track:d2abb67e26fd30faa3adb8fc4aee7eb88f45e7a9a821318401d27a667ce69a51` |
| 40 | `theorem` | [quotientCentralizerEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotientcentralizerembedding-apply--2c63aef2ca7a72e15d161ab5.md) | 462 | `result-track:2c63aef2ca7a72e15d161ab5a84d50914a56a3715d7c0b1034a721f3dc936e5c` |
| 41 | `def` | [quotientCenterEmbedding](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotientcenterembedding--8cf505e5e29fe55740674d86.md) | 468 | `declaration-track:8cf505e5e29fe55740674d8631536b4e9972a243784902898772d575810077d1` |
| 42 | `theorem` | [quotientCenterEmbedding_apply](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/declarations/quotientcenterembedding-apply--691c8768d52289e4c8104951.md) | 474 | `result-track:691c8768d52289e4c8104951c22003faf21b1e1a299f9b79d675c6b53a058712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
