# Verification target: GRWTSK.Algebra.GroupTheory.Subgroup.Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "737eb688279731532b91c3e4c3f4ad9804b17245",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `737eb688279731532b91c3e4c3f4ad9804b17245`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [sumCongrHom.decidableMemRange](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/declarations/sumcongrhom-decidablememrange--01a8d836d5cf8c3a12ff60eb.md) | 31 | `declaration-track:01a8d836d5cf8c3a12ff60eb26e96cf1dffc5f9ea8be526a1af4150cf8c26c47` |
| 2 | `theorem` | [sumCongrHom.card_range](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/declarations/sumcongrhom-card-range--9cfe71224e87ff31052ee060.md) | 35 | `result-track:9cfe71224e87ff31052ee060e82a460d90c0e5ccf3e968f0f09e520441b95226` |
| 3 | `instance` | [sigmaCongrRightHom.decidableMemRange](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/declarations/sigmacongrrighthom-decidablememrange--352a81001a1de73b723110ca.md) | 40 | `declaration-track:352a81001a1de73b723110caaa1e674cead72c55d014f6248cdb64d5aad9f7dd` |
| 4 | `theorem` | [sigmaCongrRightHom.card_range](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/declarations/sigmacongrrighthom-card-range--74c47c7eee51b164e4f2e017.md) | 45 | `result-track:74c47c7eee51b164e4f2e0177e5ff77bb317c2c62e25390aee98c7f53a795a0a` |
| 5 | `instance` | [subtypeCongrHom.decidableMemRange](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/declarations/subtypecongrhom-decidablememrange--3dabcb8ee402e4b7f37a0503.md) | 50 | `declaration-track:3dabcb8ee402e4b7f37a0503bb1f54c16f5ea82e5446be23916da9ab6bd6e4a4` |
| 6 | `theorem` | [subtypeCongrHom.card_range](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/declarations/subtypecongrhom-card-range--246022cbe12e0cf23a4f89c6.md) | 55 | `result-track:246022cbe12e0cf23a4f89c6c8c7641fff38e41f42df5e2fff451803f01dd359` |
| 7 | `def` | [subgroupOfMulAction](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variantdb465b9e3cca90ddbe6f11efdaabbbdcdacbc50b8a52cb6386df812166387b46.lean/declarations/subgroupofmulaction--95af4e9a84a8d96f45087be5.md) | 64 | `declaration-track:95af4e9a84a8d96f45087be5135d1c8acb9c43de17d4eaf622ec67d9a1500035` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
