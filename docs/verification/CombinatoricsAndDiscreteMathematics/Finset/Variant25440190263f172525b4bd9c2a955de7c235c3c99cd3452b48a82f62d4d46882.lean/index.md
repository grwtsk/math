# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c17fd990150fb1fa0be3badced963f7a4b171688",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c17fd990150fb1fa0be3badced963f7a4b171688`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finset.Nonempty.csSup_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-nonempty-cssup-eq-max--e6cb2e0ae02d71e380ff6e1c.md) | 32 | `result-track:e6cb2e0ae02d71e380ff6e1c5b521caf3d79a7a481e412b2a5d72770297de2f7` |
| 2 | `theorem` | [Finset.Nonempty.csInf_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-nonempty-csinf-eq-min--46ac7d2738487239c96634cb.md) | 35 | `result-track:46ac7d2738487239c96634cb4f8921d44d05a2ecd1c0407c82c86b2cd467c8fb` |
| 3 | `theorem` | [Finset.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-nonempty-cssup-mem--b7e5623fd700e47b570f969f.md) | 38 | `result-track:b7e5623fd700e47b570f969fbf0b704e4a42ddeada47aeb1a78ebdaaf7877d2f` |
| 4 | `theorem` | [Finset.Nonempty.csInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-nonempty-csinf-mem--1aaf18a0641798f561a7cfd4.md) | 42 | `result-track:1aaf18a0641798f561a7cfd457b41a415c299f4b77007fee9c44bd3585a7c3ff` |
| 5 | `theorem` | [Set.Nonempty.csSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-nonempty-cssup-mem--12b5bb45cb6d5ade5a118f66.md) | 45 | `result-track:12b5bb45cb6d5ade5a118f6670e1664e33ce8a96c82525350769fc3342aeef62` |
| 6 | `theorem` | [Set.Nonempty.csInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-nonempty-csinf-mem--8238208ef1ab0fd5b90a111d.md) | 49 | `result-track:8238208ef1ab0fd5b90a111d80a1f3394374fad6f43b0098cb5f7697e5b3695d` |
| 7 | `theorem` | [Set.Finite.csSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-finite-cssup-lt-iff--573ce6bde63a9eaef0280ba0.md) | 52 | `result-track:573ce6bde63a9eaef0280ba079ed714de67dba1aadabfe6cbc2f048e8295c3d7` |
| 8 | `theorem` | [Set.Finite.lt_csInf_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-finite-lt-csinf-iff--cbc070625685684d130516c0.md) | 55 | `result-track:cbc070625685684d130516c0810d2e0c9e77c807b08b6f8544b9169008e0c973` |
| 9 | `theorem` | [Finset.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-cisup-eq-max-image--bcf55e7b23d610385212a914.md) | 60 | `result-track:bcf55e7b23d610385212a91405829d2aeeb30af6aec18b04a7e9005298f6d42b` |
| 10 | `theorem` | [Finset.ciInf_eq_min'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-ciinf-eq-min-image--d159cdd81b2c17000cd13cef.md) | 79 | `result-track:d159cdd81b2c17000cd13cef3e4cff6de58c974b6b9e108c32ceb2e09345df8a` |
| 11 | `theorem` | [Finset.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-cisup-mem-image--53a74bdae0166555913e02ed.md) | 89 | `result-track:53a74bdae0166555913e02ed59d3a93887fdddde635b2bf0c8dd9646ea4bc5c8` |
| 12 | `theorem` | [Finset.ciInf_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-ciinf-mem-image--5b8fbf25143d43075d75ae1f.md) | 94 | `result-track:5b8fbf25143d43075d75ae1f3c6aaca629cec5e524682299a043f1c2a7801b41` |
| 13 | `theorem` | [Set.Finite.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-finite-cisup-mem-image--c793059d309695700e43e114.md) | 99 | `result-track:c793059d309695700e43e11481de1b17cec21efc3c18ad71bc0030a2e6070a92` |
| 14 | `theorem` | [Set.Finite.ciInf_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-finite-ciinf-mem-image--f949dfa6281713d5cc1e3d19.md) | 105 | `result-track:f949dfa6281713d5cc1e3d192f9d68dc103cdd35365e7ff2d6dc86b3b9f8cbae` |
| 15 | `theorem` | [Set.Finite.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-finite-cisup-lt-iff--7131d96d03079e7afb811d8f.md) | 111 | `result-track:7131d96d03079e7afb811d8f259560a3c5d695cf06c9ec08ceafa92cfcf8a48b` |
| 16 | `theorem` | [Set.Finite.lt_ciInf_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-finite-lt-ciinf-iff--7134b4ca8e759f123378a3fa.md) | 136 | `result-track:7134b4ca8e759f123378a3fa3cb4bc44c09501842e7d5a77ca48a7ae9fc44a9a` |
| 17 | `lemma` | [List.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/list-isup-mem-map-of-exists-ssup-empty-le--608cff13b39b3858811279c3.md) | 163 | `result-track:608cff13b39b3858811279c31d45fec357c8f2bbb8d5d07f02e9fd6bbcd3c655` |
| 18 | `lemma` | [List.iInf_mem_map_of_exists_le_sInf_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/list-iinf-mem-map-of-exists-le-sinf-empty--bae35d693bd81a8de46076f5.md) | 169 | `result-track:bae35d693bd81a8de46076f5ec8fd2392d96a09706f296302772fde3fc892946` |
| 19 | `lemma` | [Multiset.iSup_mem_map_of_exists_sSup_empty_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/multiset-isup-mem-map-of-exists-ssup-empty-le--c1221f41813cd945bc12bcc7.md) | 175 | `result-track:c1221f41813cd945bc12bcc730cdc8010fc627875380c378e1a64f913743946c` |
| 20 | `lemma` | [Multiset.iInf_mem_map_of_exists_le_sInf_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/multiset-iinf-mem-map-of-exists-le-sinf-empty--47f1c1629935c60526bc3908.md) | 181 | `result-track:47f1c1629935c60526bc390862a0c944f5bfc0f4bc2be28724a3e2d2498155aa` |
| 21 | `theorem` | [exists_eq_ciSup_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/exists-eq-cisup-of-finite--2b45fb0cee66169d0abcc5eb.md) | 187 | `result-track:2b45fb0cee66169d0abcc5ebbfc0f1d7533c334a17616471ccf924bc8924ed34` |
| 22 | `theorem` | [exists_eq_ciInf_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/exists-eq-ciinf-of-finite--b07220971876d8ef324559f5.md) | 190 | `result-track:b07220971876d8ef324559f5d98fcccd29bc23f64d75fa6f1a5a517a52fb15b0` |
| 23 | `theorem` | [sup'_eq_csSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/sup-eq-cssup-image--615f9ce448444db626c3200d.md) | 209 | `result-track:615f9ce448444db626c3200d92cd2d24da43531eefd9208b1702c06fbbfb95e4` |
| 24 | `theorem` | [inf'_eq_csInf_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/inf-eq-csinf-image--14fa4fd1a44178a3cee310e9.md) | 214 | `result-track:14fa4fd1a44178a3cee310e9c9c6dd397f587bfe5172d11510927043cb75a15e` |
| 25 | `theorem` | [sup'_id_eq_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/sup-id-eq-cssup--ad33e2466407bd464fc8b781.md) | 218 | `result-track:ad33e2466407bd464fc8b781f75b69f5c5081d70b0a27747123361d703475160` |
| 26 | `theorem` | [inf'_id_eq_csInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/inf-id-eq-csinf--e24ac7546cae7fa0795c3b06.md) | 221 | `result-track:e24ac7546cae7fa0795c3b063a0542bb465090a2d926174d0e2851d18a68f1da` |
| 27 | `lemma` | [sup'_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/sup-univ-eq-cisup--c0e602d7e0ce929897b681db.md) | 226 | `result-track:c0e602d7e0ce929897b681db1f1495e6946aede107c4e45cf5b4e7140f43500e` |
| 28 | `lemma` | [inf'_univ_eq_ciInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/inf-univ-eq-ciinf--067622d17f5b6194062d7dd8.md) | 229 | `result-track:067622d17f5b6194062d7dd85937b5b74ed29c7ea1eda95ac2e0b100243e544c` |
| 29 | `lemma` | [sup_univ_eq_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/sup-univ-eq-cisup--6faddb82c389527a221b6bf7.md) | 237 | `result-track:6faddb82c389527a221b6bf79c4e27de40b6a2cd4a981e512c302144d2ec8c9b` |
| 30 | `theorem` | [Finset.Nonempty.ciSup_eq_max'_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-nonempty-cisup-eq-max-image--c4a225fd7cbd2b9c91577eff.md) | 250 | `result-track:c4a225fd7cbd2b9c91577eff37b636396d388992861422a263692947fad202eb` |
| 31 | `theorem` | [Finset.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/finset-nonempty-cisup-mem-image--a9a410dc85af1fd447211607.md) | 255 | `result-track:a9a410dc85af1fd44721160741fb4b005baaa0f6759d2371df9374ad97b7fbf2` |
| 32 | `theorem` | [Set.Nonempty.ciSup_mem_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-nonempty-cisup-mem-image--3e5d43bf1112b3addd5f11ef.md) | 259 | `result-track:3e5d43bf1112b3addd5f11ef10d529d069974667e86db0549bcd5d8003855d9e` |
| 33 | `theorem` | [Set.Nonempty.ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/set-nonempty-cisup-lt-iff--f0e41d3bed49470167f4ba1e.md) | 263 | `result-track:f0e41d3bed49470167f4ba1ebf8159b50aee14cbb3db886bbed8cb2f99c885e6` |
| 34 | `lemma` | [List.iSup_mem_map_of_ne_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/list-isup-mem-map-of-ne-nil--7a1ccf0381d1d5918be45cb7.md) | 269 | `result-track:7a1ccf0381d1d5918be45cb72443389e5304c2c1fc0b72250bcf88362680460e` |
| 35 | `lemma` | [Multiset.iSup_mem_map_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant25440190263f172525b4bd9c2a955de7c235c3c99cd3452b48a82f62d4d46882.lean/declarations/multiset-isup-mem-map-of-ne-zero--ca2e7964227d0d3b5d898a52.md) | 273 | `result-track:ca2e7964227d0d3b5d898a52e92cb1514ff8a5d3438d06f1d1114bc4feb9c7fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
