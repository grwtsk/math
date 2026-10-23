# Rank-32 elliptic curve ICARM #4239 — finite proof packet

Original arithmetic construction and 32 rational points: Noam D. Elkies, Zev Klagsbrun, Samuel Li; ICARM 2026-10-15, https://elliptic-rank.icarm.cloud/curve/4239 . Quadratic-character descent: Cremona/Brumer (see https://johncremona.github.io/papers/filter.pdf). Formalization assistance: OpenAI.

## Exact scope

* Record4239Curve.lean: 32 rational point coordinates, the record Weierstrass equation and discriminant, finite reductions #E(F_7)=13 and #E(F_19)=27, and the exact x-coordinate transform X=36x+3.
* Record4239FiniteCharacterMatrix.lean: the 32 source-labelled prime/root pairs, simple-root and good-reduction predicates, 32x32 Legendre bits from actual source coordinates, an explicit inverse over ZMod 2 and a duplicated-column negative control.
* Both files use proof-producing Lean tactics (norm_num/decide), rather than native_decide, sorry, or new axiom declarations.

**Status at publication: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** No Lean executable was available to elaborate them; theorem candidates are NOT yet kernel-verified. The new sources are deliberately not imported into GRWTSK.lean. External execution must use the repository's pinned Lean 4.33.0 and Mathlib revision, with --wfail and --trust=0/axiom-closure audit.

## Exact open theorem edges (issue #1049)

1. Prove a genuine Q-isomorphism from the record curve to its integral short model in Mathlib, transporting all 32 points to the actual elliptic-curve group (not a supplied law).
2. Construct good-prime Cremona–Brumer homomorphisms E(Q)/2E(Q) -> ZMod 2, including denominator, infinity, branch-zero and nonsingularity rules. Identify the formal homomorphism values with the 1024 exact localBit entries. The finite equality theorem alone **does not** supply homomorphicity.
3. Import/prove the prime-to-p injection of rational torsion into good finite reductions; use 7 and 19 to rule out torsion.
4. Prove integral linear independence from full mod-2 character rank together with torsion control (including the divide-by-2 descent); then state a precise unconditional rank >=32 theorem.
5. Separate any analytic upper rank bound, GRH, BSD, saturation, regulator and K3 surface claims. None follows from the above finite certificate.

Reproducible finite Python verification of the raw arithmetic: rank32_2descent_certificate.py in the accompanying research packet (not admitted as Lean authority). Keep this source-bound arithmetic certificate distinct from the zeta/RH optional adapter in issues #202/#207.
