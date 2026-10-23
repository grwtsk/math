# Antipodal-pair counting: next bounded formalization obligation

Date: 2026-10-22
Parent head: 56684e39ebf4fa12ff5a9eb01abb25a25bca4d11
Owners: #630, #441
Status: PAPER_PROOF / NOT_LEAN_FORMALIZED / NOT_KERNEL_AUDITED

Let M>0 and H be a finite set of distinct nonnegative offsets.
For m,t in range M and h in H define
a(m,h)=lambda(m+h+1) and b(t,h)=lambda(2*t+2*h+3).
All arguments are positive, hence a,b are ±1.

Let A(M,H) count ordered pairs (m,t) for which a(m,h)=-b(t,h)
for every h in H. Let C_S and R_S be the ordinary normalized
subset products defined in LiouvilleDyadicSignedPairing.lean.
Set X=sum_{nonempty S subset H} (-1)^|S| C_S R_S.

Finite distributivity gives
1+X = M^(-2) sum_{m,t<M} prod_{h in H}(1-a(m,h)b(t,h)).
Each factor is 2 if the corresponding signs are opposite and
zero otherwise. Thus the product is 2^|H| precisely for an
antipodal pair and zero otherwise, proving

    X(M,H) = 2^|H| * A(M,H)/M^2 - 1.

For H empty, A=M^2, X=0 and the identity remains valid.
For M=0 division and empirical probability interpretations are
invalid; retain the separately defined rational zero convention.

Substitution into the previously SOURCE-DRAFTED signed energy
identity yields the exact paper-level formula

    4 E_lambda(2M,oddLiftOffsets H)
      = E_lambda(M,H) + E_oddResidual(M,H)
          - 2 + 2^(|H|+1) A(M,H)/M^2.

In particular the nonnegative count implies
    4 E_lifted >= E_source + E_oddResidual - 2.

Formalization plan (no Lean proof claimed):
1. Define the ordered-pair Finset filter with full coordinate
   opposition, and prove its cardinality counts exactly A.
2. Prove finite character expansion including the empty subset
   using Finset.prod_sum and the existing subtype equivalence.
3. Prove sign dichotomy using the positive-index Liouville lemma.
4. Normalize only under M>0, then derive the exact signed pairing
   and canonical energy identities.
5. Add hostile controls for empty H, M=0, signed parity, full
   nonempty powerset, and source/residual index distinction.
6. Run authorized pinned Lean 4.33.0 elaboration and transitive
   axiom audit before treating any theorem as verified.

The count identity is a repackaging of the mixed energy; it
does not bound A or prove cancellation, Chowla, GUE or RH.
