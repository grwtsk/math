import Mathematics.GraphAccess.Core.Objective
import Mathematics.GraphAccess.Core.Request
import Mathematics.GraphAccess.Core.Receipt
import Mathematics.GraphAccess.Core.Budget
import Mathematics.GraphAccess.Exact.BFS
import Mathematics.GraphAccess.Exact.Dijkstra
import Mathematics.GraphAccess.Exact.AStar
import Mathematics.GraphAccess.Exact.Heuristic
import Mathematics.GraphAccess.Exploration.RotorRouter
import Mathematics.GraphAccess.Exploration.UniversalSequence
import Mathematics.GraphAccess.Exploration.DeBruijn
import Mathematics.GraphAccess.Exploration.Recaman
import Mathematics.GraphAccess.Sampling.InvariantLaw
import Mathematics.GraphAccess.Sampling.LowDiscrepancy
import Mathematics.GraphAccess.Sampling.TraceApproximation
import Mathematics.GraphAccess.Integration.BinaryFrontier
import Mathematics.GraphAccess.Integration.OrdinalStratum
import Mathematics.GraphAccess.Integration.ObstructionReturn
import Mathematics.GraphAccess.Integration.CylinderAccess
import Mathematics.GraphAccess.Verification.PathCertificate
import Mathematics.GraphAccess.Verification.CoverageCertificate
import Mathematics.GraphAccess.Verification.SamplingCertificate
import Mathematics.GraphAccess.Verification.Noninterference
import Mathematics.GraphAccess.Resolver

/-!
# Multi-modal graph-access conditional proof boundary

The umbrella exports the structural and premise-bearing implications requested
by `CR-NOE-MGAT-003`.

It does not certify a concrete reflective graph, complete neighbor registry,
cost profile, heuristic, port labeling, universal sequence, action alphabet,
invariant law, plateau detector, completion semantics, primitive obstruction,
projective system, cylinder observable, resource scheduler, independent
verifier, or Rust-owner admission.

Traversal remains read-only and proposal-only.  No theorem in this package
grants mutation or admission authority, materializes a completed infinite
state, or silently replaces an unknown with a default.
-/
