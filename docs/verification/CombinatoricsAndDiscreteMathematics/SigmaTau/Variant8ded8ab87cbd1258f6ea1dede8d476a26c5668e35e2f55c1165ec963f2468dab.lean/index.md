# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SigmaTau.Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fff2476e0729d7d618c161d3997583976fcfa7b0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fff2476e0729d7d618c161d3997583976fcfa7b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.DivisorSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tau](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/tau--cb3a12aee7b75151b38efe25.md) | 24 | `declaration-track:cb3a12aee7b75151b38efe254843c07a39640a8e8be2fba0596a6d2ccf81d316` |
| 2 | `def` | [sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/sigma--5207979325f9e098191e73b8.md) | 27 | `declaration-track:5207979325f9e098191e73b83d8914db089e5a0ad2808ec9bb8f8f7df7c949c5` |
| 3 | `theorem` | [tau_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/tau-one--14c753d20728c56129b7149e.md) | 30 | `result-track:14c753d20728c56129b7149ebb3a6af315f38484e823f4765a780671e06a7264` |
| 4 | `theorem` | [sigma_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/sigma-one--dc95de7e4b8927584be8377d.md) | 33 | `result-track:dc95de7e4b8927584be8377d2f3bd99acc8344e7e6245d981e5c5bea7c611f83` |
| 5 | `theorem` | [tau_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/tau-prime--5b3f5ba68c47cf13e3041481.md) | 36 | `result-track:5b3f5ba68c47cf13e30414814c72b5c568ca37ee91480ca0fb4608929de5e32d` |
| 6 | `theorem` | [sigma_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/sigma-prime--370e7be3242d87e91a57da91.md) | 43 | `result-track:370e7be3242d87e91a57da91bd60ce3a2e7daacd1b27a4b24ed675910d3791f6` |
| 7 | `theorem` | [tau_prime_power](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/tau-prime-power--bbacccbe5b1387e6b0f1cde5.md) | 50 | `result-track:bbacccbe5b1387e6b0f1cde5acbe8da9ee8e9c7bb76c54492583c3e075d8a2cb` |
| 8 | `theorem` | [sigma_prime_power](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab.lean/declarations/sigma-prime-power--071df7318aac6b68528b4132.md) | 56 | `result-track:071df7318aac6b68528b413253c1e8887fa6b7fa2194ee2cf33c46dc69955be7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
