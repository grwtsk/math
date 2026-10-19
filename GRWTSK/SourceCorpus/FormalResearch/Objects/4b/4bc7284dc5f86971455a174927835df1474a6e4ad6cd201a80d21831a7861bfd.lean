import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import FormalResearch.PositiveAtlas.Grassmannian.Fixtures
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import FormalResearch.PositiveAtlas.Grassmannian.RecognitionFixtures

import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian
import FormalResearch.PositiveAtlas.Grassmannian.QuotientConvention

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
-/
