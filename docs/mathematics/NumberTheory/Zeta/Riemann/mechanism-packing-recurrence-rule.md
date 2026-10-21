# Mechanism-to-packing recurrence rule

The open source map is now split into the minimal finite-state data required by the volume argument.

A source-bound recurrence program contains the already accepted mechanism bridge and then only:

1. a prime-power source predicate;
2. an initializer producing the first three valid points/labels from the local mechanism witness;
3. a rule producing one new point from the local witness, stage number, and current three-point state;
4. a rule producing one new source label;
5. a proof that the new label satisfies the same source predicate.

The infinite packing is not an independent field. It is generated canonically:

state_0 = initial(localWitness)

state_(n+1) = advance(state_n, nextPoint(localWitness,n,state_n), nextSource(...)).

Every generated stage is automatically nonnegative because its value is the squared oriented volume / 2x2 Gram determinant. Adjacent stages reuse the previous two points exactly.

The only analytic payload after construction of this program is therefore a comparison record at each nontrivial zero:

value_n = lambda_n * H(Re(s)-1/2,Im(s)) + R_n,

lambda_n -> L > 0,

R_n -> 0.

The module proves that these data force the signed quartic H nonnegative and packages an audited all-zero comparison into the existing trace-extraction RH endpoint.

No initializer, update rule, comparison theorem, residual decay proof, external replay, or PNT-independence receipt is constructed in this increment.
