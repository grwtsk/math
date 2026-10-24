# Verification target: GRWTSK.Algebra.GroupTheory.Divisible.Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b21355dee7325cdd74738b52707f1934f364640",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b21355dee7325cdd74738b52707f1934f364640`.

Source path: `GRWTSK/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DivisibleBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/divisibleby--8e3c04b0bd63098944d6deca.md) | 91 | `declaration-track:8e3c04b0bd63098944d6decaff919c604ce0381c75b9d7cd2bb347f7d6e97378` |
| 2 | `class` | [RootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/rootableby--19d846d267dfd57a2aede951.md) | 109 | `declaration-track:19d846d267dfd57a2aede9518c18506423c63441e7f337e50f597ced14ea9542` |
| 3 | `theorem` | [pow_left_surj_of_rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/pow-left-surj-of-rootableby--7d6336dd1a73efa775dd2c73.md) | 116 | `result-track:7d6336dd1a73efa775dd2c73dc90d74623f6648d78dbe12588018922ea9560f9` |
| 4 | `def` | [rootableByOfPowLeftSurj](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/rootablebyofpowleftsurj--89f2619e05e77eda62d0e04d.md) | 129 | `declaration-track:89f2619e05e77eda62d0e04dea15c7be35b780f83d7e1bd4cbea242f69f10a05` |
| 5 | `instance` | [Pi.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/pi-rootableby--ca4b7f969f5f96a39e4d4ecc.md) | 147 | `declaration-track:ca4b7f969f5f96a39e4d4eccc21306ceafff3865c897b887dfc201b61c229136` |
| 6 | `instance` | [Prod.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/prod-rootableby--cf81ed98557478c4f642d63a.md) | 163 | `declaration-track:cf81ed98557478c4f642d63ac20502dc14b0011a08ad41d9c1b38d6ca6674352` |
| 7 | `theorem` | [smul_top_eq_top_of_divisibleBy_int](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/smul-top-eq-top-of-divisibleby-int--0ebfba3453d75b465947751a.md) | 178 | `result-track:0ebfba3453d75b465947751a900bd573ecf0dab4a1c96f92c0fa0868f7376906` |
| 8 | `def` | [divisibleByIntOfSmulTopEqTop](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/divisiblebyintofsmultopeqtop--4c4caafbbe1f641644662994.md) | 185 | `declaration-track:4c4caafbbe1f6416446629943ab3a2c22671fbd80290e65c9a8740bd77941650` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/instance--bb511f4829bb29a8b745a995.md) | 198 | `declaration-track:bb511f4829bb29a8b745a995e12436873ddaaf837a84f61b798c429a8924538d` |
| 10 | `def` | [rootableByIntOfRootableByNat](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/rootablebyintofrootablebynat--7b78c8274754e7e279a8031a.md) | 214 | `declaration-track:7b78c8274754e7e279a8031ae22ae31dc6a2bbe955544069b11bb11b3099203a` |
| 11 | `def` | [rootableByNatOfRootableByInt](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/rootablebynatofrootablebyint--971323aaa78fda66c1c73431.md) | 237 | `declaration-track:971323aaa78fda66c1c73431d10259117996f237bf7b54e91f0841732ef1b249` |
| 12 | `def` | [Function.Surjective.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/function-surjective-rootableby--91af0227fe6019252085b790.md) | 263 | `declaration-track:91af0227fe6019252085b79072462cf76e583b0baf759932603c403299cb058d` |
| 13 | `theorem` | [RootableBy.surjective_pow](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/rootableby-surjective-pow--fbe2c164e651f332fe174e7a.md) | 273 | `result-track:fbe2c164e651f332fe174e7a5cf947dcde1650eedbcbbe94304eee8ed7f86f27` |
| 14 | `instance` | [QuotientGroup.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantbddb67d4fee4b51950e0dcd6f1beb61e2c1285aa77ee2267f90e0d82ac259acb.lean/declarations/quotientgroup-rootableby--0f24a4807c6e468ceec71ed1.md) | 287 | `declaration-track:0f24a4807c6e468ceec71ed1f197f8739baedf26cb05bca170869613bd67dafb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
