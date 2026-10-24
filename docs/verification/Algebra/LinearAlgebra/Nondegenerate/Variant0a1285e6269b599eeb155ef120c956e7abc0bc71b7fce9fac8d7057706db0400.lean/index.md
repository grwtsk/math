# Verification target: GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de858c693d2b63e393bcb85d8f59275b69b9158a",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de858c693d2b63e393bcb85d8f59275b69b9158a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean.json)

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
| 1 | `class` | [IsAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/isanisotropic--ac2b910ae55cd8292266e5bb.md) | 73 | `declaration-track:ac2b910ae55cd8292266e5bbdde7e16c3651b8c63e9871dd6a9adf0e6083cf9a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/instance--64b271a8df6705aa3fb1c948.md) | 77 | `declaration-track:64b271a8df6705aa3fb1c9487b4ad9dcdbe7a6766abebcacdfcb839f9bfb45c3` |
| 3 | `lemma` | [isAnisotropic_of_isValuedIn](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/isanisotropic-of-isvaluedin--24c60e79154d400b75b05986.md) | 81 | `result-track:24c60e79154d400b75b05986ea808eb5a7c84adc0dd8f584e3526012fac69075` |
| 4 | `instance` | [instIsAnisotropicOfIsCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/instisanisotropicofiscrystallographic--eaf0fcff9e0472f4b856995c.md) | 88 | `declaration-track:eaf0fcff9e0472f4b856995c07cf4f42303f6d7bc6dff7262a413445cbbbc264` |
| 5 | `def` | [toInvariantForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/toinvariantform--2d2374ddd6cb352f5aa9564a.md) | 93 | `declaration-track:2d2374ddd6cb352f5aa9564a88f6f39f09566679980e9e548689d81dfe8e5067` |
| 6 | `lemma` | [smul_coroot_eq_of_root_add_root_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/smul-coroot-eq-of-root-add-root-eq--39d97c3a7db3b81d2ae9cce7.md) | 99 | `result-track:39d97c3a7db3b81d2ae9cce73fa41c8e1888174b70965a24d890c73f12814082` |
| 7 | `lemma` | [finrank_range_polarization_eq_finrank_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/finrank-range-polarization-eq-finrank-span-coroot--4a66fb2ba964111c6f40e0f5.md) | 141 | `result-track:4a66fb2ba964111c6f40e0f5661a2b1995f7dcdb79d58f2e2c80f4360f0c062b` |
| 8 | `lemma` | [finrank_corootSpan_le](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/finrank-corootspan-le--4aebcf3d812fd5c3aecb9891.md) | 162 | `result-track:4aebcf3d812fd5c3aecb989115439c6bfbe77ad623f53a420d52db5351c5ce28` |
| 9 | `lemma` | [finrank_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/finrank-corootspan-eq--1a26d03c8c87a8fc08f2372a.md) | 167 | `result-track:1a26d03c8c87a8fc08f2372aca5d99a393197988893265f8141855c908547cad` |
| 10 | `lemma` | [polarizationIn_Injective](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/polarizationin-injective--e3dda015d4c97be18034edae.md) | 171 | `result-track:e3dda015d4c97be18034edae818797e9740b963f7f06fcbdf462341b1ff5b9cc` |
| 11 | `lemma` | [exists_coroot_ne](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/exists-coroot-ne--858c9f5afdf3ec3a3d015bf3.md) | 180 | `result-track:858c9f5afdf3ec3a3d015bf3d5a9e4569844ecff15191be48c7c1d02d57a3d27` |
| 12 | `theorem` | [posRootForm_posForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/posrootform-posform-pos-of-ne-zero--5ebe0c7aa5a83ea1d8f747d7.md) | 197 | `result-track:5ebe0c7aa5a83ea1d8f747d7ad1908c972b36affcf6ba234111750c4f6eca521` |
| 13 | `lemma` | [posRootForm_rootFormIn_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/posrootform-rootformin-posdef--308af10a233920fc0c50c490.md) | 207 | `result-track:308af10a233920fc0c50c49069c5f4cd6fa9fccc49a2ca22a84730ec8c711be7` |
| 14 | `lemma` | [posRootForm_posForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/posrootform-posform-anisotropic--149a8f77ddd68104d4bfd699.md) | 211 | `result-track:149a8f77ddd68104d4bfd699786a787b77a137ddc802842555ac2382763cad3e` |
| 15 | `lemma` | [posRootForm_posForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/posrootform-posform-nondegenerate--2b40d8d0aa8993ad147cb428.md) | 216 | `result-track:2b40d8d0aa8993ad147cb428ff429e3b52ee65e074d60900b45534f7bf88c9c2` |
| 16 | `lemma` | [finrank_rootSpan_map_polarization_eq_finrank_corootSpan](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/finrank-rootspan-map-polarization-eq-finrank-corootspan--a480eb258dedd6f2f9585d13.md) | 233 | `result-track:a480eb258dedd6f2f9585d13ffaced34c343c45aaf16304ddce1931218130547` |
| 17 | `lemma` | [finrank_corootSpan_le'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/finrank-corootspan-le--2742d10df787a4b7d433693d.md) | 238 | `result-track:2742d10df787a4b7d433693d5cb5f3581c8722a44bfb94dfce031706f6e23821` |
| 18 | `lemma` | [finrank_corootSpan_eq'](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/finrank-corootspan-eq--33efbf5ee73e9195bb81c7f6.md) | 244 | `result-track:33efbf5ee73e9195bb81c7f68d7d494f4450cced3fb51e95dd9dec12fabde64f` |
| 19 | `lemma` | [disjoint_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/disjoint-rootspan-ker-rootform--3affb05f61049e5f7b245417.md) | 248 | `result-track:3affb05f61049e5f7b245417ba0296c41cae30c263fc9a590ca1e4e65281bd56` |
| 20 | `lemma` | [disjoint_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/disjoint-corootspan-ker-corootform--8aeb5e4849bcf61c194fbbd4.md) | 255 | `result-track:8aeb5e4849bcf61c194fbbd4c9822a89aba47f6d167ac00c46bc898042581a77` |
| 21 | `lemma` | [rootForm_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/rootform-nondegenerate--cfc0a51ded93222ce67130a5.md) | 259 | `result-track:cfc0a51ded93222ce67130a55e7b9b38875bc7573f39efa096d54de3b2aa64c0` |
| 22 | `lemma` | [isCompl_rootSpan_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/iscompl-rootspan-ker-rootform--00bf09254a6a3e3445ec737c.md) | 270 | `result-track:00bf09254a6a3e3445ec737c08f9cdf5f5f6959a8bf3c188ad503dfb44371dd0` |
| 23 | `lemma` | [isCompl_corootSpan_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/iscompl-corootspan-ker-corootform--2a4306065c2a59218a60a316.md) | 283 | `result-track:2a4306065c2a59218a60a3160a16fcaedff6313427c13f28a34a1ae4a9c30714` |
| 24 | `lemma` | [ker_rootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/ker-rootform-eq-dualannihilator--a9ab334c9934c2ab95737afc.md) | 287 | `result-track:a9ab334c9934c2ab95737afcbc250e71e884826f1b239f9bf89ca1b413517a1f` |
| 25 | `lemma` | [ker_corootForm_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/ker-corootform-eq-dualannihilator--2eeb474c06f50eb8e011b6ef.md) | 301 | `result-track:2eeb474c06f50eb8e011b6efd38923e786d464b8061f7590dbcb5073682fcd68` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/instance--7e71596c31a9281c28392d94.md) | 306 | `declaration-track:7e71596c31a9281c28392d946007e55f4e193393eb34214bcde0286d3a24ba3c` |
| 27 | `lemma` | [rootForm_restrict_nondegenerate_of_isAnisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/rootform-restrict-nondegenerate-of-isanisotropic--b9a1d0d5c8f5dffa9c4a303d.md) | 317 | `result-track:b9a1d0d5c8f5dffa9c4a303d84fd2417ee320950f1c6bcaa045449bc5fa7c6ef` |
| 28 | `lemma` | [orthogonal_rootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/orthogonal-rootspan-eq--bd0d1d0a6be28f65bce70ed9.md) | 322 | `result-track:bd0d1d0a6be28f65bce70ed92b3a7e3a36f11c7d88bd0b08588d1d75b1c4cd03` |
| 29 | `lemma` | [orthogonal_corootSpan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/orthogonal-corootspan-eq--c45ef3b6fabd9ba118ef3faa.md) | 334 | `result-track:c45ef3b6fabd9ba118ef3faa9a7df972915aa0a2c5daf95d5f6f1962e5d66d86` |
| 30 | `lemma` | [rootSpan_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/rootspan-eq-top-iff--66a526a2636947f7a5ce58ca.md) | 338 | `result-track:66a526a2636947f7a5ce58ca674218eaa267652d3392eb90c3f75a34569e0507` |
| 31 | `def` | [PolarizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/polarizationequiv--0c48a5af09d7375da41cd5e8.md) | 352 | `declaration-track:0c48a5af09d7375da41cd5e89b08eec9397b537c6c0ef8ea1edd108fd792bb36` |
| 32 | `lemma` | [polarizationEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/polarizationequiv-tolinearmap--c529504fbf7112acf5ea23f2.md) | 357 | `result-track:c529504fbf7112acf5ea23f2545d5c0c9bcffa0f14cd79072b4b95e6299b41d2` |
| 33 | `lemma` | [polarizationEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/polarizationequiv-apply--bff2b1475e33e3b5f9ea699a.md) | 367 | `result-track:bff2b1475e33e3b5f9ea699ad682be928eaa2e10db572f09667b7d6801a684c2` |
| 34 | `lemma` | [coroot_eq_polarizationEquiv_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/coroot-eq-polarizationequiv-apply-root--8abbe4c519c2c209eb45d8d6.md) | 371 | `result-track:8abbe4c519c2c209eb45d8d641259b21cdcadb9b185a4396591316af35d2b1c0` |
| 35 | `lemma` | [polarizationEquiv_symm_apply_coroot](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/polarizationequiv-symm-apply-coroot--ffa98be48a9b55c00dd3718c.md) | 378 | `result-track:ffa98be48a9b55c00dd3718cbf4c38fff2fd4443d937180b0bb02651dddff6dd` |
| 36 | `lemma` | [linearIndepOn_coroot_iff_aux](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/linearindepon-coroot-iff-aux--2e8d9c8e91e2ec7e0b2ba8db.md) | 384 | `result-track:2e8d9c8e91e2ec7e0b2ba8db705035582474815e35840fd55bdd6c20022e9fb8` |
| 37 | `lemma` | [linearIndepOn_coroot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/linearindepon-coroot-iff--c2f810a63e9a330f94755c96.md) | 396 | `result-track:c2f810a63e9a330f94755c96dadd215fda8cfad754d5b591c9c04a25d53ee2c4` |
| 38 | `instance` | [instIsAnisotropicOfLinearOrderedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/instisanisotropicoflinearorderedcommring--620c52ce124300f407a249fa.md) | 409 | `declaration-track:620c52ce124300f407a249fad70fdbe8a3510cdbd6ac176f0a1fe23b5bedb4fd` |
| 39 | `lemma` | [zero_le_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/zero-le-rootform--fbf76c250435c88c9d210739.md) | 412 | `result-track:fbf76c250435c88c9d21073976ee07b68ca8678a9ede28e7f1900fbb4f2c5711` |
| 40 | `lemma` | [rootForm_restrict_nondegenerate_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/rootform-restrict-nondegenerate-of-ordered--e89cda12b6b575ff75d4acdd.md) | 417 | `result-track:e89cda12b6b575ff75d4acdd579e4d13acbdf83185960368c3f07016b050ad30` |
| 41 | `lemma` | [rootForm_self_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/rootform-self-eq-zero-iff--84d8f5d75e1a1e38ebeba0d9.md) | 422 | `result-track:84d8f5d75e1a1e38ebeba0d9782762f37767f8f17ceed71d6589de39609712ee` |
| 42 | `lemma` | [eq_zero_of_mem_rootSpan_of_rootForm_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/eq-zero-of-mem-rootspan-of-rootform-self-eq-zero--d7b697bbd9bcd233ee95f078.md) | 426 | `result-track:d7b697bbd9bcd233ee95f078dd277e86f81064bda534760d56dd0e642c7d3549` |
| 43 | `lemma` | [rootForm_pos_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/rootform-pos-of-ne-zero--bebdee4864333ea2d9bf6afc.md) | 432 | `result-track:bebdee4864333ea2d9bf6afc013c1fa64b01e26d818bee94c14ae672d352fd0c` |
| 44 | `lemma` | [rootForm_anisotropic](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant0a1285e6269b599eeb155ef120c956e7abc0bc71b7fce9fac8d7057706db0400.lean/declarations/rootform-anisotropic--75edb8cf7e5ab2bf02f93f5d.md) | 438 | `result-track:75edb8cf7e5ab2bf02f93f5d410fcae0245f42bb25870ce2456a1517a571f0a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
