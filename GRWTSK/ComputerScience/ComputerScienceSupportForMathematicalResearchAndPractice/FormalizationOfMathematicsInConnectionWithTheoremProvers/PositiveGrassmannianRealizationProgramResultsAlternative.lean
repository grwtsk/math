import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import FormalResearch.PositiveAtlas.Grassmannian.Fixtures
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import FormalResearch.PositiveAtlas.Grassmannian.RecognitionFixtures

import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian
import FormalResearch.PositiveAtlas.Grassmannian.QuotientConvention
import FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24
import FormalResearch.PositiveAtlas.Grassmannian.Transverse
import FormalResearch.PositiveAtlas.Grassmannian.PositiveLift

/-!
# Positive-Grassmannian realization program

The first layer contains actual ordered determinants, row-change gauge laws,
normalized Gr(2,4) coordinate recognition, full-rank pivot existence,
projective recognition for actual full-rank frames, and obstruction fixtures.

The generic Positive Atlas remains independent of this specialization. Abstract
Pluecker-tuple realizability, network realization, determinantal analysis,
certificate-preserving recognition, and global topological/metric coverage remain
separately tracked obligations. Recognition of actual full-rank row spaces
is not the full Atlas certificate equivalence.
The continuation adds all-order Toeplitz predicates and rescaling, reversible
signed graph planes, the rank-two minor bridge, positive weighted braid
coordinates and transverse reflection. Arbitrary-rank minor correspondence and
analytic/RH bridges remain explicit obligations; the zeta source has a separate
root import and is not imported by this generic aggregator.
-/
