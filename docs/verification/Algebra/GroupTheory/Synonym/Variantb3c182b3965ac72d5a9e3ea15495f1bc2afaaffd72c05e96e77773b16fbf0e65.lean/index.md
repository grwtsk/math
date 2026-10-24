# Verification target: GRWTSK.Algebra.GroupTheory.Synonym.Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c948e968c2b3db662483531edc1e2430b8f9ae0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c948e968c2b3db662483531edc1e2430b8f9ae0`.

Source path: `GRWTSK/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Synonym` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instmulaction--6d22d73419d5344c1fdaafe0.md) | 25 | `declaration-track:6d22d73419d5344c1fdaafe0fd7ee8403a62e96228664c48e2b91b581d76bc28` |
| 2 | `instance` | [instMulAction'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instmulaction--52778245e21477f0f96026e8.md) | 28 | `declaration-track:52778245e21477f0f96026e8d4b4f36985987aa510f1e78abf110520e19a92b9` |
| 3 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instsmulcommclass--cbcf8c6d9eb7ceffa28bbb21.md) | 31 | `declaration-track:cbcf8c6d9eb7ceffa28bbb21112bdefe604ec06556e23674f1de746bd623d113` |
| 4 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instsmulcommclass--732b47ef70932fe2923049b2.md) | 35 | `declaration-track:732b47ef70932fe2923049b23eba57b987d5c583d4b4c86de798dd13e393f013` |
| 5 | `instance` | [instSMulCommClass''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instsmulcommclass--3613f629542edb8c3aebeee9.md) | 39 | `declaration-track:3613f629542edb8c3aebeee961ee9a2a1542f56aa1a45174c8c0580140b82b58` |
| 6 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instisscalartower--5c0a520f7c5cb99aea33f572.md) | 43 | `declaration-track:5c0a520f7c5cb99aea33f5727bedc23399cc8bc676797a17753c9674b6793f48` |
| 7 | `instance` | [instIsScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instisscalartower--6c354a9f8c20feb17cf3cfed.md) | 47 | `declaration-track:6c354a9f8c20feb17cf3cfed9bdc9731a199ecaf1205d35abf77045c7bdf103b` |
| 8 | `instance` | [instIsScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instisscalartower--c3f64c0e38b2efd8d50d46e4.md) | 51 | `declaration-track:c3f64c0e38b2efd8d50d46e4a1f6df33f08365e35354a40bb63a8fa35a673faa` |
| 9 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instmulaction--59941d0ef6eb810844081d4a.md) | 59 | `declaration-track:59941d0ef6eb810844081d4a7d9f6e3c178e5466f15f18307dc699335840dd93` |
| 10 | `instance` | [instMulAction'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instmulaction--4112120e3178e2576868fbad.md) | 62 | `declaration-track:4112120e3178e2576868fbad09ebed6b271acb4ecc95e15666856424d819de2f` |
| 11 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instsmulcommclass--0aad093424ea30d05c079525.md) | 65 | `declaration-track:0aad093424ea30d05c079525f2491c2cb89665710093ec75852431a57e0e15d3` |
| 12 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instsmulcommclass--a5481cc0d96c37fdc4bbecac.md) | 69 | `declaration-track:a5481cc0d96c37fdc4bbecac428a4f45059fe1efbf47ac0e535134f41d071c8d` |
| 13 | `instance` | [instSMulCommClass''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instsmulcommclass--1828dd33c24c9b5e2a037860.md) | 73 | `declaration-track:1828dd33c24c9b5e2a03786062f0dd6f927e58b2729d4a9c0152a33af4619260` |
| 14 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instisscalartower--6fe026ecec75e9552fe6735e.md) | 77 | `declaration-track:6fe026ecec75e9552fe6735e2835272a002c38e9dba40b31d9b8679548dee599` |
| 15 | `instance` | [instIsScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instisscalartower--3d8946c6b5cd2a52ee6775cc.md) | 81 | `declaration-track:3d8946c6b5cd2a52ee6775cc5d4cff1be0e61e3d56c120ab9b13e9511d5456cd` |
| 16 | `instance` | [instIsScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/declarations/instisscalartower--5f7911ac31c52fa30f949d05.md) | 85 | `declaration-track:5f7911ac31c52fa30f949d05160f8a73c6ed4f639ae594e22683d5c39e69223c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
