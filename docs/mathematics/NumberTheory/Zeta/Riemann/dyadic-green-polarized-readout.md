# Polarized Fourier reconstruction of every source action

The complete action frame is now promoted from a norm identity to a test-to-feature reconstruction.

For an arbitrary admissible ComplexTest phi, take Fourier coefficients of its slope on (0,1]. Polarized Parseval pairs them with the exact source residual Fourier coefficients:

sum over k in Z of
  conj(c_X(k)) d_phi(k)
=
integral residual_X(t) phi'(t).

The repository's centered integration-by-parts identity is

action_X(phi)
=
phi(0) mass0(X)
+
(phi(1)-phi(0)) mass1(X)
-
integral residual_X phi'.

Therefore the finite symmetric frequency heads

A_(X,N)(phi)
=
endpointReadout_X(phi)
-
sum of the first N paired Fourier shells

converge to the exact unchanged source action for every ComplexTest.

This supplies a concrete finite feature map at one octave:
- source features are the exact Fourier coefficients c_X(k), plus mass0 and mass1;
- test features are the exact Fourier coefficients of phi', plus its two endpoint values;
- their finite pairing converges to the exact source action.

The feature dimension grows with the frequency cutoff. No target sign, RH assumption, or fitted coefficient is used.

This addresses an important part of issue #207 at the local arithmetic level: the map from an arbitrary test into the finite source feature stage is explicit. What remains genuinely global is to identify the correct Weil/Guinand test space and prove that the sum over scales plus gamma, pole, trivial-zero, nontrivial-zero, endpoint, and tail channels equals the selected zeta explicit-formula functional.
