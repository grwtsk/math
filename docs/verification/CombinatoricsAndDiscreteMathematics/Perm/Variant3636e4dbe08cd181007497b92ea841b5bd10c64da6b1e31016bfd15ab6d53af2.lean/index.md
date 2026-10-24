# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Perm.Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39d8282428f54a736156c666b4981fdd5b379b76",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39d8282428f54a736156c666b4981fdd5b379b76`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/permsoflist--eec44f75c00bfb168ed3cac1.md) | 35 | `declaration-track:eec44f75c00bfb168ed3cac10e1155150e2ba4657c3815361560e96b2a010056` |
| 2 | `theorem` | [length_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/length-permsoflist--5aad8089dbbffbf9819cb113.md) | 39 | `result-track:5aad8089dbbffbf9819cb11372ccc78a2a2be80ab4817d2d06f2d8d830bb21d1` |
| 3 | `theorem` | [mem_permsOfList_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/mem-permsoflist-of-mem--9cda7aa67c79a0a898513fba.md) | 44 | `result-track:9cda7aa67c79a0a898513fbab1874b5a497c8ae6894403a23cd57715e14c6600` |
| 4 | `theorem` | [mem_of_mem_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/mem-of-mem-permsoflist--8d7428e2bd934d2f73ceca38.md) | 72 | `result-track:8d7428e2bd934d2f73ceca38e3290bc036543bace820e12ed26b479c9d1f100b` |
| 5 | `theorem` | [mem_permsOfList_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/mem-permsoflist-iff--b9b87f0e6dc9fa3b0ad6f012.md) | 89 | `result-track:b9b87f0e6dc9fa3b0ad6f0122e075d699840556df4033b6640bb50281440bf8a` |
| 6 | `theorem` | [nodup_permsOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/nodup-permsoflist--37a3f5c5751eacb65b1d43fe.md) | 93 | `result-track:37a3f5c5751eacb65b1d43fe21d6432054181a304d18c9a395e73fe16c0e5bf5` |
| 7 | `def` | [permsOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/permsoffinset--eb8b6c371a4805cc0e8204ea.md) | 122 | `declaration-track:eb8b6c371a4805cc0e8204eabec4a57d9ac9fe4d186e029e395e4302897b7f10` |
| 8 | `theorem` | [mem_perms_of_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/mem-perms-of-finset-iff--520417312b45a2529f687629.md) | 129 | `result-track:520417312b45a2529f687629ae28cb374402e8e2d3eded4a7d8504ffeeccb5fc` |
| 9 | `theorem` | [card_perms_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/card-perms-of-finset--1dfaf1d869b8194cb0c651c5.md) | 133 | `result-track:1dfaf1d869b8194cb0c651c5d3a9b39c0619c4708fe4ab18e93c6b12ef5614fb` |
| 10 | `def` | [fintypePerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/fintypeperm--0e721e0c2935383fee8311bb.md) | 137 | `declaration-track:0e721e0c2935383fee8311bb70a3671173b8d583439762d91cbbd86e2d536415` |
| 11 | `instance` | [Equiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/equiv-instfintype--edf0b6dc5f668e69f28b4167.md) | 140 | `declaration-track:edf0b6dc5f668e69f28b4167c3cdbd4c81da2c55f9b440a75b0a3f1146eacdb3` |
| 12 | `instance` | [MulEquiv.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/mulequiv-instfintype--745d3e767c078dc7376b0ec3.md) | 151 | `declaration-track:745d3e767c078dc7376b0ec349b66b62d11a9cd834cf271e21e0f423c7abe0bc` |
| 13 | `theorem` | [Fintype.card_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/fintype-card-perm--34f3672ce6e666bde3d908dc.md) | 158 | `result-track:34f3672ce6e666bde3d908dcb23c1b90fb0c3c564984d3a2f044fa0a9a065944` |
| 14 | `theorem` | [Fintype.card_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/declarations/fintype-card-equiv--9db2c092888057684bbd2796.md) | 161 | `result-track:9db2c092888057684bbd2796798f2c735bde916be7e55d5313ff5be0ee1487c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
