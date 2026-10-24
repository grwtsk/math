# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7064ee440548d0beb73764cab09d92a2ece3e6e9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7064ee440548d0beb73764cab09d92a2ece3e6e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/nerve--cb8da4eb5f1b69f485f37c5b.md) | 31 | `declaration-track:cb8da4eb5f1b69f485f37c5b35fc528b4336ebe1ef014c37398a8cf3364b4f26` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/instance--f578908399957963223b8f88.md) | 38 | `declaration-track:f578908399957963223b8f8829727a8a31357267de4a2a16c3dc2ea5b2d5f754` |
| 3 | `def` | [nerveMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/nervemap--4b42e1dcbfe760ffa69772db.md) | 43 | `declaration-track:4b42e1dcbfe760ffa69772db8eb6d832b45f933f851394152d06659a67a040ad` |
| 4 | `def` | [nerveFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/nervefunctor--3fed3e662e052b1f0b1704a9.md) | 48 | `declaration-track:3fed3e662e052b1f0b1704a944dc820b128846922b902a0024d69b97a1d7740d` |
| 5 | `def` | [nerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/nerveequiv--f885f7aaef27356e1e710201.md) | 53 | `declaration-track:f885f7aaef27356e1e7102016498be926854c115d24c982dc8f19641d4bc09a5` |
| 6 | `lemma` | [δ₀_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/eq--d06e4c13aac3cb9dce863fc4.md) | 63 | `result-track:d06e4c13aac3cb9dce863fc43d10c5ae6818559a688a3d192f86eef21fd2c1f1` |
| 7 | `lemma` | [σ₀_mk₀_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/mk-eq--38b9bc24b44ac42c28747082.md) | 65 | `result-track:38b9bc24b44ac42c2874708223869c563046413be1f114089b9ef6bc29afd76a` |
| 8 | `theorem` | [δ₂_mk₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/mk-eq--46c34c95297eb22f4c318e68.md) | 72 | `result-track:46c34c95297eb22f4c318e68185e078ce5b20a173bf648d48160297098b8ce14` |
| 9 | `theorem` | [δ₀_mk₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/mk-eq--03eb95cd1058d61fddee7977.md) | 75 | `result-track:03eb95cd1058d61fddee79776943cafa7144a4738eeb1f0f345e4f014136ff54` |
| 10 | `theorem` | [δ₁_mk₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Varianta7dd40ae50b4dee0dcfd224ba87b82d7886419ef4f7a8682a417d381a3964597.lean/declarations/mk-eq--516db920be7a2e7fb615ea7d.md) | 78 | `result-track:516db920be7a2e7fb615ea7d2eff733e77fb86167572d5ccbb21a09e3bee1985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
