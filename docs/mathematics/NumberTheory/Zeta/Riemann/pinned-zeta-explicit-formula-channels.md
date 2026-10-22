# Pinned known zeta channels toward the explicit formula

The exact source inventory is stronger than a raw issue-level interface.

At pinned Mathlib revision db584cd6d46c92f209a44c0f1c829460d327499d, and using the existing local canonical zero-divisor work, the following theorem channels are already available:

1. Prime-power coefficient:
   Lambda(p^k)=log p for k>0.

2. Prime-side analytic anchor:
   L(Lambda,s)=-zeta'(s)/zeta(s) on Re(s)>1.

3. Pole:
   residue of zeta at s=1 is 1.

4. Trivial zeros:
   zeta(-2(n+1))=0.

5. Archimedean/functional-equation normalization:
   completedRiemannZeta(1-s)=completedRiemannZeta(s), where the completed object contains the gamma normalization.

6. Actual nontrivial-zero local data:
   every exact nontrivial zero carries its analytic multiplicity, and the logarithmic residue of -zeta'/zeta is minus that multiplicity.

These facts are bundled in KnownZetaExplicitFormulaChannels.

What remains open is not the identity of the local singularities or the arithmetic coefficients. The missing mathematical theorem is the global assembly:

- choose an admissible contour or test-function class;
- derive the contour/distribution identity from the prime-side half-plane;
- sum the pole, trivial-zero and complete nontrivial-zero residues with the exact gamma/Archimedean term;
- state and prove the summation order;
- handle endpoints/branches;
- prove the omitted contour/zero tail or limiting theorem.

Only that global summation identity can feed the canonical prime-power packing comparison. The channel ledger itself does not imply the explicit formula, Weil positivity, the quartic comparison, or RH.
