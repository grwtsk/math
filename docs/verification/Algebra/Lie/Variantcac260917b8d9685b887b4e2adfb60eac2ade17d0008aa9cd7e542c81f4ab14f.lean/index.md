# Verification target: GRWTSK.Algebra.Lie.Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe2ba80d32f9797da5146f94b72175ee18deca0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe2ba80d32f9797da5146f94b72175ee18deca0`.

Source path: `GRWTSK/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean/declarations/instance--1c5bee21cc916b43fd83d585.md) | 37 | `declaration-track:1c5bee21cc916b43fd83d5851975532bb76f8eb8e7d446fab102c4e034bfd227` |
| 2 | `theorem` | [commutator_coe_linear_map](../../../../mathematics/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean/declarations/commutator-coe-linear-map--4c2929167e581cada7666f0f.md) | 45 | `result-track:4c2929167e581cada7666f0f432fa4c20ab831dbf1e7b0c5ab3474ea947d6627` |
| 3 | `theorem` | [commutator_apply](../../../../mathematics/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean/declarations/commutator-apply--3c20be230fac1fcdbbd442ae.md) | 48 | `result-track:3c20be230fac1fcdbbd442ae5809dbcc7b62371b4ec4ca2b4176b0055b567ecb` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean/declarations/instance--e5bcd01351c501a2dbade79c.md) | 51 | `declaration-track:e5bcd01351c501a2dbade79c17206887ed455e2a6ede36197211d0e49bd43563` |
| 5 | `instance` | [instLieAlgebra](../../../../mathematics/Algebra/Lie/Variantcac260917b8d9685b887b4e2adfb60eac2ade17d0008aa9cd7e542c81f4ab14f.lean/declarations/instliealgebra--43c71b0530fb47fbbba863d5.md) | 57 | `declaration-track:43c71b0530fb47fbbba863d5857169330c0c506126fffad3a1c96c262819e5e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
