# Source-bound first-block verification for the concrete Newton packet

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No Lean, Lake, native decision,
code generation, worker execution, or accepted external replay was performed.
The statements below describe mathematical derivations and unexecuted proof
scripts. They are not kernel-accepted results. SourceAcceptance remains open.

Parent: grwtsk/math PR #336, head db54ffe311be3f7faaf15d0a9c0767a0bf52ba49,
tree 6bde817d4385c1d3ba5658318b174cfcc1a5fcd1. Inherited Mathlib:
db584cd6d46c92f209a44c0f1c829460d327499d. Lean: leanprover/lean4:v4.33.0.

## 1. Replace per-endpoint scaffolding with one finite family

The original packet has 4096 included integer bases and the separate terminal
4097, with the same exponent -c, where

    c = 1/2 + (7067362571/500000000)i.

Only bases 1 through 64 are addressed here. The fixed schedule is unchanged:
18 logarithm terms, 22 Taylor terms, eight restored squarings, 64 grid bits,
and the original 13-fuel dyadic log-exponent proposal rule. Each endpoint still
faces every original admissibility guard. Base 64 crosses to log exponent 6;
no constant reduction exponent is imposed across the block.

Three previous individual endpoint drafts do not establish this block. This
increment provides a uniform source proof draft for all 64 positions, with
64 explicit initial integer triples and a generic proof of every subsequent
integer step. It adds 61 previously uncovered endpoint equalities in source
form, but ZERO kernel-accepted endpoint or block results.

## 2. Canonical normalization comes from the original rational input

For the original rational argument a=(x,y), set

    D = den(x) den(y),
    w = (num(x) den(y), num(y) den(x)).

Rational canonical denominators are positive. Their defining identities prove
w/D=a. Thus the normalization contains no externally supplied argument,
logarithm enclosure, denominator, or claimed analytic error.

The inherited integer Taylor recurrence gives, at stage j,

    S_j / C_j = sum_(k=0..j) a^k/k!,
    C_j = D^j j!.

Stage 21 is precisely the original 22-term seed. Both original logarithm
widths enter its argument/radius/displacement computations through the
unchanged rational supplier. Normalization does not replace a midpoint by an
actual logarithm, discard the mantissa contribution, or alter a schedule.

For original radius R and displacement delta, let

    Tn = 2 num(R)^(j+1),
    Td = den(R)^(j+1) (j+1)!,
    En = Tn C_j den(delta)
       + 2[(abs(Re S_j)+abs(Im S_j))Td + Tn C_j] num(delta),
    Ed = Td C_j den(delta).

The source derives the EXACT error identity

    En/Ed = t + 2(rect(seed)+t) delta,
    t = 2 R^(j+1)/(j+1)!.

Denominator positivity is established independently. Nonnegative original
R and delta give error nonnegativity. No freely chosen smaller error replaces
the source expression. The generic three integer-window theorem then recovers
the original rational SeedValid predicate, retaining the +2/grid initialization
allowance and strict sides of the floor and ceiling cells.

Using the product of canonical denominators can enlarge intermediate integers.
In this bounded suite the largest seed denominator has 4419 decimal digits,
and the largest complete-error denominator has 6926. These are size observations,
not proof-resource bounds. No speed, memory, or proof-size improvement is claimed.

## 3. Integer execution preserves the entire historical State

For grid G=2^bits and current triple (u,v,e), define

    Ar = u^2-v^2,
    Ai = 2uv,
    Ae = e[2(abs(u)+abs(v))+e]+2G,
    next = (Ar div G, Ai div G, -((-Ae) div G)).

Here div is INTEGER EUCLIDEAN division; for G>0 it is floor, including negative
numerators. Negating the floor of -Ae/G gives ceiling. Lean's pinned core
Int.emod_add_mul_ediv, emod_nonneg, and emod_lt_of_pos give the quotient windows.
These windows establish every conjunct of the unchanged StepValid predicate.
In particular the quadratic error term and two-component local allowance are
retained before error rounding, and nonnegative stored errors are preserved.

The generic induction proves

    original_run(bits, seed, error, s)
      = decode(bits, integer_iterate(bits, checked_initial_state, s)).

Both complex coordinates AND the stored error agree exactly. This is not a
claim that two enclosures overlap. The logical integer-division definitions are
used; their compiler overrides and any code-generated execution remain unaudited.
No native decision is used in the source scripts.

## 4. All first-block seed proposals are checked

The source contains 64 initial triples. It groups the index i as i=8g+j,
g,j in Fin 8, deriving coverage and uniqueness. Eight input-guard lemmas and
eight seed-window lemmas each enumerate the eight indices in their group.
They have closed ordinary norm_num proof scripts with no acceptance premises.

This is a reduction in duplicated source scaffolding, NOT a measured proof
performance result. Large canonical rational calculations, numerator extraction,
and integer inequalities remain in those scripts. They may fail elaboration,
require repairs, or need further arithmetic decomposition when authorized Lean
verification occurs. They have not been run or benchmarked.

The resulting endpoint_compute theorem covers every i in Fin 64. Its output
is an exact integer expression: decode of eight integer steps from that row's
checked initial triple. It is not an arbitrary asserted output.

A typed fill function sets positions 0..63 to these outputs while leaving all
later records and the terminal supplied separately. first_block_check proves
in source form the ORIGINAL checkPrefix predicate for block zero, for any such
later records and terminal. There is no 61-entry first-block remainder premise.
Arbitrary external transcript reuse still needs equality with every one of the
64 complete output records; JSON or a digest is not mathematical evidence.

The source_of_remaining adapter keeps 63 other prefix-block checks, the terminal
check and final six-field aggregation check explicit. SourceAcceptance is not
proved. The historical definition, strict tolerances/margins, and analytic source
identities are unchanged. No complete zero count or prime margin follows.

## 5. Bounded diagnostic evidence

Four normally completed exact-arithmetic chunks freshly recomputed bases 1..64.
They did not load the parent endpoint values as computation inputs. For each
endpoint, direct factorial summation, coefficient recurrence, reverse Horner
and the integer normalization agree. The complete seed-error fraction agrees
with the original formula, every seed window passes, and all nine full states
match the rational recurrence. The outputs then match the retained parent
transcript by base identity and all three State fields.

The reconciled suite completed 7824 assertions: 64 endpoint guards; 576 complete
state comparisons expressed componentwise; 512 three-window step checks; 3456
individual state-field mutation rejections; signed-division and exact-coverage
controls, plus seed and source-identity comparisons. Counts include repeated
elementary checks and are not numbers of independent mathematical proofs.

No floating-point arithmetic, transcendental evaluation, whole-packet replay,
new joint-zeta calculation, external-zero certification, or prime margin was
used. The retained Python endpoint implementation is reused; alternative
internal recurrences are not an independent complete verifier. Python does not
establish the Lean equations, analytic identities, or inherited trust closure.

An initial chunk stopped at Python's integer-to-string limit while reporting
large denominator sizes; after setting a bounded larger rendering limit the
whole affected chunk was rerun normally. An initial reconciliation command had
a syntax typo and executed nothing; the corrected reconciliation completed.
Neither failed command is counted as a successful test run.

## 6. Remaining boundary

Elaborate and audit the canonical normalization, Euclidean recurrence refinement,
all 16 grouped input/window scripts, block membership and composition. Then
prove the remaining 63 prefix blocks, terminal, and final aggregation at the
exact source identity. All inherited declaration types, generated instances,
imports, axioms and any native/runtime dependencies remain audit obligations.

A local numerical packet does not provide sharp complete multiplicity counting,
canonical head completeness, first-zero ordering, critical-line status, or strict
all-interval prime margins. Nothing here releases an execution hold, merges a
branch, changes issue state, proves Legendre's conjecture, or proves RH.
