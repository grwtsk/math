# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckTopology.Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9621a94b9bdce849bacbb55c1e4156665d0f308e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9621a94b9bdce849bacbb55c1e4156665d0f308e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ResearchTopos.StableSphereSite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SiteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean/declarations/sitecategory--0a1eddae945acb034d8975b0.md) | 26 | `declaration-track:0a1eddae945acb034d8975b0a51b174df5310319695947b465d54da5ff340d01` |
| 2 | `structure` | [Cover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean/declarations/cover--9fa10f4b9915e23aea34f82e.md) | 32 | `declaration-track:9fa10f4b9915e23aea34f82e3bb2ab48ab50d97cdd904b7fab63e639fd8bf59c` |
| 3 | `structure` | [GrothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean/declarations/grothendiecktopology--1a45121d274eed1dfe4e9c2b.md) | 39 | `declaration-track:1a45121d274eed1dfe4e9c2bc18004ac865da91fcd3e8cae7aeacd959a842b9b` |
| 4 | `structure` | [StableSphereSite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean/declarations/stablespheresite--d6868f936a2aa0a0feea27a5.md) | 47 | `declaration-track:d6868f936a2aa0a0feea27a5fee2dd3ee489c3fb9d5d6c93c3bb4506a39ab94a` |
| 5 | `theorem` | [grothendieck_identity_cover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckTopology/Variant04bcf1b75901ab7240bbb4eb34c19e6554debe334fc59ec430686e625de81e7b.lean/declarations/grothendieck-identity-cover--781e83d9db8ff287a6ab794b.md) | 52 | `result-track:781e83d9db8ff287a6ab794bf7a4efbeb703a138ee09a0c3dffeef7a1ec75e49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
