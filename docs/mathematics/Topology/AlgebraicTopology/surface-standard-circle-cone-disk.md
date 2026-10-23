# Standard circle cone to complex disk

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Parent: PR #978, immutable head `d901f661103da93c9c4779e2eb3d595d0c5b7ca9`.

This bounded source defines the actual closed unit disk and real-angle polar formula. The radius-zero and norm statements are Lean proof candidates, not kernel-certified results. The formula on real angles is not yet a map from UnitAddCircle: integer periodicity must be proved and used to descend through the additive-circle quotient. Then show the cone fiber criterion (both zero radii or identical positive radii and circle angles), surjectivity by complex polar decomposition, and the resulting compact-to-Hausdorff homeomorphism. Preserve apex and outer-boundary transport. Do not identify the cone-to-filled map with a homeomorphism: it is noninjective on paired outer edges. No CW pushout, manifold, homology, van Kampen, trace formula or RH theorem is claimed.
