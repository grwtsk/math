# OpenAI Result 007: pinned prime-reciprocal import obstruction and proposed exact repair

Review date: **2026-10-22**  
Owner: `grwtsk/math#630`; arithmetic scopes `#441` and `#571`.  
Status: **SOURCE-RESOLVABILITY-OBSTRUCTION / INERT-PATCH-PROPOSED /
NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_PROOF_NOT_IMPORTED**.

## Selected dependency: the claimed fixed nonproportional affine theorem

The external source is pinned to
`openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a`.
The actual solution entrypoint is
`lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean`
(blob `2bd48811e73bbdc80c1f738fa889a14189186408`),
not the challenge comparator with three intentional `sorry` placeholders.

The relevant, overapproximating **import path** visible in checked source is

```text
OAI.NumberTheory.TwoPointCorrelations.FinalMain
 -> OAI.NumberTheory.TwoPoint.Main
 -> OAI.NumberTheory.TwoPoint.MainWithMRTInputs
 -> OAI.NumberTheory.TwoPoint.PartiallyDischargedMain
 -> OAI.NumberTheory.TwoPoint.Bounds.PrimeReciprocalTheorem
 -> PrimeNumberTheoremAnd.Erdos970.MertensClassical  [unresolved]
```

This is an import-dependency path, NOT an audited theorem-specific
transitive proof dependency. It suffices to identify one concrete
source-resolvability obligation before treating the externally
reported fixed-form estimate as a reusable formal supplier.

The source file
`lean/OAI/NumberTheory/TwoPoint/Bounds/PrimeReciprocalTheorem.lean`,
blob `5dacdbe763e4aac5f1ac8e48f63bc0d55e6f1f42`,
has, at pinned source lines 2 and 29:

```lean
import PrimeNumberTheoremAnd.Erdos970.MertensClassical
...
obtain ⟨C, hC⟩ := Erdos970.Mertens.sum_prime_div_eq_log_log
```

The nominal external dependency is
`AlexKontorovich/PrimeNumberTheoremAnd@c39a751132c88b6e8080b74c74023fd95b3d8be0`,
as recorded in both the OpenAI `lean/lake-manifest.json`
(blob `67d01d2717d0aaff59fb8814bb53581b961f42b4`)
and `lean/lakefile.lean` (blob
`66c3867331c7c607ffc0e60955cc86cccf046e12`).

The nominal pinned package's `PrimeNumberTheoremAnd/Erdos970`
directory is not present in the public source tree at that revision.
Its root module imports `PrimeNumberTheoremAnd.IEANTN.Mertens`,
not the referenced `Erdos970.MertensClassical` module.
No other concrete source supplying this missing import was
established in the bounded audit. This is a **source lookup
obstruction**, not an observed Lean compiler failure: a complete
resolved package graph and clean replay have not been run.

## An actual upstream theorem with the requested mathematical scope

The same pinned dependency DOES contain

```text
PrimeNumberTheoremAnd/IEANTN/Mertens.lean
blob: 1c45fc368e4fc7c3ff7876be4f8e67c3d6f2a6be
namespace Mertens
theorem sum_prime_div_eq_log_log :
  ∃ C, ∀ x, 2 ≤ x →
    |∑ p ∈ Ioc 0 ⌊x⌋₊ with p.Prime,
       (1:ℝ)/p - log(log x)| ≤ C
```

The theorem has an authored proof body at the pinned source,
starting at line 2127. Its mathematical content is Mertens'
classical prime-reciprocal bounded-error theorem. Source
authorship belongs to the pinned `PrimeNumberTheoremAnd`
contributors; no new proof of this analytic theorem is claimed
by this project.

The target `PrimeReciprocalInput` in the provider's
`lean/OAI/NumberTheory/TwoPoint/Bounds/MertensScale.lean`,
blob `70ed8879bcb968374e976a321bd82e53003b22db`,
has the same bounded-error requirement but writes its prime
set as `sievePrimesUpTo x`. The target source ALREADY drafts
`sievePrimesUpTo_eq_Ioc`, so that finite-set convention
is explicitly compared.

**Type compatibility remains to be established by Lean**, not by
the visual similarity of the two source statements.

## Source-locked, deliberately UNAPPLIED edit

An inert unified-diff candidate is added to `grwtsk/math` at

`docs/verification/_unscoped/openai-result007-prime-reciprocal-import-630-v0.1.patch`

with blob `ceaec6a0f3e6fb568abf51848e09ea7ca0d04ebf`.

It applies only to the pinned external file
`OAI/NumberTheory/TwoPoint/Bounds/PrimeReciprocalTheorem.lean`
and proposes EXACTLY three line replacements:

```diff
-import PrimeNumberTheoremAnd.Erdos970.MertensClassical
+import PrimeNumberTheoremAnd.IEANTN.Mertens

-The formal proof uses `Erdos970.Mertens.sum_prime_div_eq_log_log`.
+The formal proof uses `Mertens.sum_prime_div_eq_log_log`.

-  obtain ⟨C, hC⟩ := Erdos970.Mertens.sum_prime_div_eq_log_log
+  obtain ⟨C, hC⟩ := Mertens.sum_prime_div_eq_log_log
```

The original source had one exact import line and one exact
invocation. All three replacements were checked against its
pinned source text, with no other lines changed in the
proposed in-memory source. **No patch was applied to OpenAI's
repository or to a dependency checkout**, and no compilation
or CI success is inferred. The repository's own
`PrimeNumberTheoremAnd-lean4341.patch` has empty source
content at the inspected pin; it does not visibly add the
missing module.

## Qualification and negative acceptance gates

The following are separate obligations:

1. Resolve the complete external package graph at pinned
   `openai/math` revision and identify the actual source for
   EVERY import on the selected proof path. Reproduce and
   independently confirm the missing-source finding.
2. Check whether the exact proposed replacement compiles
   under OpenAI's Lean 4.34.1, Mathlib
   `d13f23b723b8a846827a245b89c10fc7d3f11612`
   and pinned third-party packages. The nominal PNT library
   itself records Lean 4.34.0 and a different Mathlib pin,
   requiring a controlled compatibility check.
3. Re-elaborate the solution declaration and all required
   imports; print its exact elaborated type and transitive
   `#print axioms` report. An unresolved import, compilation
   failure, unlisted axiom, `sorryAx`, or missing receipt
   is NOT a successful verified proof.
4. Only after an accepted external certificate, separately
   port or recreate the proof in `grwtsk/math`'s Lean 4.33.0 /
   Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`,
   with the local `ℤ→ℂ` affine-sum comparison theorem audited.
   Do not change local toolchain pins merely to hide the problem.
5. The conditional local source proposition
   `FixedNonproportionalAffineLogSaving` remains **uninhabited
   in the audited local source**. A paper citation or external
   `.lean` filename cannot construct it.

Matching GitHub Actions workflow runs on the inspected provider
head and check runs on the earlier local candidate head were not
returned by the available read calls. This is an **absence of
retrieved receipts**, not a proof that no builds happened.

Even if every proof qualification step succeeded, the resulting
arithmetic estimate is ordinary **fixed nonproportional binary**
cancellation; it is not the full higher-order uniform Chowla
supplier for growing finite windows and does not imply GUE or RH.

**Evidence:** `PROPOSED_UNAPPLIED_PATCH / EXACT_SOURCE_MATCHED /
PROVIDER_IMPORT_PROVENANCE_UNRESOLVED / NO_LEAN_OR_LAKE_RUN /
NO_KERNEL_OR_AXIOM_AUDIT / NO_EXTERNAL_THEOREM_PORT`.
