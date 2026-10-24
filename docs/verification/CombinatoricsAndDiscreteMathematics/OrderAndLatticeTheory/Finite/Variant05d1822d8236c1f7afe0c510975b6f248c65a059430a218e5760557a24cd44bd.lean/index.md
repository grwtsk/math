# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Finite.Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d9aaa219a181404cb44d8c4f4aa1067fed5b8ff",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d9aaa219a181404cb44d8c4f4aa1067fed5b8ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/instance--ea58a1a0eb2f8a1dba134e08.md) | 41 | `declaration-track:ea58a1a0eb2f8a1dba134e0854b69c5811508e74f71e92e8f97b438bbf9f6afe` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/instance--a83ea0e576ee9e0164401a5b.md) | 46 | `declaration-track:a83ea0e576ee9e0164401a5be405912bdcc76c9f7f03d28bf70b1a57e61aad8c` |
| 3 | `theorem` | [univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/univ--c26bfada6513d5cb7b1a86c5.md) | 56 | `result-track:c26bfada6513d5cb7b1a86c5be257cd6b91699632db0ef93125f8b5ef75e7c48` |
| 4 | `theorem` | [card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/card--f678efef639ea866605503f1.md) | 62 | `result-track:f678efef639ea866605503f1ec9b96cce069cdee07cae273c3fcd2b38e7c2b57` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/instance--862683eb5a41ad6f0a4b61e5.md) | 71 | `declaration-track:862683eb5a41ad6f0a4b61e50b95130a949375debc7af52c287e3c29e1a881fe` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/instance--4d876968092e21d4da91d86e.md) | 84 | `declaration-track:4d876968092e21d4da91d86e05a1454778fcd6ff28203d61645a4111098b80c7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/instance--865efd7cb932593f9b9b5504.md) | 94 | `declaration-track:865efd7cb932593f9b9b55045a0088a7d8e9ee24814fd00796de72a97ebeebb5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/instance--6909f328da31d28c2d67416d.md) | 104 | `declaration-track:6909f328da31d28c2d67416d027c5e4e51793ade346f1aa4778d230828d9661b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/instance--2ec9bf0298417b7a7582a403.md) | 111 | `declaration-track:2ec9bf0298417b7a7582a403746a5e384aca3343b66c99f54a4245b676b127ed` |
| 10 | `theorem` | [exists_covby_infinite_Ici_of_infinite_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/exists-covby-infinite-ici-of-infinite-ici--8e4886a2d17f75932da75d2b.md) | 120 | `result-track:8e4886a2d17f75932da75d2bc222e012dfada42e77e22ba590fd8526f1a04742` |
| 11 | `theorem` | [exists_covby_infinite_Iic_of_infinite_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finite/Variant05d1822d8236c1f7afe0c510975b6f248c65a059430a218e5760557a24cd44bd.lean/declarations/exists-covby-infinite-iic-of-infinite-iic--fafa531a0e885a33dd268261.md) | 129 | `result-track:fafa531a0e885a33dd2682610cc4cb23eaa6dd0f14ae30c03f276df20c1d5342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
