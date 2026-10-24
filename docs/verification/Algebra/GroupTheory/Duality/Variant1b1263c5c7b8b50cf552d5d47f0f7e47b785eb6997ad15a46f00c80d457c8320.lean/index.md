# Verification target: GRWTSK.Algebra.GroupTheory.Duality.Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c8578eb351027f80c0e5e5f914a1cb714e68fab",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c8578eb351027f80c0e5e5f914a1cb714e68fab`.

Source path: `GRWTSK/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FiniteAbelian.Duality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [finite](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean/declarations/finite--08c77c496ec9106adc8c87ab.md) | 34 | `declaration-track:08c77c496ec9106adc8c87ab0f8db13ae3266d1e91dd6df5537288c19c66ac76` |
| 2 | `lemma` | [exists_apply_ne_one_iff_exists_monoidHom](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean/declarations/exists-apply-ne-one-iff-exists-monoidhom--897416ce7ffebe7e0b24892f.md) | 47 | `result-track:897416ce7ffebe7e0b24892f7d9acdcde4f9417f7b539b353184bd9c54c40f5e` |
| 3 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity--be058d24b549367ef6ad522c.md) | 61 | `result-track:be058d24b549367ef6ad522cf48dab42809377a6fef2bc5d55e395e500298e38` |
| 4 | `lemma` | [mulEquiv_units](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean/declarations/mulequiv-units--417acd80a64da2dd2a70aa4d.md) | 73 | `result-track:417acd80a64da2dd2a70aa4df5e823b68efc76d5e171a80121d0f05829821a92` |
| 5 | `lemma` | [card_eq_card_units_of_hasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant1b1263c5c7b8b50cf552d5d47f0f7e47b785eb6997ad15a46f00c80d457c8320.lean/declarations/card-eq-card-units-of-hasenoughrootsofunity--d0fab12a424379650addb93e.md) | 80 | `result-track:d0fab12a424379650addb93e4afa201239133ada5d74318f76efd6e7cb75e829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
