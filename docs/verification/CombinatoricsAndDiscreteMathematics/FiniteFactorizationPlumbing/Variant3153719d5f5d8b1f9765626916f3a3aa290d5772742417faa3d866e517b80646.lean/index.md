# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFactorizationPlumbing.Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1079e076b1ad67163c6ac9c77caa6905f38262a0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1079e076b1ad67163c6ac9c77caa6905f38262a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FactorizationRebuild` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_prime_power_eval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean/declarations/factorization-prime-power-eval--5542a9c988a8974a7fef3a2a.md) | 17 | `result-track:5542a9c988a8974a7fef3a2ab2296f03dd49e5810b25e69fd3958d93dc330a9b` |
| 2 | `theorem` | [factorization_exponentVectorNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean/declarations/factorization-exponentvectornat--72b835866e26c7b42346f349.md) | 36 | `result-track:72b835866e26c7b42346f349b02e89512a307337f53245965ef659ae1c344114` |
| 3 | `theorem` | [factorization_exponentVectorNat_at_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean/declarations/factorization-exponentvectornat-at-mem--6a93de73ba15bd2c8001f432.md) | 99 | `result-track:6a93de73ba15bd2c8001f432de2add2d51af1371a995b6aebddf273cbe981b78` |
| 4 | `theorem` | [factorization_exponentVectorNat_at_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean/declarations/factorization-exponentvectornat-at-not-mem--869493fc8ae914a3462de948.md) | 111 | `result-track:869493fc8ae914a3462de94869bd6984e8bebd32b568f2532f0349bb0aa20d52` |
| 5 | `theorem` | [exponentVectorNat_injective_of_prime_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean/declarations/exponentvectornat-injective-of-prime-set--75b72db36984b18f3fa07b6b.md) | 129 | `result-track:75b72db36984b18f3fa07b6b2b4228bff03dce43576adae22a41ddd8cc1a0869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
