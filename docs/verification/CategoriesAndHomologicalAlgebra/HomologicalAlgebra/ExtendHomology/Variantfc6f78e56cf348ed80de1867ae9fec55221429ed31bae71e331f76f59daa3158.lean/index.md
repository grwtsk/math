# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ExtendHomology.Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d28939108e240243c1843b6570c9ed6de78e111",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d28939108e240243c1843b6570c9ed6de78e111`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Extend` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.IsSupported` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_d_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/comp-d-eq-zero-iff--0f713ffb5830b5e1f8dd8ce7.md) | 46 | `result-track:0f713ffb5830b5e1f8dd8ce7107fb37b7dcc1981f40da2cce989cb5d697e8bd9` |
| 2 | `lemma` | [d_comp_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/d-comp-eq-zero-iff--1710524e09a5ec3e6e10bd1e.md) | 58 | `result-track:1710524e09a5ec3e6e10bd1e70e67124cb66165ce87bbb9b56800e56703dc61c` |
| 3 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/kernelfork--bf8ff8c41414501cf8648d31.md) | 76 | `declaration-track:bf8ff8c41414501cf8648d316e26a42bfa55f0fdd7ec477a91e956a72a17cc79` |
| 4 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/islimitkernelfork--be6c84ec41aa6bb307c971b7.md) | 82 | `declaration-track:be6c84ec41aa6bb307c971b7ea305d92c472eee4b6af54a0f6e55b9a61b21ba2` |
| 5 | `lemma` | [lift_d_comp_eq_zero_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/lift-d-comp-eq-zero-iff--93313cb7c76370323dc9a44d.md) | 91 | `result-track:93313cb7c76370323dc9a44d64df74900470be4a26444b3154e71a8f01991a44` |
| 6 | `lemma` | [lift_d_comp_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/lift-d-comp-eq-zero-iff--d0d5de83d63859a30ac56d90.md) | 117 | `result-track:d0d5de83d63859a30ac56d90a13e418f01fa0768d7beab6d8e94759773ad88a8` |
| 7 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/cokernelcofork--29931739d9c5329f927487ab.md) | 125 | `declaration-track:29931739d9c5329f927487ab0f576d861b7c66752de48e3a6d644e525885f10d` |
| 8 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/iscolimitcokernelcofork--bcc8576adb11197616aa93d6.md) | 133 | `declaration-track:bcc8576adb11197616aa93d6e6087bda58bda4f60491df52baa8f5fe0d67670a` |
| 9 | `def` | [leftHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/lefthomologydata--44d520dc02fd849da48387b5.md) | 144 | `declaration-track:44d520dc02fd849da48387b5507baaf2711ab8b322b7baeeb38b91c48c9c2034` |
| 10 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/cokernelcofork--aa2bec9b014ee9165a02982b.md) | 168 | `declaration-track:aa2bec9b014ee9165a02982b7ca8526f9f22a652cc4fdaf6bdb631eb6f9a449d` |
| 11 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/iscolimitcokernelcofork--f4e04cf8a3680b9c18757ee6.md) | 174 | `declaration-track:f4e04cf8a3680b9c18757ee6ed57750c9ec0d4c171d686d4e7755cb41b708908` |
| 12 | `lemma` | [d_comp_desc_eq_zero_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/d-comp-desc-eq-zero-iff--fed5e79b0a2e677aa3f95d99.md) | 182 | `result-track:fed5e79b0a2e677aa3f95d9944f78a944a754cf504d6cbd7b74a6bc3b29819f3` |
| 13 | `lemma` | [d_comp_desc_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/d-comp-desc-eq-zero-iff--d70fbce775584e7ebd6ad9b0.md) | 207 | `result-track:d70fbce775584e7ebd6ad9b02196be4641295a1f4b0b3e5b4e0b043ca2eab668` |
| 14 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/kernelfork--b32b262e1892e8e99b0a510f.md) | 216 | `declaration-track:b32b262e1892e8e99b0a510f8bfcf64ab1d77c5e72922fd9383d96ca10a98655` |
| 15 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/islimitkernelfork--a3d7ce64a6d5a10f0e006b90.md) | 224 | `declaration-track:a3d7ce64a6d5a10f0e006b90643053837ffedeeb518deea9e828ebf9d05125e1` |
| 16 | `def` | [rightHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/righthomologydata--700cee84a1a52272f99ce2a0.md) | 235 | `declaration-track:700cee84a1a52272f99ce2a09ca8d4e409b7c3175a25e60875ca379cb94a5972` |
| 17 | `lemma` | [rightHomologyData_g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/righthomologydata-g--5dd89234ab86b703147b8cf5.md) | 253 | `result-track:5dd89234ab86b703147b8cf55971080aa372a64c99f5f0aa831916582b79e73d` |
| 18 | `def` | [homologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/homologydata--7236c44e9d1c4eb9bef2bfa3.md) | 264 | `declaration-track:7236c44e9d1c4eb9bef2bfa342ac89d1da5a691bbb516dab995b66c657717c0d` |
| 19 | `def` | [homologyData'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/homologydata--7191ae14a33b7fc13478acba.md) | 273 | `declaration-track:7191ae14a33b7fc13478acba6122d51e1b64eb85a040fdf74447b4a3da3d0e58` |
| 20 | `lemma` | [hasHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/hashomology--78b11cae64ab451ad0c74cc3.md) | 279 | `result-track:78b11cae64ab451ad0c74cc33614be9eda6417407a49d2e75acca05cced07b92` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/instance--7121d3f34d16430d576b4b61.md) | 284 | `declaration-track:7121d3f34d16430d576b4b6143ebf1f0d54793b14de5b1858fb9ea3d31818821` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/instance--a3c74cd20691468bbed05909.md) | 287 | `declaration-track:a3c74cd20691468bbed05909ecee89e5afdd82c5b6dcccd735a844e87b584548` |
| 23 | `lemma` | [extend_exactAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extend-exactat--afd5ffcc374fdd9b3448f366.md) | 297 | `result-track:afd5ffcc374fdd9b3448f366bc5d80b689cea650c9e64429880583ee51c72e8a` |
| 24 | `def` | [extendCyclesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendcyclesiso--12f27cc6cd4055091abe61ca.md) | 307 | `declaration-track:12f27cc6cd4055091abe61cad31151355b0f88572984c86ee9f9a8ebfc49575c` |
| 25 | `def` | [extendOpcyclesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendopcyclesiso--5adb4311714c20abb5d3ea8a.md) | 313 | `declaration-track:5adb4311714c20abb5d3ea8a0944c4489eacc4e3090ae2fe62dcffc0f1875cd7` |
| 26 | `def` | [extendHomologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendhomologyiso--b16391a51fc7fbbae31f5a9b.md) | 319 | `declaration-track:b16391a51fc7fbbae31f5a9bf4d6350d362da5240ba3ccd15f32f9056e348a5d` |
| 27 | `lemma` | [extend_exactAt_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extend-exactat-iff--9b79ae6d9c1b210748aedc6b.md) | 325 | `result-track:9b79ae6d9c1b210748aedc6b749d34cf83d639d38e2b84689e3c5098e2aa918b` |
| 28 | `lemma` | [extendCyclesIso_hom_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendcyclesiso-hom-icycles--25d6040eda9201a28e7de5da.md) | 331 | `result-track:25d6040eda9201a28e7de5da80b166296a8f5a541c43bbbc8869a77512a49c88` |
| 29 | `lemma` | [extendCyclesIso_inv_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendcyclesiso-inv-icycles--cdde5ffa3df65e887383c8c5.md) | 342 | `result-track:cdde5ffa3df65e887383c8c51fa6c3f14123c0c57bdd5001ab18d32dd92df975` |
| 30 | `lemma` | [homologyπ_extendHomologyIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/homology-extendhomologyiso-hom--feb288bf203fd5dd0707818f.md) | 349 | `result-track:feb288bf203fd5dd0707818feb2b4b34fbd8fcf09434c747f4c7e4c46d5d7f01` |
| 31 | `lemma` | [homologyπ_extendHomologyIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/homology-extendhomologyiso-inv--e5aa34e04b1aadaf13831bac.md) | 361 | `result-track:e5aa34e04b1aadaf13831bac1b52b935991939c7cbe8e10b8f770d2c2b05d903` |
| 32 | `lemma` | [pOpcycles_extendOpcyclesIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/popcycles-extendopcyclesiso-inv--380980f7c69e91c0ed97122a.md) | 368 | `result-track:380980f7c69e91c0ed97122a31c28d38664e435bb4f87836f1904d6565cff65d` |
| 33 | `lemma` | [pOpcycles_extendOpcyclesIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/popcycles-extendopcyclesiso-hom--164a52ae8b324d834a728b30.md) | 379 | `result-track:164a52ae8b324d834a728b30f684a935cadde87f8a03dfbea026887eabc7a3a5` |
| 34 | `lemma` | [extendHomologyIso_hom_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendhomologyiso-hom-homology--66c7932f2145cbbff81dcae7.md) | 386 | `result-track:66c7932f2145cbbff81dcae70b0712d7c45d56e5751c1068b0f9fd6f5764f4d2` |
| 35 | `lemma` | [extendHomologyIso_inv_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendhomologyiso-inv-homology--0d5acfb2c5f6fc985a2e4c48.md) | 394 | `result-track:0d5acfb2c5f6fc985a2e4c48e580a2200b699dbd6993c2e1a655c87d0bb89e4a` |
| 36 | `lemma` | [extendCyclesIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendcyclesiso-hom-naturality--86e9dd02ffd0d2a7e991814b.md) | 403 | `result-track:86e9dd02ffd0d2a7e991814baa9a9a16d13fb37131f0ba4227a22b8f05fb23e9` |
| 37 | `lemma` | [extendHomologyIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/extendhomologyiso-hom-naturality--0ff3de00461e1cd05b695382.md) | 409 | `result-track:0ff3de00461e1cd05b695382cf9163d845cacb7f3115eed753cf07f986fc4046` |
| 38 | `lemma` | [quasiIsoAt_extendMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/quasiisoat-extendmap-iff--0b4031bac982f38dfdbfbb2c.md) | 415 | `result-track:0b4031bac982f38dfdbfbb2c0b8c3abaf4f2f32ac7b97864449e9f8e855af67f` |
| 39 | `lemma` | [quasiIso_extendMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/declarations/quasiiso-extendmap-iff--73325ae01876b35f1115dbdd.md) | 423 | `result-track:73325ae01876b35f1115dbdda5e5db7988c17554b88750862922680c5c5f6eff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
