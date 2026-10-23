# Canonical prime-power packing coordinate

The packing coordinate is now fixed at the arithmetic level.

For an actual prime-power event q=p^k with k>0, define the raw point

P_raw(p^k) = (k log p, log p).

The first coordinate is exactly the Archimedean realization of the p-primary exponent in the existing free-abelian arithmetic scale. The second coordinate is the raw von-Mangoldt amplitude on a prime power.

An explicit-formula/test-function theorem does not redefine this coordinate. It supplies a source-bound scalar weight w_f(p^k), giving

P_f(p^k) = (k log p, w_f(p^k) log p).

Thus arithmetic identity and analytic weighting remain separate.

The recurrence now selects actual PrimePowerEvent objects. Once the event is selected, the new planar point and source label are forced:

new point = P_f(event)
new source label = p^k.

The recurrence additionally requires the natural prime-power values to increase. This prevents the geometric program from fitting arbitrary points or relabeling the same arithmetic event.

What remains open is not the coordinate definition. It is:
1. instantiate ExplicitFormulaPrimePowerWeight from the exact #189 explicit-formula convention;
2. derive the initial events and next event from the accepted mechanism/local source;
3. prove the resulting three-point Gram volume has the signed-quartic comparison with positive limiting coefficient and complete residual decay.

No PNT, inverse moment reconstruction, external replay, quartic comparison, or RH proof is asserted.
