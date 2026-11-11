# `GRWTSK.RationalHermiteSignCertificates.pairPacket_invalid_radius_rejected`

Local attribution: grwtsk contributors. [Source](../RationalHermiteSignCertificates.lean); [context](context.md).

The synthetic packet with every radius entry -1 is rejected even though its computed upper expression at q=(0,1) is negative. Primary argument: the reused Packet.Guard requires nonnegative radii, so the conjunction is false. The `decide` body is not an execution receipt.

Consumer: malformed-input regression. It is not a byte-parser specification, and a valid guard still does not establish source enclosure. FORMAL_SOURCE_CANDIDATE; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
