# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bertrand.Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baeb745b11750d08d34050e9625d90f410a90b98",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baeb745b11750d08d34050e9625d90f410a90b98`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Factorization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeNormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Primorial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [real_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/declarations/real-main-inequality--695ff7145e882b4aa01a0d2a.md) | 62 | `result-track:695ff7145e882b4aa01a0d2a939b6e303f6d239d590fbae115c46f509c56d05d` |
| 2 | `theorem` | [bertrand_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/declarations/bertrand-main-inequality--24824b5458dee701978b462a.md) | 133 | `result-track:24824b5458dee701978b462af44364a7953d403151c6df9b744c4c8f8fd78a5a` |
| 3 | `theorem` | [centralBinom_factorization_small](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/declarations/centralbinom-factorization-small--7c6c839aa77d0f0dd4863e7c.md) | 153 | `result-track:7c6c839aa77d0f0dd4863e7c16e9cc303fa28150f15169c6934a567fc28486ac` |
| 4 | `theorem` | [centralBinom_le_of_no_bertrand_prime](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/declarations/centralbinom-le-of-no-bertrand-prime--1e62a748ae8cbea64e9f4903.md) | 177 | `result-track:1e62a748ae8cbea64e9f490362a27c5a0a0acc813f1b7fca0cb8a760378e57f7` |
| 5 | `theorem` | [exists_prime_lt_and_le_two_mul_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/declarations/exists-prime-lt-and-le-two-mul-eventually--b433c40a845ceba4da3d26db.md) | 211 | `result-track:b433c40a845ceba4da3d26dbd470426c61546d28a1600a7984433bdced72e407` |
| 6 | `theorem` | [exists_prime_lt_and_le_two_mul_succ](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/declarations/exists-prime-lt-and-le-two-mul-succ--baca3cd2ccee5ecc1140d11a.md) | 230 | `result-track:baca3cd2ccee5ecc1140d11a9a363937284b6b6d51a095174e8a2ff280fd0835` |
| 7 | `theorem` | [exists_prime_lt_and_le_two_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/declarations/exists-prime-lt-and-le-two-mul--96b1d980ad8c745479901b1d.md) | 241 | `result-track:96b1d980ad8c745479901b1d314eadac0814abc8bd28bdee998146df8f54885d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
