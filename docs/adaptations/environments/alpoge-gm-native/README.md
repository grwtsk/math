# Native Alpöge \`Gm\` transport — isolated source adapter

This directory contains an **isolated Lean candidate** compiled only against
the independently pinned Alpöge source environment, not against the default
\`grwtsk/math\` Lean 4.34.1/Mathlib revision. The adapter is mathematically
RH-independent: it imports the genuine **intermediate** \`CoreGm.lean\` and
\`Window.lean\` modules, not \`Main\`, \`FinalTheorems\`, \`everyCharacter\`
or \`RiemannHypothesis\`.

**Source pin:** \`tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f\`.
Original \`lean/lean-toolchain\`: \`leanprover/lean4:v4.33.1\`;
\`lean/lakefile.toml\` Mathlib:
\`0df444a360eaa60ab8c11dca51a86af692955474\`.
Intermediate \`CoreGm.lean\` Git blob:
\`3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d\`.
Native \`Window.lean\` Git blob:
\`099d96fec932b03a505ea79a81c45bcc3fbf0ea3\`.

The five Lean declarations in [Bridge.lean](Bridge.lean) consume
**exact native types**:

\`\`\`text
EAtH Λ H.toHostRaw TT x eps C
CoreAtH H.toHostRaw TT eD eL K cHH eK eps x
Λ.Gm x
Formalism.HC.HasWindows
\`\`\`

The first theorem transports the genuine \`UpperTheory.Comparison₂.core_gm\`
bound to a single observed arithmetic value under an explicitly certified
source error and an exponent margin. The second transports original
closed \`HasWindows\` through an eventually valid source error/margin
inequality, using the original source theorem \`HasWindows.mono\`.

The additional three proof candidates work directly on the **native source arithmetic**.
`sourcePrimeDelta` is the original finite signed variation of von Mangoldt
coefficients with the full `Level.Nt`, `Level.wt`, and character phases.
`observedNativeGm` retains the unchanged original analytic `L'/L(1,chi)`
corrections by construction. Theorems `observed_native_gm_eq_of_exact`
and `observed_native_gm_error` give exact return and certified finite
error, and `observed_native_gm_upper_with_certified_arithmetic`
consumes the **genuinely typed** upstream `EAtH` and `CoreAtH`
conditions. A cross-version equality to the 4.34.1 local `sourceGm`
remains a separate, uncompiled source normalization obligation.

**Nothing here proves \`EAtH\` or \`CoreAtH\`.** Their actual \`Frame\`,
\`HostAx\`, conductor and auxiliary estimates remain intact. The
observation's equality to the locally constructed
\`GRWTSK.NumberTheory.AlpogeGmArithmeticReturn.sourceGm\`
needs an independent *cross-edition source normalization lemma*; that
lemma cannot be proved by importing incompatible Mathlib environments
together. In particular the \`L'/L(1,χ)\` term must be retained and
nonprincipal characters must be preserved exactly.

### Reproducible separate verification (NOT_RUN here)

In a disposable, complete checkout of the upstream pin with its own
Lean/Lake and Mathlib dependencies installed:

\`\`\`sh
cd /path/to/tamnd-riemann-lean/lean
lake build Development.AutomorphicArithmetic.PrimitiveCosets.CoreGm
lake env lean --trust=0 /path/to/grwtsk-math/docs/adaptations/environments/alpoge-gm-native/Bridge.lean
\`\`\`

For an axiom audit, first place the file at the corresponding
\`src/GRWTSK/NumberTheory/AlpogeNativeGmTransport.lean\` module path in
a disposable copy of the upstream build and import it from an isolated
\`/tmp/NativeBridgeAxioms.lean\`:

\`\`\`lean
import GRWTSK.NumberTheory.AlpogeNativeGmTransport
#print axioms GRWTSK.NumberTheory.AlpogeNativeGmTransport.observed_gm_upper_of_native_suppliers
#print axioms GRWTSK.NumberTheory.AlpogeNativeGmTransport.observed_gm_windows_of_native_windows
\`\`\`

Do not add this bridge to the default \`grwtsk/math\` build or
change the root dependency pin. No Lean compiler, elaboration receipt,
kernel replay or axiom audit is available from the current environment:
**NOT_RUN**. Every theorem here is a **SOURCE_PROOF_CANDIDATE**, not an
accepted checked theorem. This is a typed interface advance, not an
independent proof of a new \`Gm\` bound or RH.

Mathematical consumer: [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850),
related source [#1849](https://github.com/grwtsk/math/issues/1849).


## 2026-11-22: exact source normalization and analytic-constant supplier

Four new adjacent Lean **source candidates**, with per-file mathematical provenance, extend the original five-theorem adapter:

- [Normalization.lean](Normalization.lean) / [proof](Normalization.md): exact native Level.Gm(x) for x≥1 as signed finite prime-power arithmetic minus xlogx plus x times the **original** analytic constant; proof that Level.Nt contains no trivial characters; and the identity **Level.Gm(1)=A_Level**.
- [LogDerivativeCertificate.lean](LogDerivativeCertificate.lean) / [proof](LogDerivativeCertificate.md): Mathlib's unconditional genuine nonprincipal LFunction(1) nonvanishing, finite complex ratio-disk algebra, Mathlib's gamma interval and original Level-weighted analytic constant center/radius.
- [EventualIntegerReturn.lean](EventualIntegerReturn.lean) / [proof](EventualIntegerReturn.md): the actual EAtH, CoreAtH, Frame, HostAx and TT witnesses imply the specified eventual integer upper margin when supplied at ALL sufficiently large n; original intermediate Landau.zero_free_of_Chebyshev_growth consumes the separate all-real bound.
- [ArithmeticCertificate.lean](ArithmeticCertificate.lean) / [proof](ArithmeticCertificate.md): fully signed actual Level.Gm arithmetic error bound including **n-dependent** analytic constant radii; every-int eventual inequality is a separate explicit certificate requirement, not a supplied fact.

Pinned **original** Mathlib also proves the unconditional nonprincipal theorem DirichletCharacter.LFunction_apply_one_ne_zero in Mathlib/NumberTheory/LSeries/Nonvanishing.lean, blob 610bd56365d49c5ffa9ebeb29e0a383c768248e2. The periodic zero-mean Abel summation bounds (for N divisible by q≥2, N≥3) are
\[
|L(1,\chi)-S_N|\le q/N,\qquad
|L'(1,\chi)-T_N|\le q\log N/N.
\]
They are proved mathematically in LogDerivativeCertificate.md, but **not formalized in Lean** in these four new modules. Together with source-traced finite rational log and gamma intervals they give actual per-character L'/L error certificates. The executed [standard-library certificate checker](../../../../scripts/verify_native_gm_log_derivative_certificates.py) and [cyclic-character subgroup checker](../../../../scripts/verify_native_gm_cyclic_level_certificates.py) have exact-rational output, but do not count as Lean verification.

The source's EAtH.bdL bounds only certain H.Bounded characters; it must not be misrepresented as a bound for every retained Level.Nt character. The separate full analytic constant certificate avoids that wrong implication.

### Required isolated source staging / verification (still NOT_RUN)

Use a **disposable** complete checkout of the immutable original Alpöge mirror and its exact Lean toolchain and Mathlib. Do not change grwtsk/math root. From grwtsk/math root, let UP denote the original mirror's lean directory and execute:

1. Install the original Mathlib dependencies at the upstream pin (Lean v4.33.1; Mathlib 0df444a360eaa60ab8c11dca51a86af692955474). Do not import source from the original final Main theorem.
2. Copy Bridge.lean to UP/src/GRWTSK/NumberTheory/AlpogeNativeGmTransport.lean; Normalization.lean to UP/src/GRWTSK/NumberTheory/AlpogeNativeGmNormalization.lean; LogDerivativeCertificate.lean to UP/src/GRWTSK/NumberTheory/AlpogeNativeGmLogDerivativeCertificate.lean; EventualIntegerReturn.lean to UP/src/GRWTSK/NumberTheory/AlpogeNativeGmEventualInteger.lean; ArithmeticCertificate.lean to UP/src/GRWTSK/NumberTheory/AlpogeNativeGmArithmeticCertificate.lean.
3. Build and run trust=0 against each staged file in dependency order. Axiom audit each **source-verified** declaration only after it elaborates. Do not promote any theorem when a transitive dependency contains a proof hole or a version mismatch.

The exact Git blobs and declaration names are recorded in [verification.toml](verification.toml) next to these sources. A manifest or remote file readback is **not** a checked Lean proof.

**Remaining proof tasks:** the original typed Level.cyc realizations for the quadratic modulo-4 and quartic modulo-5 character examples, periodic Abel tail and differentiated Dirichlet series for genuine L(1), and the native integer-to-real curvature interpolation. Most importantly, neither eventual true EAtH/CoreAtH witnesses nor eventually universally successful signed arithmetic certificates have been supplied. Hence no new RH result is claimed.
