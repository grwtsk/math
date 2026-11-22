# Exact small-character phases for the signed Weil coefficients

Local attribution: grwtsk contributors.

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean parsing, elaboration, exact types, builds, fresh kernel replay, transitive
axiom audit and independent mathematical review: NOT_RUN. Novelty and completeness
of the prior-art search: UNASSESSED. Finite integer controls below are not Lean
verification and do not establish an arithmetic sign.

MSC2020: 11L03 (primary), 11M26, 11M41, 65G20.
Coordination: grwtsk/math#1801, iteration 12, 2026-11-18 America/Los_Angeles.
Source inspection: `988cea9d49f5532be085918076c380ed6a400c20`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact target and consumer

The preceding EBR-1 statement in
[WeilExponentialBumpRoundedEvaluation.lean](WeilExponentialBumpRoundedEvaluation.lean)
requires actual full-complex bounds `norm (chi(n)-z(n)) <= ez(n)` on every
label of the exact arithmetic inventory. Naming a character or writing a list
of roots of unity is not sufficient. This increment constructs two characters
in the existing `DirichletCharacter` type and supplies zero-radius tables for
ALL natural labels. It proves nonprincipality, primitivity at the stated level,
and the actual gamma parity, rather than assuming these as table metadata.

The source return is direct: SCP-14 and SCP-15 consume the unchanged RBC-1
coefficient theorem and bound the original coefficient
`primeWeight n * conj (chi n)`. SCP-6 and SCP-12 supply EBR-1's phase premise
on any finite inventory without altering that inventory. The modulus-three
instance is used in [WeilModThreeBumpEvaluation.md](WeilModThreeBumpEvaluation.md).
The quartic example tests the genuinely complex path; it is not used to replace
the character in the modulus-three calculation.

There is no new definition of an L-function, Weil form, prime weight, conductor,
or gamma kernel. In particular, character parity is not parity of the real odd
bump. Both constructed characters happen to be odd.

## Complete primary argument

### Construction and multiplicativity

For each natural n, define the periodic tables

| n modulo 3 | 0 | 1 | 2 |
|---|---:|---:|---:|
| chi3(n) | 0 | 1 | -1 |

and

| n modulo 5 | 0 | 1 | 2 | 3 | 4 |
|---|---:|---:|---:|---:|---:|
| chi5(n) | 0 | 1 | i | -i | -1 |

Use these tables on `ZMod 3` and `ZMod 5`, respectively. Each table takes
one to one, and comparison on all 9 or 25 residue pairs proves
`chi(ab)=chi(a)chi(b)`. For the quartic table this is also seen from the
unit cycle `1,2,4,3` and the corresponding values `1,i,-1,-i`; the sole
nonunit is zero. Since each modulus is prime, every nonzero residue is a
unit. Thus the zero branch proves the exact `MulChar.map_nonunit'`
requirement. The constructors therefore produce actual Dirichlet characters.

For arbitrary natural n, the value of its image in `ZMod q` has representative
`n % q`; reducing this representative again does not change it. This proves
the all-natural evaluation identities SCP-1 and SCP-7. They include multiples
of the conductor and do not require a coprimality assumption.

### Nonprincipality, conductor, and parity

At residue two, the first character is -1 and the second is i, whereas the
principal character takes the value 1 there. This proves SCP-2 and SCP-8.
The pinned library gives `conductor chi | q`. For prime q, the conductor is
therefore 1 or q. The library equivalence
`chi = 1 <-> conductor chi = 1` excludes the first option. Consequently the
characters are primitive, with conductors exactly 3 and 5 (SCP-3 and SCP-9).
No larger inducing modulus is inserted into an archimedean logarithm.

The residues of -1 are 2 modulo 3 and 4 modulo 5; both table values are -1.
This proves actual odd character parity (SCP-4 and SCP-10). Unfolding the
maintained `OddRootProjection.gammaParity` then gives parity 1 in both cases
(SCP-5 and SCP-11). The parity-zero gamma source is not silently substituted.

### Exact phase certificates and signed complex readout

Subtracting the literal table value from the actual character value gives zero.
Its norm is zero. Hence SCP-6 and SCP-12 supply phase radius zero for every
natural n. There is no numerical argument, trigonometric evaluator, approximate
root of unity, or fixed phase tolerance in these statements.

For every complex z, the quartic character gives the following exact readout:

    Re(conj(chi5(n))*z) = 0, Re(z), Im(z), -Im(z), -Re(z)

in residues 0,1,2,3,4 respectively (SCP-13). For example,
`Re((-i)*(x+i*y))=y`, while `Re(i*(x+i*y))=-y`.
The mixed imaginary couplings cannot be dropped for an arbitrary complex
correlation. The theorem remains quantified over ALL complex z, not just
real correlations of the particular bump.

### Return to the original weighted coefficient

Write w(n)=Lambda(n)/sqrt(n), and let w0,ew be the existing rational weight
center and radius, with n>=1 and positive root resolution D. RBC-1 states

    norm (w(n)*conj(chi(n)) - w0*conj(z)) <= ew + abs(w0)*ez.

Substitute the exact table z and its zero phase radius. The right side is ew,
which proves SCP-14 and SCP-15. The signed center is NOT replaced by abs(w0)
or a norm of the character. All prime powers keep the same von Mangoldt
weights, and non-prime-power labels still have zero weight from the existing
supplier. The new module neither chooses nor shortens an active inventory.

## Individual declaration and provenance records

All public names below have prefix
`GRWTSK.NumberTheory.WeilQuadraticForm.SmallCharacterPhases` and reside in
[WeilSmallCharacterPhases.lean](WeilSmallCharacterPhases.lean).
All carry the candidate status and NOT_RUN formal checks stated above.

### SCP-1: `three_apply_nat`

Domain: every natural n. Source: the literal threeTable constructor and pinned
`ZMod.val_natCast`, plus idempotence of remainder. Argument: reduce n modulo
three twice. Consumer: SCP-6 and every natural-label sample of chi3.
No analytic or character-enclosure hypothesis remains.

### SCP-2: `three_ne_one`

Domain: the actual three constructor. Source: pinned `MulChar.one_apply` and
the nonzero residue 2. Argument: evaluation at 2 gives -1=1 under the rejected
principal-character hypothesis. Consumer: SCP-3 and EBR-1's nonprincipal input.

### SCP-3: `three_isPrimitive`

Source: pinned `DirichletCharacter.conductor_dvd_level`, `Nat.dvd_prime`, and
`DirichletCharacter.eq_one_iff_conductor_eq_one`; constructor and SCP-2.
Argument: the conductor divides 3 but is not 1. Consumer: primitiveArithmeticValue
at level 3. No assumed conductor equality or transfer from an imprimitive source.

### SCP-4: `three_odd`

Source: pinned definition `DirichletCharacter.Odd`; threeTable at residue 2.
Argument: evaluate -1. Consumer: identification of the original gamma factor.
This statement concerns character parity only.

### SCP-5: `gammaParity_three`

Source: maintained `OddRootProjection.gammaParity` in WeilGammaData.lean;
threeTable. Argument: its conditional test `chi(-1)=1` is false. Consumer:
EBR-1's parity-one kernel and gammaConstant 3 1.

### SCP-6: `three_phase_error`

Domain: every natural n. Source: SCP-1 and norm_zero. Argument: the difference
is identically zero. Consumer: RBC-1, SCP-14, and the finite EBR-1 input table.
There is no unspecified phase-error premise.

### SCP-7: `quarticFive_apply_nat`

Domain: every natural n. Source: the literal quarticFive constructor and pinned
ZMod representative/remainder identities. Argument: reduce n modulo five twice.
Consumer: SCP-12 and SCP-13, preserving imaginary signs.

### SCP-8: `quarticFive_ne_one`

Source: pinned `MulChar.one_apply` at residue 2. Argument: imaginary parts would
make 1=0 if i were the principal value 1. Consumer: SCP-9 and primitive source
admission. This fixes the character with generator 2 mapping to i.

### SCP-9: `quarticFive_isPrimitive`

Source: the same pinned conductor theorems as SCP-3 and SCP-8. Argument:
the conductor divides prime 5 and is not 1. Consumer: an actual primitive
complex-character arithmetic value at level 5, not a modulus-inflated value.

### SCP-10: `quarticFive_odd`

Source: pinned Odd definition and quarticFiveTable at residue 4. Argument:
chi5(-1)=-1. Consumer: source gamma parity. No real-valued-character assumption.

### SCP-11: `gammaParity_quarticFive`

Source: maintained gammaParity and the actual table value at -1. Argument:
unfold the conditional and reject equality to 1. Consumer: the parity-one
archimedean source for this complex character.

### SCP-12: `quarticFive_phase_error`

Domain: all natural n. Source: SCP-7. Argument: exact equality makes the full
COMPLEX norm error zero. Consumer: RBC-1, SCP-15, and future EBR-1 instances.
A real-component-only check would not be an adequate replacement.

### SCP-13: `quarticFive_signed_readout`

Domain: every natural n and every complex z. Source: SCP-7, complex
conjugation and multiplication. Argument: the five displayed residue cases.
Consumer: signed prime responses and phase-error negative controls. It proves
no sign of the aggregate Weil form.

### SCP-14: `three_coefficient_error`

Domain: n>=1, D>0, arbitrary logarithm order L. Source: RBC-1 and SCP-6;
maintained RationalPrimeWeights center/radius. Argument: put ez=0 in RBC-1.
Consumer: the ORIGINAL signed coefficient in EBR-1. Weight uncertainty remains.

### SCP-15: `quarticFive_coefficient_error`

Domain: n>=1, D>0, arbitrary L. Source: RBC-1 and SCP-12, with the same weight
supplier. Argument: put ez=0 while retaining complex conjugation. Consumer:
original complex-character prime responses; no favorable sign is assumed.

## Source identities and comparison

Pinned primary implementation sources, not copied into this module:

- [Mathlib DirichletCharacter.Basic](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean),
  Ashvni Narayanan, Moritz Firsching, Michael Stoll. Exact locators: alias
  DirichletCharacter; conductor_dvd_level; eq_one_iff_conductor_eq_one;
  IsPrimitive; Odd. Blob `4569ebb8e61f683a9c89877f0cda4d3add4d766d`.
- [Mathlib MulChar.Basic](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/MulChar/Basic.lean),
  Michael Stoll. Exact locators: structure MulChar and one_apply.
  Blob `c3ea5af7172195c7ca574932089fd7b54dd9571b`.
- Local WeilGammaData.lean at the inspection pin, blob
  `4ddf4399b7edfdb59af8d95d7b72222a1fefcd88`: gammaParity.
- Local WeilExponentialBumpRoundedEvaluation.lean at the inspection pin, blob
  `97faf22b2daa83ea50799637deb525a68888d62d`: RBC-1. Its source-reference repairs
  in the same increment are recorded separately; statement and budget are unchanged.
- Local WeilRationalPrimeWeights.lean at the inspection pin, blob
  `973510bc0ec6a01a8db3c2c1e2f6c870559476c8`: center, radius, center_error.

These are elementary instances of classical Dirichlet character theory and
local consequences of maintained source, not a claimed new paper formalization.
The review date is 2026-11-18 America/Los_Angeles. An indexed search for a
small-character name returned no useful match; that is not a corpus-wide
absence result. No newness or independent-proof claim follows.

## Falsification and actual finite checks

The reference algorithm in WeilModThreeBumpEvaluation.md uses exact Gaussian
integer pairs, not Python complex floating-point values. It checks all 34
multiplication pairs, 125 complex readouts, zero and one values, the value at -1,
and distinction from the principal table. These finite computations passed.
The general natural-label extension and conductor argument are written above
and proposed in Lean; the finite checks do not replace those proofs.

Four deliberately incorrect alternatives are rejected: deleting conjugation,
replacing a phase by its unit norm, assigning +1 at residue 4 modulo 5, and
using log(4) instead of log(2) for the prime-power label 4. The conjugate quartic
character is itself valid, but it is a DIFFERENT source from the fixed table
with chi5(2)=i. No test treats that other character as mathematically invalid.

The unit-cycle argument is a distinct hand description of the table check,
not independent mathematical review or an independent proof of the complete
Weil return. No Lean command was run. Canonical proof-automation skill access
failed at Noe `5e2e88770dde19fd78c459a87e5e32a4ab7ad7b7`; dependent execution
was not dispatched. Exact-source verification remains open in #1801.

## Remaining obligations

These tables cover two characters, not all primitive conductors. The general
complex-phase supplier, complete source-chain validation, source-value signs,
all-window determining tests, and universal certificate supply remain open.
Conductor-one zeta requires its original two pole orientations and is not
represented by either nonprincipal character here. No RH or GRH conclusion.
