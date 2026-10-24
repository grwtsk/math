# Verification target: GRWTSK.Algebra.GroupTheory.Order.Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f963340a2d93320d5a7cf9c4e41748f06aba90d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f963340a2d93320d5a7cf9c4e41748f06aba90d`.

Source path: `GRWTSK/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [le](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/le--1141acba87bdd8e197be3112.md) | 26 | `declaration-track:1141acba87bdd8e197be31120215570f8f36f781fac2b65d9232fd7f7bbb75cb` |
| 2 | `instance` | [lt](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/lt--e2a3c8e45ba042a2d8f98e1f.md) | 39 | `declaration-track:e2a3c8e45ba042a2d8f98e1fa019644f8a0714c27c4e3bb67fba4832414bc64d` |
| 3 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/mk-le-mk--2e0bacf42d0e1dcdea92cdbe.md) | 52 | `result-track:2e0bacf42d0e1dcdea92cdbeb0edca49aef71840bc1ca08f75adf3a869fd1423` |
| 4 | `theorem` | [mk_lt_mk](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/mk-lt-mk--7d88740d72465a8cf23e8c27.md) | 56 | `result-track:7d88740d72465a8cf23e8c27d2c636fe554a9286b36c47fac28bf780da5ac6fe` |
| 5 | `instance` | [partialOrder](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/partialorder--af7084bd4794c296aa95644b.md) | 61 | `declaration-track:af7084bd4794c296aa95644bf1a022eac4ced81d27b190a569dbbd4ee2ebe772` |
| 6 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/isorderedcancelmonoid--1bacdf1b2f10371571ac94c7.md) | 83 | `declaration-track:1bacdf1b2f10371571ac94c7d3e463a4566638cd8827ba131bdfbe5f6b6e5535` |
| 7 | `instance` | [decidableLE](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/decidablele--6828c49e4a37b977281c18c5.md) | 95 | `declaration-track:6828c49e4a37b977281c18c59c368d41805851cf11edb18daa0ab78378ce5cd2` |
| 8 | `instance` | [decidableLT](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/decidablelt--524c73dff13e36d4780a6300.md) | 99 | `declaration-track:524c73dff13e36d4780a6300c7ade0acb58a32279305c2a913783403de560c2c` |
| 9 | `def` | [mkOrderEmbedding](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/mkorderembedding--973c69d0649919d900b107c5.md) | 105 | `declaration-track:973c69d0649919d900b107c58844d1da826612a2bdf4c8ea7294c4719c50ee50` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/declarations/instance--3ab928fa46ce1f79a93da086.md) | 113 | `declaration-track:3ab928fa46ce1f79a93da08618f86c1165f0fe6d211e504d4dcbe765b3d1365c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
