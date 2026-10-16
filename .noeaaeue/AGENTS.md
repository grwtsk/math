# Repository boundary

`GRWTSK/` and `GRWTSK.lean` are the formal mathematical library. Leave their
mathematical taxonomy unchanged until `grwtsk/noeaaeue` determines its evolution.
The root is reserved for Lean source discovery, Lake and dependency pins,
mathematical documentation, licensing, and Lean CI. Process artifacts and
automation live under `.noeaaeue/`; its internal organization is governed by
`grwtsk/noeaaeue`. This cleanup establishes no new mathematical acceptance.

Historical receipts retain their original paths and bytes. Use the relocation
records under `.noeaaeue/root-cleanup/` to locate those identities; do not rewrite
a receipt or refresh its hashes to imply replay.

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
- Follow the canonical destinations in `.noeaaeue/documentation/math-layout.json` during migration.
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
- Run `python3 -B .noeaaeue/scripts/check_math_layout.py` before admitting new library
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

## Mathematical documentation

- Generate one navigation-only `docs/mathematics/<Subject>/index.md` per source or documented area. It links to mathematical object guides and reports defined inventory counts; it carries no theorem status, source binding or proof claim. Preserve strict source/evidence bindings on the object articles.
- Keep the main area directory, area indexes and `docs/reference/library-summary.json` synchronized with `python3 -B .noeaaeue/scripts/check_documentation.py --render`. Counts distinguish modules, guides, object groups, intake records and selected catalog families; they never imply theorem totals or mathematical acceptance.
- Place canonical pages at `docs/mathematics/<Subject>/<Object>/<page>.md`, following actual source subjects. Split mixed dossiers by mathematical object; use explicit cross-subject links.
- Lead with exact statements and hypotheses. Preserve proof explanations, counterexamples, conditional premises, source citations, individual credit and verification limits. No campaign, conversation, grant, branch or continuation chronology may organize mathematical paths or navigation.
- Keep tutorials, how-to, explanations and source/verification reference separate. Retain raw historical evidence outside canonical reader navigation; never rewrite a historical receipt into current acceptance.
- When a result changes, update its page, source binding, status, contribution record and downstream links. Do not refresh a source hash to imply replay. Written, cited, conditional, historical and freshly checked results must remain distinguishable.
- Register every maintained Markdown page in `.noeaaeue/documentation/reference/documentation-layout.json`; regenerate navigation with `python3 -B .noeaaeue/scripts/check_documentation.py --render`. Before accepting documentation, run that checker normally and with `-O`, and run `.noeaaeue/scripts/test_documentation_layout.py` normally and with `-O`. Missing sections/pages, source drift and failed hostile controls block the affected documentation claim.
- Documentation checks establish structural consistency only; theorem admission, complete catalogs and source acceptance require their own evidence. Preserve concurrent source and verifier work.
