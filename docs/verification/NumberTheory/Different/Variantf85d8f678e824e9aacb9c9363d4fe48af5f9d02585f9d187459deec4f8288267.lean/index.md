# Verification target: GRWTSK.NumberTheory.Different.Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c704435797008f41895577f65f1cf04d114bd5d8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c704435797008f41895577f65f1cf04d114bd5d8`.

Source path: `GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean.json)

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
| 1 | `lemma` | [absNorm_differentIdeal](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/absnorm-differentideal--e7e53e4abd7ce595fa8b6113.md) | 51 | `result-track:e7e53e4abd7ce595fa8b6113f75ba608256232464b1057d9d8deda988c8764b8` |
| 2 | `lemma` | [discr_mem_differentIdeal](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/discr-mem-differentideal--f43fdf233b1d082979d69b1e.md) | 87 | `result-track:f43fdf233b1d082979d69b1e59841f9b1bd502a9a05a1a967a579cacb31b79b2` |
| 3 | `theorem` | [natAbs_discr_eq_absNorm_differentIdeal_mul_natAbs_discr_pow](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/natabs-discr-eq-absnorm-differentideal-mul-natabs-discr-pow--36ed51782ba19bb4eb242fe8.md) | 97 | `result-track:36ed51782ba19bb4eb242fe83f2e5f5bc29ca3e9a6c726499b32cd421ed3ea34` |
| 4 | `theorem` | [isCoprime_differentIdeal_of_isCoprime_discr](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/iscoprime-differentideal-of-iscoprime-discr--c438692218f48d8db4c97d15.md) | 111 | `result-track:c438692218f48d8db4c97d150bdf53040d8fb384b866d26be3d2044b9002394e` |
| 5 | `theorem` | [discr_dvd_discr](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/discr-dvd-discr--2fa411f6612239c00bfc5315.md) | 128 | `result-track:2fa411f6612239c00bfc5315ceb70485e2680aab7766444524c430f8d9393e40` |
| 6 | `theorem` | [linearDisjoint_of_isGalois_isCoprime_discr](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/lineardisjoint-of-isgalois-iscoprime-discr--05ee9131fd7b9791be90b7e2.md) | 141 | `result-track:05ee9131fd7b9791be90b7e2178a5802a2727844ad4549725cef36259a5e1af5` |
| 7 | `theorem` | [natAbs_discr_eq_natAbs_discr_pow_mul_natAbs_discr_pow](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/natabs-discr-eq-natabs-discr-pow-mul-natabs-discr-pow--7af78ebe99e7698b49266039.md) | 158 | `result-track:7af78ebe99e7698b49266039e35a89709b362c4ab969b770327fcd290f8d2083` |
| 8 | `lemma` | [not_dvd_discr_iff_forall_liesOver](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/not-dvd-discr-iff-forall-liesover--392da6e30357c918ad284c78.md) | 174 | `result-track:392da6e30357c918ad284c78b990f17d9dd0fd483e020adb3bd35dd8bb278f20` |
| 9 | `lemma` | [not_dvd_discr_iff_isUnramifiedIn](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/not-dvd-discr-iff-isunramifiedin--44a40c26d5b4cdb0682f8b62.md) | 200 | `result-track:44a40c26d5b4cdb0682f8b62a966ac1769d13b3ef7a36c79e45a77d51b9c086c` |
| 10 | `lemma` | [not_dvd_discr_iff_forall_mem](../../../../mathematics/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/declarations/not-dvd-discr-iff-forall-mem--a3918f9e9db17ec7816bb4ef.md) | 210 | `result-track:a3918f9e9db17ec7816bb4ef24a4a0c1ea5a54c241f8683d976c140320d45b73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
