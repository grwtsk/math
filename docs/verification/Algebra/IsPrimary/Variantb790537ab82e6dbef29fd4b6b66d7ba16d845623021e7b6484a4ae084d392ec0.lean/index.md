# Verification target: GRWTSK.Algebra.IsPrimary.Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "058fc9e64e5e959721fa7096150a88aeef533af6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `058fc9e64e5e959721fa7096150a88aeef533af6`.

Source path: `GRWTSK/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IsPrimary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsPrimary](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/declarations/isprimary--02bd2eae790a2b70a0071c67.md) | 29 | `declaration-track:02bd2eae790a2b70a0071c67859ad93d46032614612af21d18d057192fa50066` |
| 2 | `lemma` | [isPrimary_iff](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/declarations/isprimary-iff--1317e3f46e5067b8b27198ed.md) | 33 | `result-track:1317e3f46e5067b8b27198ed54e6570b96496fe56feb3ae9d717610754320e2c` |
| 3 | `theorem` | [IsPrime.isPrimary](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/declarations/isprime-isprimary--b5709c11087c665354880628.md) | 39 | `result-track:b5709c11087c665354880628f5049dab7d291e320161c88986267f901d1d868d` |
| 4 | `theorem` | [isPrime_radical](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/declarations/isprime-radical--1c39bfe60fcebea627537bd3.md) | 43 | `result-track:1c39bfe60fcebea627537bd3332932dcaba6fb864b17151b4ac58a0db720d25b` |
| 5 | `theorem` | [isPrimary_inf](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/declarations/isprimary-inf--3d47ef910c29ec4d39f9a508.md) | 50 | `result-track:3d47ef910c29ec4d39f9a50828669172567bc64e7b62f14b5b20577b916ff2dd` |
| 6 | `lemma` | [isPrimary_finset_inf](../../../../mathematics/Algebra/IsPrimary/Variantb790537ab82e6dbef29fd4b6b66d7ba16d845623021e7b6484a4ae084d392ec0.lean/declarations/isprimary-finset-inf--4ab52f5a8e0feb7ad42814b7.md) | 64 | `result-track:4ab52f5a8e0feb7ad42814b70b3174f89fa1939c0cf57075a1a9aa8c3b21a68c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
