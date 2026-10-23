# Exact dyadic Green source frame

The centered source in one octave has an exact finite-frame representation.

Let

g0(t) = log(1+t) - (2 log 2 - 1)

and for each literal source label n in (X,2X] let

g_(X,n)(t)
 = (Lambda(n)/n) * feature(location(X,n),t).

Then

cumulative_X(t)-center_X
 = sum_(X<n<=2X) g_(X,n)(t) - g0(t).

No source atom is inferred from a fitted coordinate. The coefficient is the actual von Mangoldt coefficient, the source label is the actual integer in the exact octave, and the background is the exact centered continuum subtraction.

The frame has exactly X arithmetic slots plus one background atom. Its full squared norm, after adjoining the two endpoint moments mass0 and mass1, is exactly the already-defined augmentedEnergy.

The existing centered integration-by-parts theorem then shows every normalized Mellin action is an exact linear readout of this same source frame:

action_X(phi)
 = phi(0) mass0
   + (phi(1)-phi(0)) mass1
   - integral sourceResidual * phi'.

Thus the Mellin-normalized plus/minus/center action packing is no longer an opaque scalar construction. It is a family of exact readouts of a growing, source-identified finite frame.

This clarifies the next lower-bound problem. Three Mellin readouts alone need not control the whole growing frame. A viable W01-style successor should use a growing family of source-faithful readouts or cells whose positive direct-sum norm captures enough of this exact frame without assuming the desired Weil positivity.
