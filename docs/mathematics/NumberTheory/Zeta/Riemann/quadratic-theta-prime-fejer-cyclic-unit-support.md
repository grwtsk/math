# Cyclic unit-shift boundary support

The final one-step L1 estimate is now reduced to an exact finite cardinality
statement.

Define the change support

S(X,m) = { z in Z/(4X)Z : 1_I(z) != 1_I(z-1) }.

Because the sharp cyclic prefix indicator only takes the values 0 and 1, the
source proves pointwise that the absolute one-step difference equals the
indicator of S(X,m).

Therefore the one-step translation L1 is exactly the support cardinality:

T_f(1) = |S(X,m)|.

The remaining local theorem is now purely finite and set-theoretic:

CyclicSharpUnitBoundarySupportCardClaim

|S(X,m)| <= 2.

Once that is supplied, the source propagates it through the already proved
cyclic-distance telescoping theorem to obtain

T_f(r) <= 2 d_cyc(r,0),

which is exactly CyclicSharpTranslationCardinalityClaim.

Status:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
UNIT_CHANGE_SUPPORT_DEFINED /
UNIT_L1_EQUALS_SUPPORT_CARD_SOURCE_WRITTEN /
UNIT_BOUND_REDUCED_TO_CARD_LE_TWO /
TWO_BOUNDARY_SUPPORT_CARD_OPEN.
