# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "223619b775a51beb9860b7336f688999f89f31d0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `223619b775a51beb9860b7336f688999f89f31d0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/countp-join--b6e8e213a034f31c4e50f323.md) | 55 | `result-track:b6e8e213a034f31c4e50f32341758c50adac3e822d2880e6e09f82754f3f9baf` |
| 2 | `theorem` | [length_filter_lt_length_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/length-filter-lt-length-iff-exists--ba2cf3e818ec7349caa6ab0f.md) | 66 | `result-track:ba2cf3e818ec7349caa6ab0fb5f875b57de8faef9567ec07cc648e388c08060f` |
| 3 | `theorem` | [count_cons'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/count-cons--41894aea108ec16f4cff0dd5.md) | 96 | `result-track:41894aea108ec16f4cff0dd576ad6918891544aa03212fcf992f615d2d5ce2a1` |
| 4 | `theorem` | [count_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/count-join--6b9b96e9d9f32eaf2b12223a.md) | 123 | `result-track:6b9b96e9d9f32eaf2b12223a44eb57bef21f3af3027a8629d0bdf03f3b9b41fe` |
| 5 | `theorem` | [count_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/count-bind--7ef245cad0a82f9f18e29425.md) | 155 | `result-track:7ef245cad0a82f9f18e2942576df21fda7ac7b190b195cbad8076b6fb39f3dcf` |
| 6 | `theorem` | [count_map_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/count-map-of-injective--195c1544f996c4509e107f84.md) | 160 | `result-track:195c1544f996c4509e107f843e72d113ae48f352c7b5d7331334be9e48b665ba` |
| 7 | `theorem` | [prod_map_eq_pow_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/prod-map-eq-pow-single--50bb2eb1eb28707a22386f48.md) | 174 | `result-track:50bb2eb1eb28707a22386f4849d035e7556a5e448b44d8bca864ee1cce3287a1` |
| 8 | `theorem` | [prod_eq_pow_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantad96d4dc981c024278391a3f66c42e9f9b69cda8fac729b0a70ebbd54824d02a.lean/declarations/prod-eq-pow-single--a218f9861afbeaa1854cf705.md) | 187 | `result-track:a218f9861afbeaa1854cf7053224ce2bc90b74609c05b2d8f32137035a670d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
