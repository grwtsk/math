# Complete admissible Fourier action frame

The zero Fourier mode is now discharged by the exact centering theorem:

integral residual_X = 0,

so c_X(0)=0.

For every nonzero integer k, the previous module gives an actual zero-endpoint ComplexTest whose arithmetic action equals -c_X(k).

Define one mode energy by

modeEnergy_X(k)
 = 0, if k=0,
 = |action_X(test_k)|^2, otherwise.

This equals |c_X(k)|^2 for every integer k.

Parseval therefore transfers exactly to the source action family:

sum over k in Z of modeEnergy_X(k)
 = greenEnergy(X).

Regrouping positive and negative integer modes into natural shells gives finite nonnegative action heads whose partial sums converge to greenEnergy(X).

Finally retain the two endpoint moment coordinates separately:

fullStage_X(N)
 = mass0(X)^2
   + mass1(X)^2
   + actionHead_X(N).

Then

fullStage_X(N) -> augmentedEnergy(X),

and every finite stage is nonnegative, monotone in N, and bounded above by augmentedEnergy(X).

This completes the source-faithful growing readout-frame problem at one fixed octave. The finite cells are actual admissible actions, not arbitrary coordinates, and their positive energy exhausts the entire centered Green source norm.

The remaining W01 problem is now cross-scale/global rather than local-frame completeness: transport these exact growing action frames through a source-preserving explicit-formula/Weil comparison while retaining all mixed channels and without assuming target Weil positivity.
