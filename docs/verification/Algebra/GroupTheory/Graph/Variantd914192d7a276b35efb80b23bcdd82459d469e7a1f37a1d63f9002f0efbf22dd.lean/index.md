# Verification target: GRWTSK.Algebra.GroupTheory.Graph.Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37c546cad03aa0817dfb070a26275a4bd658c2bc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37c546cad03aa0817dfb070a26275a4bd658c2bc`.

Source path: `GRWTSK/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/mgraph--a9fd64fa3130e5ec7fd2f3b4.md) | 42 | `declaration-track:a9fd64fa3130e5ec7fd2f3b49944886e63544989ae303e30e3e7080929c850c6` |
| 2 | `lemma` | [mem_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/mem-mgraph--5ae89b76cbf4bc712126bf49.md) | 54 | `result-track:5ae89b76cbf4bc712126bf4977927218b94172621c7e76cf1c42a198fae32808` |
| 3 | `lemma` | [mgraph_eq_mrange_prod](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/mgraph-eq-mrange-prod--b07b992a1aa6772d49da8cc0.md) | 57 | `result-track:b07b992a1aa6772d49da8cc07bc9babd78f25817e48c84a7975134528fea5f00` |
| 4 | `lemma` | [exists_mrange_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/exists-mrange-eq-mgraph--d8b4247936ecbbdbb7b9331d.md) | 72 | `result-track:d8b4247936ecbbdbb7b9331d635bd920861eba06898ecb053fec7ba6bfd55947` |
| 5 | `lemma` | [exists_mulEquiv_mrange_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/exists-mulequiv-mrange-eq-mgraph--d9b9393270cab5e6ee480b36.md) | 98 | `result-track:d9b9393270cab5e6ee480b36c275735d9395d35dbe063ef64920f98dcc49ebef` |
| 6 | `lemma` | [Submonoid.exists_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/submonoid-exists-eq-mgraph--bdcbef5366091c0e9ac157f1.md) | 125 | `result-track:bdcbef5366091c0e9ac157f1513eb623fca09c87c443fcbd65efb4e7e899a0ba` |
| 7 | `lemma` | [Submonoid.exists_mulEquiv_eq_mgraph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/submonoid-exists-mulequiv-eq-mgraph--419973adf8a3679c1087978e.md) | 138 | `result-track:419973adf8a3679c1087978ee8e2f79a661982cc64f2495564b9b969964621f6` |
| 8 | `def` | [graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/graph--ac69c2ec6145c714240f6e26.md) | 158 | `declaration-track:ac69c2ec6145c714240f6e26f51654531eb452ac8b4cf322769dcbdee1f5df2f` |
| 9 | `lemma` | [mem_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/mem-graph--3fbfb524d0a695391afc3d32.md) | 169 | `result-track:3fbfb524d0a695391afc3d32bf414050f5f788721d766d36c687ba2693445a83` |
| 10 | `lemma` | [graph_eq_range_prod](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/graph-eq-range-prod--f7c3194bbfb33c5018a91567.md) | 172 | `result-track:f7c3194bbfb33c5018a9156785590f33f66b22505eb37bca27079513c2162f9d` |
| 11 | `lemma` | [exists_range_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/exists-range-eq-graph--e0ecd153d2cbbc3c5782ddaa.md) | 187 | `result-track:e0ecd153d2cbbc3c5782ddaa6c28cb507de4833b3768a75b4f740faa1a72081d` |
| 12 | `lemma` | [exists_mulEquiv_range_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/exists-mulequiv-range-eq-graph--3cce49f6d442b216626f93a0.md) | 204 | `result-track:3cce49f6d442b216626f93a0147dc30c62a3d50d6ffc45eafacac4cdfd592eed` |
| 13 | `lemma` | [Subgroup.exists_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/subgroup-exists-eq-graph--da4519d405e42ba501dc954e.md) | 220 | `result-track:da4519d405e42ba501dc954e481035a1914dd2542fc0a0a7e656f1b35a11fa30` |
| 14 | `lemma` | [Subgroup.exists_mulEquiv_eq_graph](../../../../../mathematics/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/declarations/subgroup-exists-mulequiv-eq-graph--66d946bc8152c800ed8cdab7.md) | 232 | `result-track:66d946bc8152c800ed8cdab7127378ea0758a4e2a6318f14d4d6a0606127fc00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
