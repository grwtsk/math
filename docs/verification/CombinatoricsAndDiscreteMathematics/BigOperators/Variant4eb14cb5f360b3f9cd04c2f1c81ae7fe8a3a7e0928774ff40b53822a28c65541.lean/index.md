# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e341dc41e93dcfc2bbc04b439d79f81dfe9c32b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e341dc41e93dcfc2bbc04b439d79f81dfe9c32b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [monotone_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/monotone-factorial--27536c16924d3f1236bd3ed1.md) | 39 | `result-track:27536c16924d3f1236bd3ed1aefd2d72ffe5205e83f893dd7d74d7a6af973806` |
| 2 | `theorem` | [prod_factorial_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/prod-factorial-pos--b7861ef02615c1ab30e367f2.md) | 43 | `result-track:b7861ef02615c1ab30e367f2314d039c817693b81e41385fd1f0d489fe6b5bac` |
| 3 | `theorem` | [prod_factorial_dvd_factorial_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/prod-factorial-dvd-factorial-sum--05a4454f5d9fdb7aad41962d.md) | 45 | `result-track:05a4454f5d9fdb7aad41962d09568e457f3b3790adddd432813cf186c768030c` |
| 4 | `theorem` | [factorial_eq_prod_range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/factorial-eq-prod-range-add-one--996d09bfc202191bb8c62c73.md) | 52 | `result-track:996d09bfc202191bb8c62c73ae131ca5b51346296daef6365fd2062e7c724af6` |
| 5 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.Finset.prod_range_add_one_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-monotonefactorial-varian--ddc49eed630ea6ca932e8f9b.md) | 57 | `result-track:ddc49eed630ea6ca932e8f9b58a97e041fc2b039cbb761c2a2d0e60eb41832c0` |
| 6 | `theorem` | [ascFactorial_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/ascfactorial-eq-prod-range--380111fbdf11910eb4410901.md) | 60 | `result-track:380111fbdf11910eb44109012ffba5583cfd774fb2efb833e6bb020204ee4cc7` |
| 7 | `lemma` | [Prime.dvd_ascFactorial_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/prime-dvd-ascfactorial-iff--48091a6d1b889110b97ccc5c.md) | 64 | `result-track:48091a6d1b889110b97ccc5caaef3f65665919f0c75b377edde936cb3b86847b` |
| 8 | `theorem` | [descFactorial_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/descfactorial-eq-prod-range--730a99d58525e387d60d7276.md) | 68 | `result-track:730a99d58525e387d60d7276c8945ef30f53fc1adb2723d488da928d4e32c0fc` |
| 9 | `lemma` | [factorial_coe_dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541.lean/declarations/factorial-coe-dvd-prod--5b441a3cba5b1f58172f9008.md) | 73 | `result-track:5b441a3cba5b1f58172f90080710db837980a6353fec9ab9f8b2b5f5e955e642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
