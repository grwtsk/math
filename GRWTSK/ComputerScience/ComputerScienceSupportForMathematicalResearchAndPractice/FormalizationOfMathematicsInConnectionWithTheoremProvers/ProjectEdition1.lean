import Mathematics.Ecosystem.ProjectIdentity
import Mathematics.Ecosystem.Snapshot
import Mathematics.Federation.ProjectFiber
import Mathematics.Federation.GlobalId
import Mathematics.Federation.Bridge
import Mathematics.Federation.VersionTransport
import Mathematics.Federation.Conflict
import Mathematics.Toolchain.LakeGraph

/-!
# Public project-federation surface

This import-only module is the declared cross-package boundary for sovereign
project identity, partial transport, exact bridges, conflicts, and the frozen
Lake graph.  Downstream composites need not import the monolithic root.
-/
