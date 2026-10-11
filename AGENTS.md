# Mathematical organization

The human owner requires this repository to be organized by mathematics.
This rule applies to all existing and incoming code and all workers.

- Place a result under its mathematical subject and object. Use established
  mathematical categories such as Analysis, NumberTheory, LinearAlgebra,
  DynamicalSystems, Combinatorics, Logic, Order, and MeasureTheory.
- Distribute general lemmas across those subjects. A reusable result must not
  require a conjecture, research campaign, conversation, or workflow umbrella.
- Do not create source directories named CCC, RiemannHypothesis, Conversation,
  ProofHorizon, CorkscrewChamberCap, HadwigerNelson, Waveform, or
  SpectralUnificationOfComputabilityAndAlgebraicSymmetry. Do not replace an entire
  such cluster with another project acronym, metaphor, or conjecture label.
- Use mathematical object names for modules and new public namespaces.
  Conjecture statements belong with the objects they concern: for example,
  zeta-function statements belong under NumberTheory, while generic Laplace
  transform results belong under Analysis.
- Follow the canonical destinations in `docs/math-layout.json` during migration.
  The monitor owns the shared migration. Do not recreate a moved legacy path,
  independently mass-rename shared sources, or add legacy import shims.
- Preserve exact statements, hypotheses, proof bodies, counterexamples, names
  used by real consumers, attribution, licenses, and every concurrent edit.
  Existing declaration names may remain as compatibility names inside the new
  mathematical modules; they do not justify legacy source directories.
- Verify relocated sources, project dependencies, and consumers with the pinned
  Lean environment, `--trust=0`, fatal warnings, and the owned-declaration axiom
  audit. Python checks and a successful build alone are not proof acceptance.
  Keep open problems and missing arithmetic premises explicitly open.
- Run `python3 -B scripts/check_math_layout.py` before admitting new library
  code. Its structural checks are a minimum; review the mathematical placement
  and dependency graph as well. No new naming violations are grandfathered.
- Preserve failed and stale receipts. Rebinding paths or hashes is bookkeeping,
  not new mathematical acceptance. Retain original source variants and evidence
  in the ignored migration archive.

# Global Git working policy

- In a Git repository that has a main branch, work directly in the existing
  local checkout on main by default.
- Do not automatically create feature branches, detached worktrees, or temporary
  isolation branches. Use one only when the user explicitly asks for isolation
  or when direct work on main is technically impossible.
- Concurrent edits, merge conflicts, and overlapping changes on main are
  intentional stability data. Preserve unrelated work, surface the exact
  collision paths and states, and never discard, reset, overwrite, or hide
  changes merely to avoid a collision.
- If the checkout is not on main, move work to main with safe, history-preserving
  Git operations. If uncommitted or conflicting work makes that unsafe, keep it
  intact and report the condition instead of forcing the switch.
- Do not push, force-push, or modify remote branches unless the user explicitly
  requests it. This organization instruction grants no remote publication,
  merge, spending, protection-change, or automation-change authority in other
  chats.
