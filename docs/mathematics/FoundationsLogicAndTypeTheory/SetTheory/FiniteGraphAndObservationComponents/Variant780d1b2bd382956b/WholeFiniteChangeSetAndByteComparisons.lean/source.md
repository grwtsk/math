# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FiniteGraphAndObservationComponents.Variant780d1b2bd382956b.WholeFiniteChangeSetAndByteComparisons

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73e9f352278cc319b9fcf985895cc8b40c1a598d` · SHA-256 `1fc98a4df9f9e4cc516ec83ca1f4d558c641003a690a7e7069f218eb0c199348`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeFiniteChangeSetAndByteComparisons - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30
Organized SHA-256: 06bc29213e0dabac25cf9e96ba61a54ad061aaa44c42df9a52cb7d80e379ea06
PMD: 510.0.010 set theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Entire three-Finset ChangeSet and byte-comparison construction with all three exact iff proofs. Fingerprints are opaque bytes; no hash-to-semantics inference. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Manifest

/-!
# Abstract incremental rebuild policy

This module models a conservative policy over declared fingerprints.  An
implementation change rebuilds its own project.  A detected public-environment
change rebuilds that project and every transitive dependent.  Runtime artifact
changes are recorded separately and do not silently alter the Lean rebuild rule.

The results characterize this finite policy exactly; they do not claim to model
Lake's cache, the Lean compiler, or semantic equivalence from hash equality.
-/

universe u

namespace DAF
namespace Build

/-- The three independent, detected change sets. -/
structure ChangeSet (G : DependencyGraph) where
  implementationChangedSet : Finset G.ProjectId
  publicChangedSet : Finset G.ProjectId
  runtimeChangedSet : Finset G.ProjectId

namespace ChangeSet

/-- Compare the bytes recorded in two manifest snapshots. -/
def between
    (G : DependencyGraph)
    (old new : ManifestSet G) : ChangeSet G where
  implementationChangedSet := Finset.univ.filter fun p ↦
    (old p).implementationFingerprint ≠ (new p).implementationFingerprint
  publicChangedSet := Finset.univ.filter fun p ↦
    (old p).publicEnvironmentFingerprint ≠ (new p).publicEnvironmentFingerprint
  runtimeChangedSet := Finset.univ.filter fun p ↦
    (old p).runtimeArtifactFingerprint ≠ (new p).runtimeArtifactFingerprint

@[simp]
theorem mem_between_implementation_iff
    (G : DependencyGraph)
    (old new : ManifestSet G)
    (p : G.ProjectId) :
    p ∈ (between G old new).implementationChangedSet ↔
      (old p).implementationFingerprint ≠
        (new p).implementationFingerprint := by
  simp [between]

@[simp]
theorem mem_between_public_iff
    (G : DependencyGraph)
    (old new : ManifestSet G)
    (p : G.ProjectId) :
    p ∈ (between G old new).publicChangedSet ↔
      (old p).publicEnvironmentFingerprint ≠
        (new p).publicEnvironmentFingerprint := by
  simp [between]

@[simp]
theorem mem_between_runtime_iff
    (G : DependencyGraph)
    (old new : ManifestSet G)
    (p : G.ProjectId) :
    p ∈ (between G old new).runtimeChangedSet ↔
      (old p).runtimeArtifactFingerprint ≠
        (new p).runtimeArtifactFingerprint := by
  simp [between]

end ChangeSet

namespace Tenant

end Tenant

end Build

namespace Tenant

end Tenant

namespace Build

end Build

end DAF
```
