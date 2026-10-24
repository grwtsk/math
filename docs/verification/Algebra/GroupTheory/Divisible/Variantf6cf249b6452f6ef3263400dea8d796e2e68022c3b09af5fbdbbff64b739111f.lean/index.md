# Verification target: GRWTSK.Algebra.GroupTheory.Divisible.Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f05003836cf393e33cddc22c16888b53429e1d76",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f05003836cf393e33cddc22c16888b53429e1d76`.

Source path: `GRWTSK/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DivisibleBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/divisibleby--9018358f79613627ac433160.md) | 89 | `declaration-track:9018358f79613627ac43316060937994dff63260eb1e113766de810dfd96c8f7` |
| 2 | `class` | [RootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/rootableby--e6760becf499b198bbbcfaf3.md) | 107 | `declaration-track:e6760becf499b198bbbcfaf3d12b0ba493385a534fe52604ec930183a7aaf370` |
| 3 | `theorem` | [RootableBy.surjective_pow](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/rootableby-surjective-pow--412a0744087059049ad92d72.md) | 114 | `result-track:412a0744087059049ad92d72d7260c77ec49aef73ed03c3fab90b1725a83fc73` |
| 4 | `def` | [rootableByOfPowLeftSurj](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/rootablebyofpowleftsurj--4d029c125dff6fe29716691c.md) | 131 | `declaration-track:4d029c125dff6fe29716691c71ee7047f518ca637b351f8ae88053430cd2cb59` |
| 5 | `instance` | [Pi.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/pi-rootableby--d7ad76b8207907503e70e846.md) | 146 | `declaration-track:d7ad76b8207907503e70e846b5d739ca24e563719c0683ff1ce03907bc845a89` |
| 6 | `instance` | [Prod.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/prod-rootableby--bda10d211d775e68e1364a4d.md) | 159 | `declaration-track:bda10d211d775e68e1364a4d7a3894a513e2dedbb71193ab3e9d2a25ec9b2289` |
| 7 | `instance` | [ULift.instRootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/ulift-instrootableby--7a659135688811e605ed4bb0.md) | 169 | `declaration-track:7a659135688811e605ed4bb0541f61e420121d4990282d67a3cc3c505d9d28f9` |
| 8 | `theorem` | [smul_top_eq_top_of_divisibleBy_int](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/smul-top-eq-top-of-divisibleby-int--98be4501f02b52c710a96613.md) | 182 | `result-track:98be4501f02b52c710a9661396ad0b1acb4da5993c7509cfe3800223ad7d5bcb` |
| 9 | `def` | [divisibleByIntOfSMulTopEqTop](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/divisiblebyintofsmultopeqtop--8e4ea568f5a61442900f70a4.md) | 189 | `declaration-track:8e4ea568f5a61442900f70a4aed547d98b0be2a47fc48448d95249a8f06cfd27` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/instance--8c55efb993445979ba3f758d.md) | 201 | `declaration-track:8c55efb993445979ba3f758da9c06e6472a92adb986f7ae45d4209536b338076` |
| 11 | `def` | [rootableByIntOfRootableByNat](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/rootablebyintofrootablebynat--93625a9f317173ca1b5e1ef5.md) | 217 | `declaration-track:93625a9f317173ca1b5e1ef52a74794b139ae8043987023c0575f30ee9bc1459` |
| 12 | `def` | [rootableByNatOfRootableByInt](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/rootablebynatofrootablebyint--0f1124832aa5ca1dbbed0c71.md) | 233 | `declaration-track:0f1124832aa5ca1dbbed0c717f19a646b256b8cacf178d8b9b3ace6128c13971` |
| 13 | `def` | [Function.Surjective.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/function-surjective-rootableby--d323843401a9d90022d6ad2d.md) | 254 | `declaration-track:d323843401a9d90022d6ad2de5597ed24a6997a77fc6660633f4f5e5e99bf970` |
| 14 | `instance` | [QuotientGroup.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variantf6cf249b6452f6ef3263400dea8d796e2e68022c3b09af5fbdbbff64b739111f.lean/declarations/quotientgroup-rootableby--7c478f2a41c2f971b0a23e8f.md) | 269 | `declaration-track:7c478f2a41c2f971b0a23e8f6f5e7b231b2511e7148b41480a3489915425d966` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
