# `GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers.even_power_sum_eq_iff_degenerate`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [FermatIntegerSolutionFibers.lean](../FermatIntegerSolutionFibers.lean), line 89.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/DiophantineEquations/FermatIntegerSolutionFibers.lean#L89).
- Declaration spelling: `GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers.even_power_sum_eq_iff_degenerate` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/FermatSourceEdition1.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "anthropic-math",
      "project_subdir": "adapters/anthropic-math/fermat",
      "path": "adapters/anthropic-math/fermat/GRWTSK/NumberTheory/DiophantineEquations/FermatIntegerSolutionFibers.lean",
      "source_commit": "18a0115ac4244d4540a25c47a496b42a22c6807d",
      "source_blob": "cfa2ac320c907a79324c452eedee295c8a26f4d8",
      "source_sha256": "45e8ea906d17dc59e61c5b960397653dd4044e7c5e3f9aa0ab80babdba042101",
      "declarations": [
        "GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers.power_sum_eq_forces_zero_coordinate",
        "GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers.odd_power_sum_eq_iff_degenerate",
        "GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers.even_power_sum_eq_iff_degenerate",
        "GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers.odd_fixed_output_solution_fiber",
        "GRWTSK.NumberTheory.DiophantineEquations.FermatIntegerSolutionFibers.even_fixed_output_solution_fiber"
      ],
      "upstream": [
        {
          "repository": "https://github.com/anthropics/fermats-last-theorem",
          "commit": "6e837e75355538c7f80bab5b956861e86c4eacc2",
          "remote_main_revalidation": "HEAD and refs/heads/main both6e837e75355538c7f80bab5b956861e86c4eacc2 during read-only inspection2026-10-29",
          "FinalCheck.lean": {
            "blob": "3ffbd60b8f9736f5569e4dd4774701a114d18266",
            "used_declaration": "flt_mathlib",
            "exact_type": "FermatLastTheorem = forall n >=3, FermatLastTheoremFor n; source converts actual proved positive-Nat theorem using Nat.pos_of_ne_zero."
          },
          "Theorems/Thm_fermat_last_theorem.lean": {
            "blob": "607108da0ddca3236e7704b6b152ae895a51df32",
            "declaration": "fermat_last_theorem",
            "exact_type": "forall (n:Nat),3<=n -> forall a b c:Nat,0<a ->0<b ->0<c -> a^n+b^n !=c^n",
            "body": "by p2m_exact_reverting @_root_.P2MW.S_fermat_last_theorem.solution"
          },
          "trust_note": "FinalCheck contains historical guard_msgs/print axioms text; these source assertions are not a fresh local source-bound replay or axiom acceptance receipt.",
          "license": "Apache-2.0; Anthropic PBC copyright and original NOTICE preserved upstream."
        }
      ],
      "native_pins": {
        "project_subdir": "adapters/anthropic-math/fermat",
        "Lean": "leanprover/lean4:v4.33.1",
        "Mathlib": "db584cd6d46c92f209a44c0f1c829460d327499d",
        "package": "flt_e2e",
        "upstream_commit": "6e837e75355538c7f80bab5b956861e86c4eacc2",
        "root_Lean": "leanprover/lean4:v4.34.1",
        "root_import_or_dependency_migration": false
      },
      "Mathlib_source_blobs": {
        "Mathlib/NumberTheory/FLT/Basic.lean": "c21f4b48f7231a5782d0ea07442d963b0c6cc7f5",
        "Mathlib/Algebra/Order/Ring/Abs.lean": "06a4434d33bfe7820491a24053dddbcc7588a390",
        "Mathlib/Algebra/Order/Ring/Basic.lean": "6bd5827d8ae7733a476545b2db493ace10d4f3bc",
        "Mathlib/Algebra/GroupWithZero/Basic.lean": "b645df61d0cab8996f9f949357ac218e7ddb0b1c",
        "Mathlib/Tactic/Tauto.lean": "dcfc8e0826ee02eb238cd0d2e096ed35ba4f537c",
        "Mathlib/Algebra/Ring/Parity.lean": "8672c229f5f79c68409a19d56dec0553366582b3"
      },
      "Mathlib_APIs": [
        "FermatLastTheoremWith R n := forall a b c, a!=0 ->b!=0 ->c!=0 ->a^n+b^n!=c^n",
        "fermatLastTheoremFor_iff_int : FermatLastTheoremFor n iff FermatLastTheoremWith Int n; its proof handles even abs transport and all odd sign cases.",
        "Odd.pow_injective; Odd.neg_pow",
        "pow_eq_pow_iff_of_ne_zero : n!=0 -> (a^n=b^n iff a=b or (a=-b and Even n)) over a strictly ordered ring",
        "Even.pow_nonneg",
        "pow_eq_zero_iff : n!=0 -> (a^n=0 iff a=0) in monoid with zero/no zero divisors",
        "Set extensionality, Prod.mk.injEq, propositional tauto"
      ],
      "hypotheses": [
        "n : Nat; n>=3",
        "a,b,c : Int (no positivity restrictions)",
        "Odd n only in odd classification/fiber; Even n only in even classification/fiber",
        "No FermatLastTheorem premise: source flt_mathlib supplies Nat FLT and pinned Mathlib transports it to Int."
      ],
      "conclusion": {
        "without_parity": "Integer equality at n>=3 forces a=0 or b=0 or c=0, not a=0 or b=0.",
        "odd": "For Odd n, equality iff (a=0 and b=c) or (b=0 and a=c) or (c=0 and b=-a). Fixed output fiber is {(0,c),(c,0)} union {p | c=0 and p.2=-p.1}.",
        "even": "For Even n, equality iff (a=0 and (b=c or b=-c)) or (b=0 and (a=c or a=-c)). Fixed output fiber is {(0,c),(0,-c),(c,0),(-c,0)}, a set whose entries coincide at c=0."
      },
      "use": "Supply exact signed solution sets for the existing integer homogeneous Fermat consumer and integer Diophantine search. Odd zero-output fibers require the full antidiagonal; finite natural-axis pruning would be unsound there.",
      "consumer_paths": [
        "GRWTSK/NumberTheory/Fermat4Namespaced.lean"
      ],
      "root_consumer": {
        "source_commit": "1198aa95fee7aa38718faf8ac8e633a75ef8ffb0",
        "path": "GRWTSK/NumberTheory/Fermat4Namespaced.lean",
        "git_blob": "0ee92ef1ec8c5716d7667065593062873a64a973",
        "declarations": [
          "GRWTSK.NumberTheory.DiophantineEquations.Fermat42.Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.not_fermat_4"
        ],
        "actual_use": "Existing integer homogeneous quartic nonzero-summand family becomes the n=4 specialization of exact even fibers; the signed classification adds all n>=3 and preserves the odd zero-output antidiagonal.",
        "scope_limit": "ONLY homogeneous not_fermat_4 is the actual root consumer. Fermat42 definition/not_fermat_42 use the stronger different a^4+b^4=c^2 target, which is explicitly excluded and not derived. No legacy root source import/version-port/compilation occurs.",
        "license_byline": "Apache-2.0; Paul van Wamelen,2020, retained legacy source metadata.",
        "excluded_stronger_targets": [
          "GRWTSK.NumberTheory.DiophantineEquations.Fermat42.Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.Fermat42",
          "GRWTSK.NumberTheory.DiophantineEquations.Fermat42.Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.not_fermat_42"
        ]
      },
      "paper_or_source": "Anthropic FLT formalization consumes the positive-natural theorem via flt_mathlib. Its Wiles1995/Taylor-Wiles1995 strategy context is recorded in the canonical ledger; these integer parity classifications are elementary local consequences through the exact Mathlib Nat/Int transport, not independent proofs of modularity inputs or a paper-by-paper translation.",
      "license": "Apache-2.0; grwtsk contributors local attribution; Anthropic PBC and upstream Mathlib public bylines/notices preserved.",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "comparator": "NOT_RUN",
        "expected_interface": "NOT_RUN",
        "fresh_independent_kernel_replay": "NOT_RUN",
        "complete_module_discovery": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED",
      "missing_bridges": [
        "Fresh exact-source native compilation, complete module discovery, expected types and transitive axiom audit via supported managed4.33.1 route after owner/resource/policy admission.",
        "Root4.34.1 integration/version-port and modern qualification of legacy root Fermat42 consumer are not performed.",
        "Paper/source alignment and imported FLT proof closure retain their existing independent verification obligations; no source-only byline or guard_msgs output establishes fresh acceptance.",
        "The original six natural-number Fermat interface targets and original OpenAI weighted-model-growth verification remain separate active exact-source obligations.",
        "The odd zero-output set is not reduced to finitely many axis candidates. No finite-to-infinite search performance claim follows.",
        "The legacy root a^4+b^4=c^2 Fermat42/not_fermat_42 result is not proved or strengthened by the homogeneous classification."
      ]
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors.
Released under Apache 2.0 license as described in the upstream file LICENSE.
Authors: grwtsk contributors
-/

/-!
# Exact integer Fermat fibers, including the signed zero-output boundary

The natural-number fiber cannot simply be reused over the integers. For odd
exponents the zero-output fiber is the entire antidiagonal `(a,-a)`, including
nonzero summands. For even exponents the fibers are the four signed axis
candidates, which all coincide at output zero.

The nonzero-coordinate obstruction is supplied by the proved upstream
`flt_mathlib`, transported through Mathlib's proved
`fermatLastTheoremFor_iff_int`. No Fermat theorem is assumed as a free premise.
Parity-sensitive injectivity then identifies the actual coordinates, rather
than merely their powers or absolute values.

Upstream: `anthropics/fermats-last-theorem` commit
`6e837e75355538c7f80bab5b956861e86c4eacc2`, Apache 2.0,
copyright Anthropic, PBC; its original notices remain upstream. The endpoint
`flt_mathlib` is in `FinalCheck.lean`, Git blob
`3ffbd60b8f9736f5569e4dd4774701a114d18266`.
Mathlib is pinned at `db584cd6d46c92f209a44c0f1c829460d327499d`;
its natural/integer transport is in `Mathlib.NumberTheory.FLT.Basic`, blob
`c21f4b48f7231a5782d0ea07442d963b0c6cc7f5`, with original byline
Kevin Buzzard, Yaël Dillies and Jineon Baek.

The root integer `Fermat42` family already contains a homogeneous quartic
nonzero-summand consumer, `not_fermat_4`. These exact signed fibers supply its
all-exponent equation classification, but do not strengthen the different
`a^4+b^4=c^2` equation or import its legacy root source across versions.

This package retains Lean 4.33.1. Compilation, expected-interface checking,
fresh independent kernel replay and complete transitive axiom auditing remain
NOT_RUN. No root dependency or version-port is supplied here.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
