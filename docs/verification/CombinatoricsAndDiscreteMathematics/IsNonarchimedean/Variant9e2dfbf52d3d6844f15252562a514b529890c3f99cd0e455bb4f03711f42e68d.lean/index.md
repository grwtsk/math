# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.IsNonarchimedean.Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cd2b8f728b68784ac60ac031c370e2cb602c3aa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cd2b8f728b68784ac60ac031c370e2cb602c3aa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/add-le--bacdc13ea0e310381a0eb73a.md) | 24 | `result-track:bacdc13ea0e310381a0eb73ad8b9ab39c2a397f6d9f46f36b806ff2aea11e083` |
| 2 | `theorem` | [nsmul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/nsmul-le--e8b9c0cc288c3c51bf4e0796.md) | 32 | `result-track:e8b9c0cc288c3c51bf4e079633240501fac42b4a0e024c0471b5e645eb8f6cb1` |
| 3 | `theorem` | [nmul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/nmul-le--804c5486b8638c48fde5a5ea.md) | 44 | `result-track:804c5486b8638c48fde5a5ea40ad65569ab53c589352adcc02f5fe3dfc45f2a2` |
| 4 | `lemma` | [apply_natCast_le_one_of_isNonarchimedean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/apply-natcast-le-one-of-isnonarchimedean--ab7f632f07ab8bbdfda66c98.md) | 50 | `result-track:ab7f632f07ab8bbdfda66c98ee41dc0db888a531ad705dc08165488261b16fbf` |
| 5 | `theorem` | [apply_intCast_le_one_of_isNonarchimedean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/apply-intcast-le-one-of-isnonarchimedean--06d46791ec4cc46c657b788a.md) | 58 | `result-track:06d46791ec4cc46c657b788ac4821d10d44445c1745fc87c251197bbeab4ba7f` |
| 6 | `lemma` | [add_eq_right_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/add-eq-right-of-lt--5c80aec8db7892562f6ae192.md) | 65 | `result-track:5c80aec8db7892562f6ae192f29d1e38c365cab7ba26a5bca1965ee3af7550c1` |
| 7 | `lemma` | [add_eq_left_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/add-eq-left-of-lt--20e1dda6358302788a1fec7d.md) | 79 | `result-track:20e1dda6358302788a1fec7d692bc8fb9b8f6d7aea27e3117bf97c523c14a0ae` |
| 8 | `theorem` | [add_eq_max_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/add-eq-max-of-ne--e52b896ccdd700b3c8551a14.md) | 95 | `result-track:e52b896ccdd700b3c8551a14f07de3415dc3fc37a4fabaec7910387b024c1415` |
| 9 | `theorem` | [multiset_image_add_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/multiset-image-add-of-nonempty--270bf8b47f170596e18cd97b.md) | 108 | `result-track:270bf8b47f170596e18cd97bfd7407c7a24f270a57fed788e062549c5469cf5b` |
| 10 | `theorem` | [finset_image_add_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/finset-image-add-of-nonempty--d7cbdf50f6b449df5d786481.md) | 125 | `result-track:d7cbdf50f6b449df5d78648198997c19717f427ef0aad5b764c6968b6a105dc5` |
| 11 | `theorem` | [multiset_image_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/multiset-image-add--b16f8829b37a2c4d84d294fe.md) | 134 | `result-track:b16f8829b37a2c4d84d294feeae57fbca28a4eabda41a0db24da4e2a58ad4b50` |
| 12 | `theorem` | [finset_image_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/finset-image-add--8918b6f8f1f8eb3d4ac8978a.md) | 147 | `result-track:8918b6f8f1f8eb3d4ac8978ade568996a7cabef58c97146382f52ea50978be82` |
| 13 | `theorem` | [multiset_powerset_image_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/multiset-powerset-image-add--c3c1b9922b8ed4ca50d87f41.md) | 156 | `result-track:c3c1b9922b8ed4ca50d87f41f46a4072bc3a00b6b52fd82fe8ab48978a74999a` |
| 14 | `theorem` | [finset_powerset_image_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/finset-powerset-image-add--85c1eb0f07c236591372f5c7.md) | 170 | `result-track:85c1eb0f07c236591372f5c7d41b54a6e3465108ff0b1c577f49e7686575b507` |
| 15 | `lemma` | [apply_sum_le_sup_of_isNonarchimedean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/apply-sum-le-sup-of-isnonarchimedean--3544568f90dce4e943a199c8.md) | 184 | `result-track:3544568f90dce4e943a199c8f13d4a6146abda1edd470a5579baa8335ef39985` |
| 16 | `theorem` | [add_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variant9e2dfbf52d3d6844f15252562a514b529890c3f99cd0e455bb4f03711f42e68d.lean/declarations/add-pow-le--29b0086b1ac6fa7f503bed47.md) | 199 | `result-track:29b0086b1ac6fa7f503bed47b107c97fb74b9de1376dc66e573648be1f23ea68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
