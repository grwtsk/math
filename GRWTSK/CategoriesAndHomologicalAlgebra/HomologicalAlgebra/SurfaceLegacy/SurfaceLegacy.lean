import Surface.Arithmetic
import Surface.Prismatic
import Surface.Topology
import Surface.Geometry
import Surface.Boolean
import Surface.Homology
import Surface.Hilbert
import Surface.Flow
import Surface.Kernel
import Surface.Spectral
import Surface.Legacy
import Surface.Foundation
import Surface.AST
import Surface.Meta
import Surface.Incremental
import Surface.Presentation

deprecated_module
  "The historical Surface universe is quarantined; import the canonical Surface target instead."
  (since := "2026-07-09")

/-!
This explicit target preserves the former aggregate import without allowing it
into the canonical `Surface` target.  It is never a default build target.
-/
