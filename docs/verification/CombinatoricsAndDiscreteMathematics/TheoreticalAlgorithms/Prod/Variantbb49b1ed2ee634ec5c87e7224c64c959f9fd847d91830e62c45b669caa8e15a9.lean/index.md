# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prod.Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b59ccd407ab5ea7bc34ab100398728bf92d6878a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b59ccd407ab5ea7bc34ab100398728bf92d6878a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_eq_zero_iff_exists_zero_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/declarations/prod-eq-zero-iff-exists-zero-nat--7fdc4344cda70fb0d95761e5.md) | 21 | `result-track:7fdc4344cda70fb0d95761e5cca86738e0cedb93ef1cd586a5899eac8d6ff007` |
| 2 | `theorem` | [prod_pos_iff_forall_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/declarations/prod-pos-iff-forall-pos-nat--775054228a532c5a382742b7.md) | 27 | `result-track:775054228a532c5a382742b77ba90645a5a22088cc982435b942db011295f7ad` |
| 3 | `theorem` | [prod_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/declarations/prod-replicate-nat--4e7947f27daeb03d54889366.md) | 38 | `result-track:4e7947f27daeb03d5488936646eddc2f8094bf47a1f45d08ce9177d55f605b3c` |
| 4 | `theorem` | [prod_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/declarations/prod-append-nat--0045236d769a7fdb47bde6ab.md) | 41 | `result-track:0045236d769a7fdb47bde6ab4251a0c188f1127fe681d59df807f85c60a7e32d` |
| 5 | `theorem` | [prod_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/declarations/prod-reverse-nat--0066e39fe8ff39be3cf41c1d.md) | 44 | `result-track:0066e39fe8ff39be3cf41c1d5559df668e19c6d40692aab3ec2f30bed9652033` |
| 6 | `theorem` | [prod_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean/declarations/prod-eq-foldl-nat--d11615e157c45ccda0b4e38f.md) | 47 | `result-track:d11615e157c45ccda0b4e38f77a76ecec21692db0b8070242a3bcc89a2d3ca28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
