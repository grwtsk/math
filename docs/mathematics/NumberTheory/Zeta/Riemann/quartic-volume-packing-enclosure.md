# Canonical edge-product enclosure

The enclosing volume needed by the quartic packing endpoint is not an extra conjectural object.

For consecutive edge vectors u and v,

GramVolume
 = ||u||^2 ||v||^2 - <u,v>^2
 <= ||u||^2 ||v||^2.

Thus define the canonical enclosure of one packing stage as the product of the two edge squared norms.

For the structured quartic source define

C_n
 = axialEdgeProduct_n
   + 3 transverseEdgeProduct_n.

Both summands are nonnegative and stagewise

Q_n <= C_n.

Therefore the endpoint certificate no longer needs an independently supplied enclosure or containment theorem.

The remaining source problem has been reduced to a scale-only asymptotic package:

- choose r_n>=0 from the arithmetic/test source;
- prove r_n A_n -> L>0;
- prove r_n T_n -> the same L;
- prove r_n C_n -> 0.

Those three asymptotic facts now suffice for RH through the volume-packing endpoint.
