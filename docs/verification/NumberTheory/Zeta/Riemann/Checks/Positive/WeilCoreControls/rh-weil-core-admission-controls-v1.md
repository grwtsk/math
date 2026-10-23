# Weil core: paired admission controls v1

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / NOT_ADMITTED.

This is a static mathematical source/review specification. It is not an executable
manifest, execution request, external receipt, or permission to change F06 or worker
state. All Lean trials and success-injection runs below remain NOT_RUN.

## Exact preparation and unchanged source

Preparation parent: `d9029e6690496e8aac959ccd1fb46f6134944657`.
Parent tree: `9f89b8978c4abe7dc5e86b9fd27c46dbbd40f6f5`.
Continuation branch: `formalizer/100-weil-core-source-inventory-20261019` (PR #271).
Only the new source module and this specification are added. No previous declaration,
proof, import, root aggregate, toolchain, dependency lock, inventory or historical
acceptance specification changes. The containing candidate commit binds later replay;
a live branch or an old result is not that binding.

New target:
`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCoreControls`.

Source path:
`GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean`.
Source Git blob: `a668f873c8def0f2fc891d2df8266a09f0e39bae`.
Source SHA-256: `3b953f03811198f54ccaf942eedb2806bf9235d1e62189392d054376233aeeaa`.

This target imports the existing WeilCore target directly. The observed local header
scope is eight modules: the seven inventoried predecessor files, unchanged, plus the
new control file. It contains 131 explicitly authored named commands and the same nine
anonymous examples. The 13 new commands are conditional True-valued control theorems,
not 13 new arithmetic theorems, accepted checks, or generated environment constants.
Generated declarations, exact universe/type data and transitive dependency/axiom
closure remain independently required and UNAVAILABLE here.

## What the source actually checks

C01-C12 each contain one guarded expression expected to fail elaboration and one
correctly supplied companion in the SAME binder context. Some companions explicitly
assume the missing premise. The claim is about the particular expression, not logical
independence, nonderivability, the truth value of RH, or every possible proof search.

| ID | Authored declaration (namespace Checks.WeilCoreControls) | Source lines |
|---|---|---:|
| C01 | `endpoint_requires_criterion` | 40-50 |
| C02 | `criterion_requires_positive_diagonal` | 53-63 |
| C03 | `forward_requires_reverse_for_iff` | 66-79 |
| C04 | `criterion_requires_exact_form` | 82-94 |
| C05 | `replacement_source_requires_binding` | 98-114 |
| C06 | `sampled_convergence_requires_coverage` | 118-142 |
| C07 | `polarized_record_requires_explicit_bridge` | 146-155 |
| C08 | `error_record_requires_decay` | 158-187 |
| C09 | `negative_witness_requires_reverse` | 190-200 |
| C10 | `normalization_sign_is_not_erasable` | 204-215 |
| C11 | `replay_label_is_not_a_criterion` | 218-229 |
| C12 | `limit_existence_requires_nonempty` | 233-242 |

C01 preserves the endpoint's separate criterion input; C02 preserves positivity as
an input to the criterion. C03 supplies a reverse proof before constructing an iff.
C04 uses equality of actual forms rather than treating a shared test space as form
identity. C05 requires the replacement source's own binding equality; this is token
consistency, not byte authentication. C06 uses explicit all-vector coverage to remove
a selected-set premise; no finite selected set is assumed to cover the complex space.
C07 uses the implemented polarization bridge instead of an implicit record coercion.
C08 retains actual error decay as a required field. C09 supplies the reverse criterion
for a negative witness. C10 retains the sign of the selected normalization scalar.
C11 rejects status metadata as an RH proof term. C12 keeps the limit record in Type
and uses Nonempty for propositional existence. Its explicit limit argument retains
the full section-variable context.

The extra `rejection_guard_is_live` declaration uses nested rejection guards around
a VALID typed `have` command. The command does not close the ambient True goal. This
is a harness self-check, not an additional mathematical result.

## Pinned tactic source and the proof-term limitation

The Lean 4.33.0 implementation inspected is
`leanprover/lean4@v4.33.0:src/Lean/Elab/Tactic/BuiltinTactic.lean`,
`Lean.Elab.Tactic.evalFailIfSuccess`. It runs the trial under
`Term.withoutErrToSorry` and `withoutRecover`, and raises an error if the trial
succeeds. No additional tactic, IO command, native evaluation or runner is defined here.
The used inner-product arguments were also checked against
`mathlib4@db584cd6d46c92f209a44c0f1c829460d327499d`,
`Mathlib/Analysis/InnerProductSpace/Basic.lean`.
This is bounded source/API inspection, not a complete API or trust audit.

IMPORTANT: theorems in this file return True. Kernel checking their resulting True
proofs, loading an old olean, or counting their names DOES NOT prove that the rejection
trials or companions ran. Compilation may erase unused local terms. An acceptance
record must therefore include clean exact-source elaboration and the mutation checks
below, in addition to all required type and transitive trust audits.

The guard catches tactic failure generally; it does not certify the reason for failure.
A malformed parser input, unknown name, missing import, resource exhaustion or tool
failure is not evidence of the intended boundary. Review the trial's binder context,
expected field/type mismatch, and positive companion. When diagnostics are replayed
separately, classify those causes explicitly rather than accepting any process failure.

## Success-injection controls: specified, not executed

For EACH C01-C12, prepare an isolated copy of this EXACT source. Replace only the text
between that control's REJECT BEGIN/END markers by its ACCEPT BEGIN/END text, reindented
from two to four spaces. Retain the guard, all binders, all other controls and the
original accepted companion. No namespace, theorem signature or imported source changes.

The original target is required to elaborate without errors and without placeholders.
Every success-injected copy is required to fail at the targeted guard because the
trial now succeeds. The expected diagnostic is the pinned guard's success-rejection
message, not an unrelated parser/type/name/import/timeout failure. A failed pristine
file, a successful mutant, a missing mutant or an unrelated mutant diagnostic blocks
acceptance. This prevents an always-reject checker from satisfying the suite merely
by rejecting every input.

Twelve such source copies and exact hashes are prepared in the companion local bundle;
none has been executed. They are not canonical theorem modules and are not committed.
Noeaaeue owns any authorized checkout overlays, process invocation, logs and receipts.
These instructions do not dispatch, schedule or authorize that execution.

## Conjunctive inherited acceptance

Retain the complete predecessor
`docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore/rh-weil-core-source-inventory-v1.md`, blob
`f1c4b5421a7624d045565185a80dc77b8109b496`, including I01-I08, the seven-file source
inventory, the nine anonymous examples, generated-environment requirements and all
specifications it retains. This includes the broad atlas/Mellin/finite-power/Weil
requirements. Small-core or new-control success does not replace broader target success.
The predecessor remains exact for its seven unchanged files, not a complete inventory
of this eight-module extension or its generated Lean environment.

Additional acceptance requirements:

A01: Bind the new target, this specification, all retained source/dependency identities
and the containing commit. Reject old checksums and unbound overlays.
A02: Require all twelve rejection trials, twelve positive companions and the harness
self-check; no absence or skipped command is a pass.
A03: Require the pristine target and all twelve success-injection outcomes at their
precise intended diagnostic locations. Missing or unrelated errors remain failures.
A04: Never treat True proof terms or cached objects as evidence that tactic checks ran.
A05: Retain exact criterion directions, source bindings, form identities and all-vector
quantifiers. The source controls do not strengthen or weaken any underlying theorem.
A06: Retain actual decay and normalization sign; labels and inequalities are not limits.
A07: Keep source, mathematical, elaboration, type, generated-inventory and trust statuses
separate. Independent source checks cannot create a replay result.
A08: Preserve all independently required broad targets and F06/worker holds; this is no
execution authorization, merge instruction, or mathematical acceptance.

## Checks actually performed

The companion text checker matched all seven retained source copies to their pinned
Git identities, found no authored-name collision, reconciled twelve paired blocks and
one harness self-check, checked bounded delimiters/prohibited tokens/import shape, and
prepared twelve distinct success-injected source copies. Eight text-checker self-tests
rejected a missing guard, missing companion marker, duplicate name, unexpected import,
unclosed comment, unbalanced delimiter, placeholder and lost Type/Prop parameter binder.
Normal and optimized Python runs produced identical output.

A preparation review caught and corrected the C12 proof's initially body-only section
parameters by adding an explicit limit binder before publication. No compiler found
or verified this correction. These text checks do not establish Lean syntax acceptance,
type correctness, the intended rejection causes, complete dependencies or trust.

All original, companion and injected-success Lean trials: NOT_RUN.
Exact-type/generated-environment/transitive-axiom replay: NOT_RUN / UNAVAILABLE.
No new mathematical supplier, zeta form, classical criterion, arithmetic Gram family,
actual comparison decay, all-height cover, RH/ABC proof or refutation is supplied.
