# Verification target: GRWTSK.Algebra.NonLocalRing.Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b299a889eec6ef2fb1406600baee6d05b34d190a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b299a889eec6ef2fb1406600baee6d05b34d190a`.

Source path: `GRWTSK/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_isLocalRing_def](../../../../mathematics/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/declarations/not-islocalring-def--7991fa4080d64b4e190c0bd7.md) | 44 | `result-track:7991fa4080d64b4e190c0bd765202a6c3981ede2b590a5c77bd064600ad3b190` |
| 2 | `theorem` | [not_isLocalRing_of_nontrivial_pi](../../../../mathematics/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/declarations/not-islocalring-of-nontrivial-pi--f5239c6f794b036ddefee2a1.md) | 50 | `result-track:f5239c6f794b036ddefee2a1370467d68cbb01eb4b1b447b3702a6d71a3b3914` |
| 3 | `theorem` | [not_isLocalRing_of_prod_of_nontrivial](../../../../mathematics/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/declarations/not-islocalring-of-prod-of-nontrivial--875dc23127a7a90a096af2bf.md) | 61 | `result-track:875dc23127a7a90a096af2bf99951f383306e95880e0e2d0915e4b297d81b5e1` |
| 4 | `theorem` | [not_isLocalRing_tfae](../../../../mathematics/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/declarations/not-islocalring-tfae--ff1d46b6f35806ac5e83372d.md) | 74 | `result-track:ff1d46b6f35806ac5e83372d5550fed34d5773264940787dc3925744c0aab7ff` |
| 5 | `theorem` | [exists_surjective_of_not_isLocalRing.](../../../../mathematics/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/declarations/exists-surjective-of-not-islocalring--c37114596d106391a7ca7c83.md) | 89 | `result-track:c37114596d106391a7ca7c839d46e1b887c2993d3baf26fe4af475d3ef980c46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
