# Pinned OpenAI seven-eighths theorem port

Status:

```text
LITERATURE_REVIEWED
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
LOCAL_ADMISSION_BLOCKED
```

Issue: #448  
Parent adapter: #434 / draft PR #438  
External-result owner: #187  
Canonical RH program: #15

## 1. Bounded terminal consumer

This increment is a **result-port increment**. Its terminal consumer is

```lean
GRWTSK.RiemannHypothesis.RiemannZetaZeroFreeRightHalfPlane
  ((7 : ℝ) / 8)
```

from the stacked parent.

The parent proves only at source-draft level that raw nonvanishing at `1 / 2`
is equivalent to canonical RH. It also proves that a `7 / 8` theorem implies
the weaker `11 / 12` theorem. It does not provide a route from `7 / 8` to
`1 / 2`.

The local route is therefore:

```text
accepted external 7/8 port
  -> local raw zeta nonvanishing at 7/8
  -> local nontrivial-zero exclusion at 7/8
  -> weaker raw exclusion at 11/12
```

It is not:

```text
accepted external 7/8 port -> RH.
```

## 2. Candidate comparison

Exactly three candidates were considered.

| Candidate | Consumer | Main advantage | Main obstruction | Disposition |
|---|---|---|---|---|
| Add `openai/math` directly as a dependency | local `7/8` theorem | would expose the external declaration directly | different Lean and Mathlib pins; very large transitive source; no local replay | rejected for this increment |
| Copy or reprove the external analytic argument | local `7/8` theorem | could remove cross-repository dependency | unbounded analytic and formal work; source/provenance drift | rejected |
| Record the exact source and define a gated theorem port | local `7/8` theorem | bounded, auditable, preserves all missing evidence | does not itself prove the theorem | selected |

The selected work adds one theorem/interface layer and one scoped obstruction:
the source is located and proposition-shaped correctly, but it is not locally
admissible under the current evidence.

## 3. Pinned external declaration

Repository:

```text
openai/math
```

Revision:

```text
1581d4cbdd69a0faf34b2089614fe2a814316a6a
```

Source file:

```text
lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean
blob 46c67f4000906b1391a471d6e6396ac0da3c16a5
```

Displayed declaration:

```lean
theorem OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re
    {s : ℂ} (hs : (7 / 8 : ℝ) < s.re) :
    riemannZeta s ≠ 0
```

The direct body delegates to

```text
OAI.SevenEighths.ProbeFinalAssemblyUnconditional.zeta_nonzero
```

in

```text
lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyUnconditional.lean
blob e7c20910424837fb954796e1216f5aa453bbd5da
```

That file in turn imports certified-existence, certified-band assembly, and
moment-profile modules. The general `Foundation` imported by the public
nonvanishing module exposes a very large Dirichlet-​L source surface. This
review does not claim to have closed that transitive dependency graph.

## 4. Challenge and solution separation

The comparator challenge is a separate file:

```text
lean/ComparatorChallenges/QuasiRiemannHypothesis.lean
blob e7d1caf6c579dc9afbf0d2b01f79e5cd2511b028
```

It contains the target declaration with a placeholder. That placeholder is part
of the challenge specification and is not the body of the solution module.

The comparator configuration is:

```text
lean/ComparatorChallenges/QuasiRiemannHypothesis.json
blob acf552468fc23c1a27d685d33983c58c50040542
```

It maps the challenge module to

```text
OAI.NumberTheory.DirichletL.Nonvanishing
```

and names

```text
OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re
```

as the theorem to compare. It lists

```text
propext
Quot.sound
Classical.choice
```

as permitted axioms.

This configuration is useful source metadata. It is not evidence that:

- the exact revision built successfully;
- the declaration's transitive dependencies contain no other assumptions;
- the configured comparison ran;
- the theorem passes the local trust policy;
- the theorem imports into the local environment.

## 5. Environment comparison

External environment:

```text
Lean toolchain:
  leanprover/lean4:v4.34.1
  blob ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5

Mathlib revision:
  d13f23b723b8a846827a245b89c10fc7d3f11612

Lake manifest:
  blob 67d01d2717d0aaff59fb8814bb53581b961f42b4
```

Local stacked environment:

```text
Lean toolchain:
  leanprover/lean4:v4.33.0

Mathlib revision:
  db584cd6d46c92f209a44c0f1c829460d327499d
```

The source and local pins differ in both dimensions.

The displayed theorem uses the unqualified Mathlib name `riemannZeta`, and the
local consumer also uses Mathlib's `riemannZeta`. This supports a
**statement-text alignment**. It does not prove a cross-version definitional
identity or a successful local import.

A later acceptance step must use one of the following exact routes:

1. replay the external declaration in its pinned environment and provide a
   trusted exported theorem/certificate plus a sound local checker;
2. port the declaration and its required dependencies to the local environment,
   prove the exact local theorem, and audit the resulting closure;
3. upgrade the local toolchain and Mathlib under a separately reviewed
   repository migration, then replay both parent and external adapters.

This increment performs none of these.

## 6. Local comparator proposition

The source defines

```lean
def OpenAISevenEighthsClaim : Prop :=
  ∀ s : ℂ, ((7 : ℝ) / 8) < s.re -> riemannZeta s ≠ 0
```

and proves

```lean
OpenAISevenEighthsClaim
  ↔ RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8).
```

This is an exact local proposition comparison. It says what a successfully
transported theorem would prove. It does not transport the external proof term.

## 7. Noncoercible source review

The review distinguishes these checks:

```text
SOURCE_FILE_PRESENT
DECLARATION_LOCATED
STATEMENT_TEXT_ALIGNED
SOLUTION_BODY_LOCATED
CHALLENGE_SEPARATED
COMPARATOR_CONFIG_LOCATED
TOOLCHAIN_ALIGNED
MATHLIB_REVISION_ALIGNED
DEPENDENCY_CLOSURE_REVIEWED
TRUST_PROFILE_REVIEWED
CLEAN_PINNED_BUILD_RECEIPT
LOCAL_ADAPTER_PROVED
```

The pinned review records only the first six.

The local theorem proves:

```lean
¬ openAISevenEighthsReview.AdmissionReady
```

because the toolchain-alignment gate is absent. The record also carries exact
string inequalities for both toolchain and Mathlib pins.

This is a formal statement about the explicit review record. It is not a
mathematical refutation of the external theorem.

## 8. Accepted theorem port

An accepted external raw half-plane port has two independent components:

```lean
structure AcceptedExternalRawHalfPlanePort (σ : ℝ) where
  review : ExternalDeclarationReview
  admissionReady : review.AdmissionReady
  theorem : RiemannZetaZeroFreeRightHalfPlane σ
```

The first component records accepted evidence. The second component is the
actual mathematical theorem term.

Metadata alone cannot inhabit the structure. Conversely, a theorem term with
no accepted source review cannot be reported as an accepted external port.

From a future accepted `7 / 8` port, the source derives only:

```text
NontrivialZeroFreeRightHalfPlane (7/8)
RiemannZetaZeroFreeRightHalfPlane (11/12)
```

No RH result is derived.

## 9. Polynomial-forest interpretation

Let

```text
Z7 = local raw zeta nonvanishing at 7/8.
```

The external-source route is represented by the monomial

```text
source located
* statement aligned
* solution body located
* challenge separated
* comparator config located
* toolchain aligned
* Mathlib aligned
* dependency closure reviewed
* trust profile reviewed
* clean build receipt
* local adapter proved
* local theorem term
  -> Z7.
```

The current valuation is:

```text
1 * 1 * 1 * 1 * 1 * 1 * ? * ? * ? * ? * ? * ? * ?.
```

Therefore the route remains unresolved.

This tree has `Z7` as its canopy. It is not a monomial for RH because the
threshold-order edge points from `7/8` toward larger thresholds, not toward
`1/2`.

## 10. Controls

The controls establish at source-draft level that:

- challenge and solution paths differ;
- locating the comparator configuration does not satisfy the replay gate;
- locating the solution body does not review the dependency closure;
- statement alignment does not imply admission readiness;
- the source and local environments differ;
- `7/8` is not at or left of `1/2`;
- a future accepted port has only the exact regional consequences.

The controls do not test the external theorem.

## 11. Evidence states

Established:

```text
LITERATURE_REVIEWED
SOURCE_DRAFT
EXTERNAL_DECLARATION_LOCATED
STATEMENT_TEXT_ALIGNED
SOLUTION_BODY_LOCATED
ENVIRONMENT_DRIFT_IDENTIFIED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
TOOLCHAIN_ALIGNED
MATHLIB_REVISION_ALIGNED
DEPENDENCY_CLOSURE_REVIEWED
TRUST_PROFILE_REVIEWED
CLEAN_PINNED_BUILD_RECEIPT
LOCAL_ADAPTER_PROVED
```

The external mathematical theorem is not admitted locally.

## 12. Finite diagnostics

Independent finite review-state diagnostics checked all

```text
2^12 = 4096
```

possible gate profiles.

They completed

```text
77,828 assertions
```

covering:

- exact gate membership;
- admission readiness iff every gate is present;
- blocking by each missing environment/trust/replay/adapter gate;
- the source-located but unaccepted profile;
- the rational threshold chain
  `1/2 < 7/8 < 11/12 < 1`.

These checks do not parse Lean, build either repository, inspect transitive
declarations, verify a trust profile, or establish the zero-free theorem.

## 13. Provenance

The proof node and provenance nodes remain separate.

```text
OpenAI source declaration
  sourced by openai/math@1581d4...
  statement compared by this packet

OpenAI direct solution body
  depends on ProbeFinalAssemblyUnconditional.zeta_nonzero

Comparator challenge
  specifies the target with a placeholder

Comparator configuration
  relates challenge and solution modules
  declares a permitted-trust policy

GRWTSK port implementation
  records source status
  defines the local comparator and acceptance gate
  proves no external theorem
```

No numerical contributor weights are assigned.

## 14. Next obstruction

The single next obstruction is an immutable external replay and trust packet
for the exact source revision and theorem, including:

```text
successful clean build in the pinned external environment
exact declaration type
complete transitive dependency closure
actual trust output
absence or classification of placeholders and native dependencies
comparator result
source-bound receipt
```

After that packet exists, a separate increment may prove a sound local checker
or port the theorem into the local environment.

Even then, the result is only the `7 / 8` regional theorem.
