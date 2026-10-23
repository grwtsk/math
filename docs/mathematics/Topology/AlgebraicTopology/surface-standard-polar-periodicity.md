# Integer-periodic real-angle polar formula

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Parent: PR #986, immutable head `9df9bac939a89b407f614494841d668f4fb78095`.

The new Lean source proposes period-one, natural-winding and integer-winding identities for F(theta,r)=r exp(2πi theta). It deliberately does not claim that a UnitAddCircle function has been constructed: exact quotient relation compatibility and continuity remain separate obligations. Further open suppliers: positive-radius angle uniqueness, cone quotient descent, disk surjectivity, compact-to-Hausdorff homeomorphism. No CW pushout, manifold, homology or RH claim. Lean elaboration and immutable-head trust replay remain required under #100.
