# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "797f06f5730b86ddebc5aa0b4c7575dad9bf24b8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `797f06f5730b86ddebc5aa0b4c7575dad9bf24b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Prod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.LinearOrder` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nontrivial_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/nontrivial-of-lt--2ab5f11216e647c0049d4351.md) | 22 | `result-track:2ab5f11216e647c0049d4351e6c18dbf6237470cc149b282c459c3c6af34dfe8` |
| 2 | `theorem` | [exists_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/exists-pair-lt--7b1ec945e6f625b44cbff126.md) | 25 | `result-track:7b1ec945e6f625b44cbff126a42acc42c19c6c83d0b6ca5c53d9fcfca3665f20` |
| 3 | `theorem` | [nontrivial_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/nontrivial-iff-lt--d31f58364213ffdfcfc467a6.md) | 29 | `result-track:d31f58364213ffdfcfc467a613c7ba0d1ae4126de5c250601fe519c6207adb8b` |
| 4 | `theorem` | [Subtype.nontrivial_iff_exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/subtype-nontrivial-iff-exists-ne--b28a4af0b91c7f63adca6d59.md) | 32 | `result-track:b28a4af0b91c7f63adca6d59c428f62880e2f80b71fa5cbcd7948e6078f8d48c` |
| 5 | `def` | [nontrivialPSumUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/nontrivialpsumunique--28a43b98759016dc43c94294.md) | 38 | `declaration-track:28a43b98759016dc43c94294365794214319461d8ecf068775fe3aecd8061a87` |
| 6 | `instance` | [Option.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/option-nontrivial--4b5d99f7711cc7811c62acaf.md) | 48 | `declaration-track:4b5d99f7711cc7811c62acaf90b241af9f76cc3f1dffe156558a710a09944055` |
| 7 | `theorem` | [Function.Injective.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/function-injective-nontrivial--790e29d5244a15ebac086543.md) | 53 | `result-track:790e29d5244a15ebac086543f1119d37f2efc8df402e316126502fed300306b7` |
| 8 | `theorem` | [Function.Injective.exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/function-injective-exists-ne--7937e31bba9f8582c2900bf2.md) | 60 | `result-track:7937e31bba9f8582c2900bf2dcb8291d6b0fcb03dde3234db8544f52bea485e4` |
| 9 | `instance` | [nontrivial_prod_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/nontrivial-prod-right--5ab67aa73493fbb8ed0ff8e6.md) | 67 | `declaration-track:5ab67aa73493fbb8ed0ff8e6c58855ace5a7eef08038321bf77d856b97955177` |
| 10 | `instance` | [nontrivial_prod_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/nontrivial-prod-left--8299e8293ffde1a2ace1972c.md) | 70 | `declaration-track:8299e8293ffde1a2ace1972ceecf5db447a71cac0a561d6aa05dcb0a042bde19` |
| 11 | `theorem` | [nontrivial_at](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/nontrivial-at--1dc12e5291cd54912d05319e.md) | 79 | `result-track:1dc12e5291cd54912d05319ef48948cd4d948cf9b86946d6bb8ce9630a5d61b2` |
| 12 | `instance` | [nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/nontrivial--ab744fe893aaa520c175fadb.md) | 88 | `declaration-track:ab744fe893aaa520c175fadb0a73277fd65d16ede91b0eda09ec37b4435e6ed4` |
| 13 | `instance` | [Function.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/function-nontrivial--e827cf0343a6dac8e96f6d3d.md) | 94 | `declaration-track:e827cf0343a6dac8e96f6d3d06638e4b654915af1d56ab4dedd81694fc361a3e` |
| 14 | `theorem` | [Subsingleton.le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant90c8dc520a4bac9d44935f555ceeb0c466055db865468db3e0111f9296a63e2d.lean/declarations/subsingleton-le--6ec1ba41c78aaf792e9d7268.md) | 98 | `result-track:6ec1ba41c78aaf792e9d72687a95da139c3e1613e3c8d12d86f76728deccc473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
