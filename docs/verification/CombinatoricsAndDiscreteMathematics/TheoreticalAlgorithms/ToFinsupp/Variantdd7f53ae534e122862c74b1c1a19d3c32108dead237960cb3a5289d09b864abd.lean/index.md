# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFinsupp.Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93cde8d9a91af84a3788684d81aa303b68c4b555",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93cde8d9a91af84a3788684d81aa303b68c4b555`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Embedding` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.GetD` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp--4fda3be599fa4da2c58ba7fc.md) | 47 | `declaration-track:4fda3be599fa4da2c58ba7fcde062a08135312dcd05ffeb7bd61f9dd20352474` |
| 2 | `theorem` | [coe_toFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/coe-tofinsupp--ef7b4d8794f037f9b450df10.md) | 56 | `result-track:ef7b4d8794f037f9b450df10991f39ebc7651c1ae30d4a8eca7cd67e1270f8da` |
| 3 | `theorem` | [toFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-apply--10ed23a81741fea39e5ac467.md) | 60 | `result-track:10ed23a81741fea39e5ac4671387a6643ff68bc7c68480b52b0be609080a0993` |
| 4 | `theorem` | [toFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-support--2b8da344fc2ebc8ba2fda60b.md) | 63 | `result-track:2b8da344fc2ebc8ba2fda60bf8656e00e1f1f70c2fc932490dd4a59a863194f6` |
| 5 | `theorem` | [toFinsupp_apply_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-apply-lt--197fb61f23b3cb26213e7081.md) | 67 | `result-track:197fb61f23b3cb26213e7081e442a4e2c0aaa448d5f9e6df36462bd4a66b031c` |
| 6 | `theorem` | [toFinsupp_apply_fin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-apply-fin--90fdc4bd7a9b2f5293bc892b.md) | 70 | `result-track:90fdc4bd7a9b2f5293bc892bfc7008c46b0cf265dd9cbd5297ca2f971dfa0380` |
| 7 | `theorem` | [toFinsupp_apply_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-apply-le--10d2efa2da37283df8b61927.md) | 73 | `result-track:10d2efa2da37283df8b619273fa0cfd7963f2154ae4f04e9d1ecae071f1d6dbc` |
| 8 | `theorem` | [toFinsupp_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-nil--2fee7c1f95698fcece46efef.md) | 77 | `result-track:2fee7c1f95698fcece46efef7cbcd2124b98169a4cf1dc920d3c14d501c0d7ca` |
| 9 | `theorem` | [toFinsupp_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-singleton--f4f83d05e4a741e035f0ddcf.md) | 82 | `result-track:f4f83d05e4a741e035f0ddcf3535552bdff94ad682f3c4374c715e1dbf931801` |
| 10 | `theorem` | [toFinsupp_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-append--c34077f0a1349339ab31fdc5.md) | 86 | `result-track:c34077f0a1349339ab31fdc533c2968266e4d7727afb020595b239f003bfee25` |
| 11 | `theorem` | [toFinsupp_cons_eq_single_add_embDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-cons-eq-single-add-embdomain--2f2476c9a0ad0b325f829572.md) | 103 | `result-track:2f2476c9a0ad0b325f829572933fe9618b98babe693f37326737164a6a181372` |
| 12 | `theorem` | [toFinsupp_concat_eq_toFinsupp_add_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-concat-eq-tofinsupp-add-single--8f4ff79de97affd8bb9fc22e.md) | 113 | `result-track:8f4ff79de97affd8bb9fc22e4f4e7928318c7feb1834d73f4c38bfb4eb43441b` |
| 13 | `theorem` | [toFinsupp_eq_sum_mapIdx_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToFinsupp/Variantdd7f53ae534e122862c74b1c1a19d3c32108dead237960cb3a5289d09b864abd.lean/declarations/tofinsupp-eq-sum-mapidx-single--407f83219179ad9f0dadae8d.md) | 120 | `result-track:407f83219179ad9f0dadae8d2067835e87f34d89d4d92b097961d6e3301006ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
