# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Balanced.Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdba2bbb49cb1d681e393b49c93e8151b5cacabe",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdba2bbb49cb1d681e393b49c93e8151b5cacabe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BalancedAtRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot--2a69aa34b3da937d1e48cfba.md) | 37 | `declaration-track:2a69aa34b3da937d1e48cfba65a8e634b2c6b68aaeed919708f63b95ec78e2d1` |
| 2 | `inductive` | [Balanced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced--f7d28dc91b9d4180563de04f.md) | 44 | `declaration-track:f7d28dc91b9d4180563de04f038ad2b5517f25370984e53f4bc8a2f877dd3dac` |
| 3 | `theorem` | [balanced_inner_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced-inner-iff--eaffd46a9ca59388fb17488e.md) | 57 | `result-track:eaffd46a9ca59388fb17488e5db5a85389b20ac3ad4901bef3bf819c9bd747f3` |
| 4 | `theorem` | [balancedAtRoot_zero_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-zero-zero--c546246e82e6897b9c2fc09f.md) | 63 | `result-track:c546246e82e6897b9c2fc09f770ee1f3f7a11eb5e426db6334e03d713421645e` |
| 5 | `theorem` | [balancedAtRoot_zero_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-zero-one--16d101da15b910db117b13a1.md) | 67 | `result-track:16d101da15b910db117b13a17d194191d77947be71b304c6ffe2c4d6cabd3fc1` |
| 6 | `theorem` | [balancedAtRoot_one_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-one-zero--a3785edf652880ce76937670.md) | 71 | `result-track:a3785edf652880ce76937670cae4dd4b340ff68353b37d625606187ab4a79819` |
| 7 | `theorem` | [balancedAtRoot_one_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-one-one--7538dc7af5d0615bbda0917d.md) | 75 | `result-track:7538dc7af5d0615bbda0917db7ca8fd3a5e3d36f24e14069a055998f9bb23dad` |
| 8 | `theorem` | [balancedAtRoot_two_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-two-one--3006fbbdd885c5f7b7a887d6.md) | 79 | `result-track:3006fbbdd885c5f7b7a887d694307f776ede56fbd7afd8c0e27c37de38b4058a` |
| 9 | `theorem` | [balancedAtRoot_one_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-one-two--14a469a4ecf0fe67d4355e07.md) | 83 | `result-track:14a469a4ecf0fe67d4355e07db84ca299b6af56f211e8c30df21de6c7602b834` |
| 10 | `theorem` | [balanced_one_leaf_leaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced-one-leaf-leaf--9fca056ccc7b64e53e7a83f8.md) | 86 | `result-track:9fca056ccc7b64e53e7a83f81160d91ac9e393674bf880e95c8fcf65fec57e5a` |
| 11 | `theorem` | [balancedAtRoot_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-zero-iff--d7e46fff152852c03c0ef74f.md) | 89 | `result-track:d7e46fff152852c03c0ef74f75428a44bc4f1c68117b830bf6de829c11a7d066` |
| 12 | `theorem` | [balancedAtRoot_zero_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-zero-iff--06c4151a04417ecf7a868d60.md) | 92 | `result-track:06c4151a04417ecf7a868d6064d0531ff9795d18bcec5c9d5898d652d1d3e967` |
| 13 | `theorem` | [Balanced.one_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced-one-le--3353beaab515371f70a93158.md) | 95 | `result-track:3353beaab515371f70a931581c6a687f2848dac6547574025abd955a4eea8e54` |
| 14 | `theorem` | [Balanced.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced-eq--d40cff74448f7d00bc85b183.md) | 98 | `result-track:d40cff74448f7d00bc85b183fba16314fbb003647c7ea249c6f12cbd597cbd40` |
| 15 | `theorem` | [Balanced.left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced-left--47db9899a0df1d71657460d8.md) | 101 | `result-track:47db9899a0df1d71657460d8d595faea5b73b1dd7d85b845ebe57ceb3404be91` |
| 16 | `theorem` | [Balanced.right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced-right--39ed894b5b378cac6f9dbdd8.md) | 104 | `result-track:39ed894b5b378cac6f9dbdd896f531f1812855564e5a8bf5c210f3d3e63e5aab` |
| 17 | `theorem` | [Balanced.at_root](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balanced-at-root--40450e782b524a42913c463a.md) | 107 | `result-track:40450e782b524a42913c463adc041361c84b6ed48e80515d75a188888c019c3d` |
| 18 | `theorem` | [BalancedAtRoot.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balanced/Variantdae5941a8be8a62ba0b80ac553f5d8182bece88279aad581b07d44a33ec5e711.lean/declarations/balancedatroot-symm--3e2010a1b873d794cd642892.md) | 111 | `result-track:3e2010a1b873d794cd6428929d759d32ed5298ad1514784328b010306e8d03eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
