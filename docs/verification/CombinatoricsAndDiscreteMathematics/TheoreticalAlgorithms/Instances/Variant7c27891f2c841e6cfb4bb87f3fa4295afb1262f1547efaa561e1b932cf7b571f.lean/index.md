# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Instances.Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db1e33b98cc5e21a7292032e62153c6cf8f9dc49",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db1e33b98cc5e21a7292032e62153c6cf8f9dc49`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Applicative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Forall2` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Functor` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Option.id_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/option-id-traverse--c78a139f9de5ae5861ddf693.md) | 41 | `result-track:c78a139f9de5ae5861ddf69390fab432f9370611fa0958192c4949279c617335` |
| 2 | `theorem` | [Option.comp_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/option-comp-traverse--a7082bf41080ecd3d0e721a6.md) | 45 | `result-track:a7082bf41080ecd3d0e721a6171c75ccae4eeccd92205f61a470b10384f0f1d9` |
| 3 | `theorem` | [Option.traverse_eq_map_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/option-traverse-eq-map-id--dafea07586889c6eded9ebe9.md) | 51 | `result-track:dafea07586889c6eded9ebe97d16122a26fb21ac00c74ad4df41f038c4bbb48c` |
| 4 | `theorem` | [Option.naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/option-naturality--6928851c5d888e8d63006259.md) | 57 | `result-track:6928851c5d888e8d630062599fe830f7b4bbb89bd60c10a0588793bdd233b7e9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/instance--3854190dba7724c08721a2dd.md) | 66 | `declaration-track:3854190dba7724c08721a2dd2d4b9e10e0cf514f7f52dd29c1246ae357096c5b` |
| 6 | `theorem` | [id_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/id-traverse--d3a715a1ad153c3538798c34.md) | 85 | `result-track:d3a715a1ad153c3538798c34550d901e47e8bffe9415798029ac4b49f1d5d73b` |
| 7 | `theorem` | [comp_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/comp-traverse--91d9f91696381187e7cf0a1c.md) | 89 | `result-track:91d9f91696381187e7cf0a1ca969fae976e106bc1276c7e71b0c7b339de7e014` |
| 8 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/traverse-eq-map-id--a7ff5e064cff0db3f45060a6.md) | 94 | `result-track:a7ff5e064cff0db3f45060a68c4a6b33ab72695793ee38d824e01ade48b381b1` |
| 9 | `theorem` | [naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/naturality--2e43d23a560ccd2613c37139.md) | 101 | `result-track:2e43d23a560ccd2613c371390788ca64c2dd83cda6783dbe7546514508ba6d31` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/instance--3f634f94289de7b1149275c2.md) | 108 | `declaration-track:3f634f94289de7b1149275c25c163b26769d8f59567255f9a3ff988c34236367` |
| 11 | `theorem` | [traverse_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/traverse-nil--5af45900ab5d2aff204a3b7c.md) | 122 | `result-track:5af45900ab5d2aff204a3b7c46fac37c54455704c943715567cbcee27be5eb3a` |
| 12 | `theorem` | [traverse_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/traverse-cons--a095bda14c7772cbb14ba26a.md) | 127 | `result-track:a095bda14c7772cbb14ba26a9ebce24733b4ac8fb636e38bb4791da6ef2c79fc` |
| 13 | `theorem` | [traverse_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/traverse-append--c18d0e4ab01256910794736f.md) | 135 | `result-track:c18d0e4ab01256910794736feb178c4558fd01457e37aebf5fc6bbf2df1910f6` |
| 14 | `theorem` | [mem_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/mem-traverse--d0ebcf364b3cbafa85e4e946.md) | 141 | `result-track:d0ebcf364b3cbafa85e4e94697258a4a26e0005d077cdddba6b797084fc0d5d8` |
| 15 | `theorem` | [traverse_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/traverse-map--beb6409d865651ba72f79b91.md) | 165 | `result-track:beb6409d865651ba72f79b919a49a195ad7321c5d89c968442e531c8a208c124` |
| 16 | `theorem` | [id_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/id-traverse--6c810d5bf8d892e3a4654792.md) | 172 | `result-track:6c810d5bf8d892e3a465479261d1c3329060b7e9ad1e2a9b419e35046f28ac45` |
| 17 | `theorem` | [comp_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/comp-traverse--fec2a01d4421d98071ee8a4e.md) | 176 | `result-track:fec2a01d4421d98071ee8a4e7c17b6d505b571f16b74b39dbc426025001e5167` |
| 18 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/traverse-eq-map-id--bcb343925516058f29eb8c2c.md) | 182 | `result-track:bcb343925516058f29eb8c2cf05c08b9f0eb665ca0a8f0b69eb9e6091a8cc6f2` |
| 19 | `theorem` | [map_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/map-traverse--ed7a97ae521ab460a42fbe71.md) | 187 | `result-track:ed7a97ae521ab460a42fbe7196048c3f94dc55e8777c61c05cc1dcad6f6284ee` |
| 20 | `theorem` | [naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/naturality--f5eb3be661abe944c25d93d2.md) | 194 | `result-track:f5eb3be661abe944c25d93d21a675e1057e1526737b849d747599d23ae5e17f7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant7c27891f2c841e6cfb4bb87f3fa4295afb1262f1547efaa561e1b932cf7b571f.lean/declarations/instance--fcddb2d3d21d141c944cda61.md) | 203 | `declaration-track:fcddb2d3d21d141c944cda61734cf6772dfbe652f50e2a2bec981f74bda30843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
