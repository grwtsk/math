# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.omitted_correction_changes_logDeriv`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25; 30B10.

For every complex q,
`logDeriv (localFactor q 2) 0 - logDeriv (localFactor q 1) 0 = 1`.

Primary argument: both denominator conditions hold at zero. Apply the
logarithmic-derivative formula for m=2 and m=1 and subtract q^2+1 from q^2+2.
The source proof is symbolic; no floating-point evaluation is used.

Consumer: an exact negative control rejecting omission of the characteristic-
two correction. It is not an off-critical arithmetic zero, a positivity
certificate, or a counterexample to GRH. The theorem tests this specific
normalization error; passing it does not establish global source return.

Source comparison: elementary consequence of the exceptional factor in
Shinya Harada, [arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2),
31 January 2014, p. 1, unnumbered theorem for L2=(12/5).
Dependency: `logDeriv_localFactor`; localFactor and its derivatives are
used only at zero, away from their possible poles.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
[Full pins and reproduction targets](eqOn_of_extension_pointCounts.md);
[publication coordination](https://github.com/grwtsk/math/issues/1802).
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: **NOT_RUN**. Novelty: UNASSESSED; no novelty claim.
