# Formalization policy

## Repository invariants

1. `main` contains no proof accepted through `sorry`. No accepted declaration may
   depend on `sorryAx`, including through another declaration.
2. Represent an open conjecture as a proposition, never as an axiom. A formalized
   statement and a proof are distinct achievements.
3. A publication ID does not determine a Lean declaration name or module path.
4. Published verification binds the theorem ID, declaration, module, Git commit,
   Lean toolchain, and dependency manifest.
5. Numerical computation is evidence until a Lean-checked certificate or proof
   establishes the corresponding proposition.
6. External programs may propose proofs or certificates; Lean accepts the formal
   result.
7. Empirical interpretations do not follow from a purely mathematical theorem
   unless their empirical assumptions are explicitly represented.
8. Never silently change a published theorem's statement.
9. A materially changed proposition receives a new theorem version, or a new
   theorem ID when its mathematical identity has changed.
10. `MathematicalTooling` is for genuinely reusable mathematics; `Shared` is for
    demonstrated reuse of project-specific definitions, not anticipated reuse.

## Statements and proofs

Define the exact proposition only after its mathematical meaning is specified.
For the Riemann Hypothesis, the canonical proposition name is
`FormalResearch.RiemannHypothesis.RiemannHypothesis`; an eventual proof would be
the separate declaration
`FormalResearch.RiemannHypothesis.riemann_hypothesis`.

These are reserved naming examples, not claims that either declaration currently
exists. Do not insert an arbitrary proposition, `True`, an axiom, or a `sorry`
proof merely to populate a planned module. Documentation-only modules and partial
infrastructure are appropriate until real mathematics is available.

A substantial result can grow through `Definitions.lean`, `Statement.lean`,
`Lemmas/`, `Construction/`, and `Main.lean`, with more specific mathematical
submodules where useful. Supporting lemmas need publication entries only when
they become independently significant results.

## Source organization

Begin definitions in the family that needs them. Reusable mathematical machinery
belongs in a semantic location under `FormalResearch.MathematicalTooling` once
its generality is established. Project-specific definitions used by two genuinely
independent programs are candidates for `FormalResearch.Shared`, such as
`Syntax`, `Semantics`, or `Verification`. Generally useful mathematics may
eventually belong upstream in Mathlib.

Keep accepted source reachable from `FormalResearch.lean`, either through a
family aggregator or by an explicit root import. Family aggregators may remain
documentation-only when making them import-bearing would force a repository-wide
license-header decision that has not been made. Creating a `.lean` file outside
the root import graph does not by itself add it to the default build. Every
maintained Lean source file must compile; do not hide unfinished proofs in
unimported source.

The checked-in Lake configuration disables both `autoImplicit` and
`relaxedAutoImplicit` and enables the standard Mathlib linter set except for
`linter.style.header`. That style check hard-codes Apache-2.0 legal metadata,
while this repository currently declares no source license; it is disabled rather
than fabricating a license statement. This exception does not suppress Lean
warnings, proof checks, theorem registry resolution, or axiom auditing. A
misspelled identifier must not silently alter a theorem's quantification.

## Verification layers

Run `./scripts/verify.sh` before committing. It checks that the dependency manifest
exists, executes `lake build --wfail`, resolves every real theorem registry target,
prints each target declaration and its transitive axioms, rejects `sorryAx`, runs
`lake lint`, and then runs `git diff --check`. With normal `warn.sorry` behavior,
a `sorry` warning also fails the build. Do not suppress such warnings to bypass
this gate.

The local script is a source-acceptance gate, not a complete publication verifier.
In particular, manifest existence does not establish that the lock is committed,
and a successful source audit does not by itself bind the result to an immutable
Git commit or generate publication evidence.

The complete acceptance boundary for `main` is:

- All maintained Lean source compiles.
- No accepted declaration depends on `sorryAx`.
- Publication declarations receive an axiom dependency audit.
- Each real theorem registry entry resolves to its module and declaration.
- The dependency lock and toolchain are committed with the source.

The publication verifier must repeat the audit for the exact immutable release,
record and review all remaining axioms, and bind that evidence to the release
commit. Lean's foundational axioms must be distinguished from project assumptions;
kernel acceptance does not make an assumed research claim an unconditional
theorem. `scripts/audit-declaration.sh` performs the exact `#print` and
`#print axioms` inspection used by the source gate.

Work directly on `main` by default and preserve concurrent or unrelated edits.
Use ignored `scratch/` for incomplete experiments. Create a work branch only
when explicitly requested or direct work on `main` is technically impossible;
branch naming is specified in [NAMING.md](NAMING.md). Do not weaken the acceptance
boundary to accommodate an unfinished proof.
