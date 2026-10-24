# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Nth.Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb54a5dbb5bb885d01f9db509cb3d8c05567d5e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb54a5dbb5bb885d01f9db509cb3d8c05567d5e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nth_prime_zero_eq_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean/declarations/nth-prime-zero-eq-two--0e39281676e6c4774e5a9fbb.md) | 24 | `result-track:0e39281676e6c4774e5a9fbb580a00c37405e451a9426bf8f6a0a6cce0431bc5` |
| 2 | `theorem` | [nth_prime_one_eq_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean/declarations/nth-prime-one-eq-three--98f7530424d9eb8099840c51.md) | 27 | `result-track:98f7530424d9eb8099840c5101b9164c7dd7a24e779881926c69d6471e033ea1` |
| 3 | `theorem` | [nth_prime_two_eq_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean/declarations/nth-prime-two-eq-five--0d6d17776720bdd15c6d9d51.md) | 30 | `result-track:0d6d17776720bdd15c6d9d512d1cdd6a38dfb22d88f808cae7d9ca20a04836ff` |
| 4 | `theorem` | [nth_prime_three_eq_seven](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean/declarations/nth-prime-three-eq-seven--e75997598180a9003ebc7ef3.md) | 33 | `result-track:e75997598180a9003ebc7ef3f2ab0b38151efcfc84f0c17c9ed68c00d07822cc` |
| 5 | `theorem` | [nth_prime_four_eq_eleven](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variant116ec65eeba78520ee04424882aaaf7bfe1579bd64645b354f3fbea935142c7e.lean/declarations/nth-prime-four-eq-eleven--be149e6246ec30b6c79a3202.md) | 36 | `result-track:be149e6246ec30b6c79a3202cddb5fc3c7ab0ab3ea880e2b9851ce13719caa4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
