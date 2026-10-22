# Quartic volume-packing endpoint

The exact source factorization changes the final proof architecture.

The positive source is

Q_n = a^4 A_n + 3 a^2 t^2 T_n,

with A_n,T_n>=0.

This corresponds to -witnessTrace/4, so it cannot be fed directly into the existing positive-weight signed-trace extraction theorem: the sign is opposite.

The correct volume argument uses an enclosing source volume.

For each actual nontrivial zero, seek:

- a positive source-derived renormalization r_n;
- a nonnegative enclosure C_n;
- Q_n <= C_n;
- r_n C_n -> 0;
- r_n A_n -> L>0;
- r_n T_n -> L>0 with the same L.

Then

r_n Q_n -> L(a^4+3a^2t^2),

while containment gives

0 <= r_n Q_n <= r_n C_n -> 0.

Therefore

L(a^4+3a^2t^2)=0.

Since L>0 and the bracket is a sum of nonnegative terms, a=0. Thus every nontrivial zero is on the critical line.

This endpoint is the direct formalization of a positive volume-packing proof. It avoids pretending that a positive Gram is a positive multiple of the signed witness.

The central open construction is now the enclosure/renormalization supplier. It must come from the explicit-formula/test-function source and must be independent of the desired RH conclusion.
