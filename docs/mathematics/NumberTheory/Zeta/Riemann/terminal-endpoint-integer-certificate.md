# Reusable integer seed certificates and terminal endpoint 4097

## Scope and status

The mathematical dependency is
`grwtsk/math@db54ffe311be3f7faaf15d0a9c0767a0bf52ba49` (PR #336).
No Lean, Lake, native decision,
code-generation, worker, or accepted replay execution was performed.
All proof scripts are `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.
The original `SourceAcceptance`, numerical evaluator and analytic estimates
are unchanged. Scripts may require elaboration repair.

The two advances are a reusable constructor for exact integer seed certificates,
and its application to the **separate terminal base 4097** of the 4096-term
Newton packet. This is not a fourth prefix endpoint. The 64 complete prefix
blocks and final six-field aggregation remain separate proof obligations.

## 1. Bind the integer encoding to the original source

`RationalPowerIntegerSeed.Encoding` stores an integer argument numerator `w`,
positive argument denominator `D`, and integer numerator/denominator pairs
for the original argument-radius bound `R=a/b` and logarithm displacement `d=e/f`.
Sign evidence requires `D,b,f>0` and `a,e>=0`.

A separate `Binding q z p j encoding` proves four exact identities against the
same base `q`, exponent `z` and schedule `p`:

* `p.degree = j+1`;
* the original reduced argument is `w/D`;
* the original radius is `a/b`;
* the original displacement is `e/f`.

There is no seed-value, complete-error, endpoint-equality, or source-acceptance
premise in this binding. It is mathematical evidence, not a trusted metadata
flag. Equality of rounded states alone does not supply any of these identities.
Original endpoint admissibility is retained separately.

## 2. Derive the exact polynomial and its complete error once

Reuse the inherited Gaussian-integer recurrence

\[
P_0=S_0=1,\quad C_0=1,\qquad
P_{j+1}=P_jw,\quad S_{j+1}=D(j+1)S_j+P_{j+1},\quad C_j=D^jj!.
\]

The existing refinement identifies

\[
S_j/C_j=\sum_{k=0}^j (w/D)^k/k!.
\]

For `K=j+1`, let `S=S_j` and `C=C_j`. The original Taylor allowance and complete
seed error are

\[
t=2R^K/K!,\qquad e_0=t+2(\|S/C\|_1+t)d.
\]

Define integers

\[
T_n=2a^K,\quad T_d=b^KK!,
\]
\[
E_n=T_nCf+2[(|S_1|+|S_2|)T_d+T_nC]e,\qquad E_d=T_dCf.
\]

Since `C,T_d,f` are positive, expanding and clearing denominators gives
`e_0=E_n/E_d` exactly. This preserves the original Taylor allowance, the
rectangle norm of the same polynomial, and all logarithm uncertainty. It is
not a replacement error bound. The generic `seed_error_identity` contains
this algebra once for every correctly bound encoding and positive term count.

For grid `G=2^bits`, integer windows for a proposed initialized state `(U,V,E)` are

\[
CU\le GS_1<C(U+1),\quad CV\le GS_2<C(V+1),
\]
\[
E_d(E-1)<GE_n+2E_d\le E_dE.
\]

Cross multiplication recovers both component floor windows and the complete
error ceiling window in the original `SeedValid`. The `+2E_d` term is the
original two-component initialization-rounding allowance. Denominator signs,
nonnegative error and both strict window boundaries remain explicit.

`endpoint_eq_of_windows` composes this reconstruction with every adjacent
integer transition, exact last-state decoding and the original admissibility
predicate. It supplies exact equality with the old complete `State`, not merely
another enclosure. It neither generates a certificate nor claims bounded
runtime, proof size, memory use, or universal requested-precision attainment.

## 3. Apply the constructor to the actual terminal source

Retain the fixed rational center

\[
c=\tfrac12+(7067362571/500000000)i
\]

and common exponent `-c`. The terminal input is 4097, not 4096. The unchanged
13-fuel halving rule gives log exponent 12 and mantissa `4097/4096`, whose
Cayley ratio is `1/8193`.

With the existing rational lower/width functions, the original midpoint and
half-width are exactly

\[
\lambda=12L_{18}(2)+L_{18}(4097/4096)
 +[12\Delta_{18}(2)+\Delta_{18}(4097/4096)]/2,
\]
\[
\eta=[12\Delta_{18}(2)+\Delta_{18}(4097/4096)]/2.
\]

The factor 12 applies to **both** logarithm value and uncertainty. The mantissa
width is positive, however small. The source separately identifies these finite
rational expressions and binds the reduced argument, radius and displacement.
No rational number is declared equal to an exact real logarithm.

The schedule is unchanged: eighteen logarithm terms, twenty-two Taylor terms,
eight squarings, and 64 grid bits. Stage 21 represents the 22-term seed. Its
unreduced denominator has 3461 decimal digits; the complete-error denominator
has 7231. These sizes are arithmetic observations, not resource guarantees.
The three integer-window proof scripts use ordinary `norm_num` and have not run.

## 4. The exact terminal trace and the unchanged checker

At `G=2^64=18446744073709551616`, the initialized integer state is

\[
(16268772562676342547,-8045531057412659087,86).
\]

All nine value/error states are explicit in `terminalTrace`. The error numerators
are `86,229,624,1439,3463,7262,11905,11251,3952`. They are not assumed monotone;
each transition is checked against the same quadratic error recurrence and
rounding allowance.

The final exact state is

\[
V=\frac{-67646576876192498+280143557688622374i}{G},\qquad E=\frac{3952}{G}.
\]

`terminal_endpoint_compute` has no desired endpoint equality or
`SourceAcceptance` premise. It is a closed source proof script, not an accepted
Lean result. `terminal_check` supplies the original `checkTerminal` when a
transcript's complete terminal record is literally this output.

`withTerminal prefix` attaches that record without changing any prefix entry.
`attached_terminal_check` has a closed proof draft for this record.
`source_acceptance_of_prefix_and_final` still requires all 64 original prefix
block checks and the original final six-field/two-tolerance check. It supplies,
rather than edits, the inherited 66-part `BlockObligations` predicate. Therefore
there is a source-draft route with 65 remaining data-check premises, while all
historical obligations remain **unaccepted by Lean**, including this terminal
until the new script and its dependencies are checked.

## 5. Why exact source binding matters

A bounded diagnostic shows that changing 22 Taylor terms to 23 can leave the
initial grid state unchanged for this terminal. The two exact polynomials are
different. The generic degree identity rejects the altered polynomial, even
though rounding windows alone happen to agree.

Similarly, dropping only the tiny mantissa-width contribution can leave every
stored state unchanged. Exact displacement/error identities still prohibit
that omission. Dropping the multiplier 12 from the log(2) uncertainty produces
initial error numerator 9 instead of 86; dropping all logarithm uncertainty
produces 3. Both fail the original complete-error initialization check.

These examples do not justify weakening the original checker. They explain why
rounded equality, a small residual, or a matching hash cannot establish that
the correct source expression was evaluated.

## 6. Remaining boundary

No prefix block, final aggregation, `SourceAcceptance`, actual zero-count
certificate, complete canonical head, critical-line conclusion, strict prime
margin, Legendre result, or RH result is supplied. No historical source file,
public aggregate import, verification hold or issue disposition is changed.

Trusted elaboration and resource assessment of the generic refinement, concrete
source identities and integer leaves are mandatory. Their exact types, generated
structure members, all inherited imports/axioms and computational dependencies
still need review. Diagnostic scripts, data and results stay outside the pure
mathematical increment; they do not establish an analytic theorem or Lean
acceptance. No byte-decoder/provenance refinement or performance claim is made.
