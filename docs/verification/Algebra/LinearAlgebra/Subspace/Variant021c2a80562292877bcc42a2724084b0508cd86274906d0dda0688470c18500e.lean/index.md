# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bc39353547ba408dae113574771ffa10674b17a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bc39353547ba408dae113574771ffa10674b17a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subspace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/subspace--12ce9246b1b0fae56cff9b33.md) | 43 | `declaration-track:12ce9246b1b0fae56cff9b33a2fd021b65f1bd3e85c7bb3b56119366a202b8e1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/instance--8edbdbb5619f9831ab115210.md) | 54 | `declaration-track:8edbdbb5619f9831ab1152101cc042c6feb5a0f0e9039a6fc3f17c681201aa4e` |
| 3 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/mem-carrier-iff--95721d5e229908273674a599.md) | 62 | `result-track:95721d5e229908273674a59928368eb9af876d70d4f6d811db0043a4fa63a423` |
| 4 | `theorem` | [mem_add](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/mem-add--6d546c221b998d0f575a0c36.md) | 65 | `result-track:6d546c221b998d0f575a0c360758300637320d10a61dbca4fad9e9669bc14f14` |
| 5 | `inductive` | [spanCarrier](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/spancarrier--e63c9de92f456a287e669971.md) | 73 | `declaration-track:e63c9de92f456a287e669971e4f9cc458c494c0a1c6695b940bed90edb6265c0` |
| 6 | `def` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span--25166143e1487bec51d42146.md) | 80 | `declaration-track:25166143e1487bec51d421468664909b90a71a870a8ad9e33bc8483cf7664476` |
| 7 | `theorem` | [subset_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/subset-span--3d3465668b9c339d76f313eb.md) | 85 | `result-track:3d3465668b9c339d76f313eb0432c2edc8fd94ca75b713ceaccf9b732a833022` |
| 8 | `def` | [gi](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/gi--dd0acc70e5850d3c41a0b7db.md) | 89 | `declaration-track:dd0acc70e5850d3c41a0b7dbeffbc9e3137a5ef7d73731dcdb42fa1e7580aceb` |
| 9 | `theorem` | [span_coe](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-coe--137b621fb4e8f658d70c65fd.md) | 102 | `result-track:137b621fb4e8f658d70c65fd92b59c92d09b32791351db4634a9ad7e544e1775` |
| 10 | `instance` | [instInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/instinf--c4fdac3f25bbf7b136f00a07.md) | 106 | `declaration-track:c4fdac3f25bbf7b136f00a072a636a9f31693806cb36facbd5f6e4c7373ef3a4` |
| 11 | `instance` | [instInfSet](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/instinfset--2f52904357642c78a155dbce.md) | 112 | `declaration-track:2f52904357642c78a155dbce7fe77e24a2dee14e949c08eec17d192b905e9eb9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/instance--476c38f7d2d18fb47db0c812.md) | 119 | `declaration-track:476c38f7d2d18fb47db0c812545481e026d685516af1b67ed98c1046bcf99d1b` |
| 13 | `instance` | [subspaceInhabited](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/subspaceinhabited--c57b6e2529110083738c2bd5.md) | 129 | `declaration-track:c57b6e2529110083738c2bd51a2041745da30970b1e3b72308f38d9489031004` |
| 14 | `theorem` | [span_empty](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-empty--29aef2fe4f3fd8b0370e86b1.md) | 133 | `result-track:29aef2fe4f3fd8b0370e86b1675e8dd8ffe49d72f908e0bc36d3c6640b7ffcac` |
| 15 | `theorem` | [span_univ](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-univ--75ee3229acc17e59f9e30e2e.md) | 137 | `result-track:75ee3229acc17e59f9e30e2e72fc692e09b1f7c0641b2c0dbc9112545301eb94` |
| 16 | `theorem` | [span_le_subspace_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-le-subspace-iff--04696cfe5ab498e352107faf.md) | 144 | `result-track:04696cfe5ab498e352107faf8806bd1f83a28dad368a09f63b04346304057b53` |
| 17 | `theorem` | [monotone_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/monotone-span--31936f5e8ec69572ce3c51d8.md) | 150 | `result-track:31936f5e8ec69572ce3c51d86552ae7feb1dc53de2ab5b0406a6c244193c0b29` |
| 18 | `lemma` | [span_le_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-le-span--a98f5960e60502226cb98bcd.md) | 154 | `result-track:a98f5960e60502226cb98bcd56a424b2803434d9fb8f13a78bfbb831bd82e02e` |
| 19 | `theorem` | [subset_span_trans](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/subset-span-trans--00b45ab0d3da65346b8d74e7.md) | 156 | `result-track:00b45ab0d3da65346b8d74e707b7d69443f45447a1d0c4aef514174d31df0dd1` |
| 20 | `theorem` | [span_union](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-union--25ef69283142eb42422d2551.md) | 161 | `result-track:25ef69283142eb42422d2551927369e2543ff48ba732ea72883f05a1b6903966` |
| 21 | `theorem` | [span_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-iunion--85e8e11c507db291119fb459.md) | 166 | `result-track:85e8e11c507db291119fb4599e507e2bd7da3f00bf9af06d379625a1bf20724f` |
| 22 | `theorem` | [sup_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/sup-span--6cdc4151436866ec4387f9a8.md) | 171 | `result-track:6cdc4151436866ec4387f9a85048d5906e672770ded45fb0aa397c4d81a4afe7` |
| 23 | `theorem` | [span_sup](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-sup--a57da29d3ee1dc86a52d805a.md) | 174 | `result-track:a57da29d3ee1dc86a52d805abb77a1c5284bc097ebb6a931aa74329f5189bdc2` |
| 24 | `theorem` | [mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/mem-span--fd4c928b4fb71a088f61c3e9.md) | 179 | `result-track:fd4c928b4fb71a088f61c3e916f074f90d099bb8764537b7dc9edcd70edd95eb` |
| 25 | `theorem` | [span_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-eq-sinf--ec8cfa20c056546a5e2703c2.md) | 186 | `result-track:ec8cfa20c056546a5e2703c236d046e5df3cc8862aa3f2227aae39cee981a83b` |
| 26 | `theorem` | [span_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-eq-of-le--9aa0ed4401941cba1ac1cabb.md) | 197 | `result-track:9aa0ed4401941cba1ac1cabbba52dd889464904f55c8cf645bca2aa0ebed771a` |
| 27 | `theorem` | [span_eq_span_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/declarations/span-eq-span-iff--773a1c1256c0b1f6d9a5ce8b.md) | 203 | `result-track:773a1c1256c0b1f6d9a5ce8bba8654f46ecfd179cb15b6ae1fa145dd9c25827a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
