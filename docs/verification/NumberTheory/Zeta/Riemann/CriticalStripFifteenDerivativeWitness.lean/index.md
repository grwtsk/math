# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e55acee66012f2b39be7c88cbebdf6a34bc3bfd9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e55acee66012f2b39be7c88cbebdf6a34bc3bfd9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenIsolationPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenIsolationPort.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [domain](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/domain--c27ea32467e0843c3c644a0a.md) | 25 | `declaration-track:c27ea32467e0843c3c644a0aee4f47ac72e34e9bb66cc25c5ab44c67c4402666` |
| 2 | `def` | [linearPart](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/linearpart--381b1fb9d0a123ce78dbd6b0.md) | 26 | `declaration-track:381b1fb9d0a123ce78dbd6b07969e192b45c3b81800aaf060ec4eedf8724b044` |
| 3 | `lemma` | [domain_convex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/domain-convex--98ab406c6879972b32eef6b8.md) | 28 | `result-track:98ab406c6879972b32eef6b8b69529ab46c49e510b1483adcd7ac73274d8c006` |
| 4 | `lemma` | [linearPart_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/linearpart-norm-lower--682e3428d991351997b52076.md) | 34 | `result-track:682e3428d991351997b52076d7941b5e8fe9d6822575c699d8db9e250cec4379` |
| 5 | `theorem` | [source_derivative_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/source-derivative-disk--b211199e8bcd15836ba18822.md) | 40 | `result-track:b211199e8bcd15836ba188229f6a17fff00bfddedc8becd0c36953d495effccd` |
| 6 | `def` | [certificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/certificate--0bf628c1e4a13c827001ccc2.md) | 56 | `declaration-track:0bf628c1e4a13c827001ccc2629d4a6e3554a9ddd0ef2da83b4418151de43b48` |
| 7 | `theorem` | [source_separation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/source-separation--e81d996ce04b70325b3e58f2.md) | 66 | `result-track:e81d996ce04b70325b3e58f2926da58fac0eebc8a745de3f59b8688c1e414d0f` |
| 8 | `theorem` | [derivative_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/derivative-nonzero--80f0dc8179ee3e2af01df99b.md) | 74 | `result-track:80f0dc8179ee3e2af01df99bd81cbfda219ab398414456ee22a4b706b03834b6` |
| 9 | `lemma` | [target_in_domain](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/target-in-domain--2c1a3318ad65d4d80ecbb524.md) | 77 | `result-track:2c1a3318ad65d4d80ecbb524e49234a593a3f18ccfb9dfa73c4425d83db07a93` |
| 10 | `theorem` | [fifteen_target_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/fifteen-target-capacity--dfe54fa85d2049de69e13dda.md) | 83 | `result-track:dfe54fa85d2049de69e13ddab7fb1cc31037ed62307452704512660cf0d67e98` |
| 11 | `theorem` | [target_on_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/target-on-line--b89f46422d4205eccb3e9e10.md) | 89 | `result-track:b89f46422d4205eccb3e9e10788b05a6c79390eade9bbe8c9b5c94f6424727a7` |
| 12 | `theorem` | [shellRH_fourteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/shellrh-fourteen--1ec733b11acbeabf49d7af33.md) | 94 | `result-track:1ec733b11acbeabf49d7af33de1ca2f094a0cfdec39988ee50054aabc06b1cd3` |
| 13 | `theorem` | [windowRH_fifteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/windowrh-fifteen--46986d8444cdb521784369b8.md) | 96 | `result-track:46986d8444cdb521784369b89ab69cac4db57c25d4e2d1938e3a7cca1dd0e191` |
| 14 | `theorem` | [distance_to_known_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/distance-to-known-zero--cba988f8ce13d6da3dc5e373.md) | 99 | `result-track:cba988f8ce13d6da3dc5e373b4670b5c0e3a58632ac290855ffd57762b344167` |
| 15 | `theorem` | [window_sixteen_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/window-sixteen-of-shell--25a4d15362fca83608ba1b4a.md) | 106 | `result-track:25a4d15362fca83608ba1b4afa25581111f2d5d4f975e01778242d6090cf7f1e` |
| 16 | `theorem` | [all_windows_of_above_fifteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/all-windows-of-above-fifteen--d3bafd1d68bfd11c7fdad35c.md) | 109 | `result-track:d3bafd1d68bfd11c7fdad35cfb8f7e67478df4f77d7f545c421ce1253b14312c` |
| 17 | `theorem` | [rh_of_above_fifteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeWitness.lean/declarations/rh-of-above-fifteen--61cd54d4114442738158bb99.md) | 119 | `result-track:61cd54d4114442738158bb99ab742d12891bf147759156cea790f7627230b094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
