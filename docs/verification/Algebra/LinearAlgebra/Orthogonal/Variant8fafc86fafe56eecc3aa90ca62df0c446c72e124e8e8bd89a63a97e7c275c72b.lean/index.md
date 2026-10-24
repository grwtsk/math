# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f490dd3bee1d294fd544dfdbb12cc648e681c9ab",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f490dd3bee1d294fd544dfdbb12cc648e681c9ab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.Properties` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isortho--f883b723d93af3bd1cbdac1b.md) | 57 | `declaration-track:f883b723d93af3bd1cbdac1b6fe2a54ba8d05244132303996a67298a2d5b0e19` |
| 2 | `theorem` | [isOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isortho-def--31d2c160ae8d592056efdb34.md) | 60 | `result-track:31d2c160ae8d592056efdb34ce73f9130c871eff615237b47370772d97cd6169` |
| 3 | `theorem` | [isOrtho_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isortho-zero-left--19282de55aa0beef169bf05d.md) | 63 | `result-track:19282de55aa0beef169bf05d557588171fd5ff9c9f032b4715a40535bcda5d8c` |
| 4 | `theorem` | [isOrtho_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isortho-zero-right--0743bd3ed1ce18914e6f620a.md) | 65 | `result-track:0743bd3ed1ce18914e6f620ac1d668ce969ab57c29cf6804010b7bbc7911859e` |
| 5 | `theorem` | [ne_zero_of_not_isOrtho_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/ne-zero-of-not-isortho-self--1f99aa27b44b3910c5af24c9.md) | 68 | `result-track:1f99aa27b44b3910c5af24c9fffd741f458b517f87b079170db98dcd01519bb9` |
| 6 | `theorem` | [IsRefl.ortho_comm](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isrefl-ortho-comm--080e96aaa7b019cd942a43b5.md) | 71 | `result-track:080e96aaa7b019cd942a43b571b940461381452fd78d8218e0fec70969674d07` |
| 7 | `theorem` | [IsAlt.ortho_comm](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isalt-ortho-comm--a648953f8874c86b6d577957.md) | 74 | `result-track:a648953f8874c86b6d5779576c56b7183be395f678d5373bd5b285c718658cad` |
| 8 | `theorem` | [IsSymm.ortho_comm](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/issymm-ortho-comm--8f297e08462f5510c0b67e21.md) | 77 | `result-track:8f297e08462f5510c0b67e2122a2dcdd67797caa431ff82ab08a18b2c555f87f` |
| 9 | `def` | [iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/iisortho--3f73dee74fbe93b027f3ed99.md) | 83 | `declaration-track:3f73dee74fbe93b027f3ed9943eb6e7015f34d5af0cd7ac1321245f8fd62c7cb` |
| 10 | `theorem` | [iIsOrtho_def](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/iisortho-def--7d12f032ecfa7a1af85e7080.md) | 86 | `result-track:7d12f032ecfa7a1af85e708050c72b258eb46f7fd7ca8648d21ba87826e83b51` |
| 11 | `theorem` | [isOrtho_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isortho-smul-left--4708c1521c71d6254f1e1745.md) | 96 | `result-track:4708c1521c71d6254f1e1745ee8c9299940410740e3e432ee8a6648d61b05881` |
| 12 | `theorem` | [isOrtho_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/isortho-smul-right--1d8a37b99ddb410019714a05.md) | 104 | `result-track:1d8a37b99ddb410019714a059eef142d134819eaec0c3a3b35c904ce55a0761e` |
| 13 | `theorem` | [linearIndependent_of_iIsOrtho](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/linearindependent-of-iisortho--441bf9c69189c97effd5d1c6.md) | 113 | `result-track:441bf9c69189c97effd5d1c61730a12b58a85c46236fba533d1e67644a9670ee` |
| 14 | `def` | [orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal--3423f6579a175e435125e31e.md) | 137 | `declaration-track:3423f6579a175e435125e31e83ed13c19c59eaf9ffa8732eae26285423068c09` |
| 15 | `theorem` | [mem_orthogonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/mem-orthogonal-iff--85237ad59c2a788fa4380009.md) | 148 | `result-track:85237ad59c2a788fa43800095a0291a0235bb1c414d3335d4925008a06d8d936` |
| 16 | `lemma` | [orthogonal_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-bot--21a0a66d9a23b20d15471aaa.md) | 152 | `result-track:21a0a66d9a23b20d15471aaa7563afaaa8a82558e047c42e2145c3380b6a6357` |
| 17 | `theorem` | [orthogonal_le](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-le--0599d9b85e195673053267ca.md) | 154 | `result-track:0599d9b85e195673053267ca3228925eaac47e579f50bdab333d02d76a79bd0d` |
| 18 | `theorem` | [le_orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/le-orthogonal-orthogonal--f701255865590b223c6e8e9c.md) | 156 | `result-track:f701255865590b223c6e8e9cebed63463e59b2e4dad9cc27898bb6085305b072` |
| 19 | `lemma` | [orthogonal_top_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-top-eq-ker--570d98032a54437763a2a59c.md) | 159 | `result-track:570d98032a54437763a2a59cfd3defe917cc365abeba3483ccdffda6a9732807` |
| 20 | `lemma` | [orthogonal_top_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-top-eq-bot--ef8bf7a7c8bb658e8ec5e846.md) | 163 | `result-track:ef8bf7a7c8bb658e8ec5e846449a465599e0c5f524bb9d726e42661ef8cc24d7` |
| 21 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/span-singleton-inf-orthogonal-eq-bot--e69ef86da56332f63895b0d9.md) | 168 | `result-track:e69ef86da56332f63895b0d93918cd1694b2463f105643c150fce7768bc8c225` |
| 22 | `theorem` | [orthogonal_span_singleton_eq_toLin_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-span-singleton-eq-tolin-ker--b6cd9f0134e98d738f63e5ba.md) | 183 | `result-track:b6cd9f0134e98d738f63e5ba8248f9d751e8db93ce634a2ac5c06d1dcc877c7e` |
| 23 | `theorem` | [span_singleton_sup_orthogonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/span-singleton-sup-orthogonal-eq-top--848bc9be40a1791bb8270d01.md) | 193 | `result-track:848bc9be40a1791bb8270d0183334a13c361a90b31ef1e4a3b3cc2ea1be9dce4` |
| 24 | `theorem` | [isCompl_span_singleton_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/iscompl-span-singleton-orthogonal--2b05179609e6116e0d6d2108.md) | 200 | `result-track:2b05179609e6116e0d6d21080f14cd280e359e18ecbbbbe3051e75efd1af7316` |
| 25 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/nondegenerate-restrict-of-disjoint-orthogonal--0a1b77d277074121628582a4.md) | 212 | `result-track:0a1b77d277074121628582a45b2893b16dcec5bc5b17aea33591f80eeea9da48` |
| 26 | `theorem` | [iIsOrtho.not_isOrtho_basis_self_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/iisortho-not-isortho-basis-self-of-nondegenerate--77c3573afb2d1e9f9e710f0f.md) | 223 | `result-track:77c3573afb2d1e9f9e710f0f0cd6fe9a4f523b26e3fda6944957b5229c4b21ce` |
| 27 | `theorem` | [iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/iisortho-nondegenerate-iff-not-isortho-basis-self--6e4c3ff222a7a24fe29ebab3.md) | 240 | `result-track:6e4c3ff222a7a24fe29ebab3a59408e21a3c4fee6d1bda33aab2ae58cb9139c3` |
| 28 | `theorem` | [toLin_restrict_ker_eq_inf_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/tolin-restrict-ker-eq-inf-orthogonal--fd17bbc37b21afa0eba60ad4.md) | 262 | `result-track:fd17bbc37b21afa0eba60ad4ffbe5fd58ba798726ca1bc991e1e8bea2961d178` |
| 29 | `theorem` | [toLin_restrict_range_dualCoannihilator_eq_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/tolin-restrict-range-dualcoannihilator-eq-orthogonal--2d8540c25a45f433cdd6e279.md) | 281 | `result-track:2d8540c25a45f433cdd6e2794e1eb282ad6d24e48b8915c0f2189f19c884edc2` |
| 30 | `lemma` | [ker_restrict_eq_of_codisjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/ker-restrict-eq-of-codisjoint--7d32f49adbbad531d7d089c6.md) | 292 | `result-track:7d32f49adbbad531d7d089c6e4055bee6340594cf9337fd704d0e7709f36ef21` |
| 31 | `lemma` | [inf_orthogonal_self_le_ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/inf-orthogonal-self-le-ker-restrict--7d3238c61c251180123e38ab.md) | 304 | `result-track:7d3238c61c251180123e38ab67ea6f2229c719284a3df2a08201ae6e48c10ba4` |
| 32 | `theorem` | [finrank_add_finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/finrank-add-finrank-orthogonal--475fa3620f95557e47b9c42a.md) | 319 | `result-track:475fa3620f95557e47b9c42a6601926fd4e87e76f52c1f03280e0488b1fd3072` |
| 33 | `lemma` | [finrank_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/finrank-orthogonal--9508fd08d67685dc90147577.md) | 330 | `result-track:9508fd08d67685dc90147577234b9596bd8cd04cd22e3686f25625fa0036da3e` |
| 34 | `lemma` | [orthogonal_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-orthogonal--c47f33c2c25648c97a289d19.md) | 336 | `result-track:c47f33c2c25648c97a289d19fa457ff4fcdfab699b5709a357b31b30cf1dc125` |
| 35 | `lemma` | [isCompl_orthogonal_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/iscompl-orthogonal-iff-disjoint--25fa8648005f80b3028bcf6f.md) | 344 | `result-track:25fa8648005f80b3028bcf6f83943ed26495ebbd4e8035a293f3c06564e2e308` |
| 36 | `theorem` | [isCompl_orthogonal_of_restrict_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/iscompl-orthogonal-of-restrict-nondegenerate--51c9e760496ac83c117c2bec.md) | 357 | `result-track:51c9e760496ac83c117c2becc94f41f3b996cbeeb342b996481a14c01c087baf` |
| 37 | `theorem` | [restrict_nondegenerate_iff_isCompl_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/restrict-nondegenerate-iff-iscompl-orthogonal--67eea3e0911faef876849612.md) | 375 | `result-track:67eea3e0911faef87684961269a5b31b3b68952c9aada229c42e5ef27a54290a` |
| 38 | `lemma` | [orthogonal_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-eq-top-iff--3f157991f7126e97dc57ffc1.md) | 380 | `result-track:3f157991f7126e97dc57ffc13fab32561cad0a5a34bfce47b3d4dc3876614371` |
| 39 | `lemma` | [eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/eq-top-of-restrict-nondegenerate-of-orthogonal-eq-bot--8996cfef99e779578690909b.md) | 386 | `result-track:8996cfef99e779578690909be7e0f227e824c6c8dea314d53edeb43323187e93` |
| 40 | `lemma` | [orthogonal_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/orthogonal-eq-bot-iff--63061439f7a5e16d4e5adab3.md) | 392 | `result-track:63061439f7a5e16d4e5adab3c0a6e4293ddbfd1b0735729e6242b80f47792e52` |
| 41 | `theorem` | [restrict_nondegenerate_orthogonal_spanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/declarations/restrict-nondegenerate-orthogonal-spansingleton--0f1b60efbfdbbd6295e1e796.md) | 409 | `result-track:0f1b60efbfdbbd6295e1e7960d6985cfe7f1865e487b14d5f02f6f74081ce456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
