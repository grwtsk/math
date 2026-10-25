# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.FiniteGraphAndObservationComponents.Variant780d1b2bd382956b.WholePublicFingerprintConsistencyHypothesis

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b7006c3899149697fde9e421c491aa29a5be9f3` · SHA-256 `8ca9fdcd45b7b861634c441f039a3ca9047e911b28ed3585adbfc2fdff852a66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePublicFingerprintConsistencyHypothesis - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30
Organized SHA-256: 06bc29213e0dabac25cf9e96ba61a54ad061aaa44c42df9a52cb7d80e379ea06
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Whole PublicFingerprintConsistency Prop assumption and exact conditional semantic-stability theorem. Preserve publicEquivalent and hConsistency explicitly, with no supplied instance/bridge or semantic equivalence claim. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Manifest
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DirectedGraphs.FiniteGraphAndObservationComponents.Variant780d1b2bd382956b.FiniteRebuildPolicyAndTenantImpact

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

namespace ChangeSet

end ChangeSet

namespace Tenant

end Tenant

end Build

namespace Tenant

/-- Semantic stability over a tenant closure, parameterized by its meaning. -/
def SemanticallyUnchanged
    {G : DependencyGraph}
    (t : Tenant G)
    (publicEquivalent : G.ProjectId → Prop) : Prop :=
  ∀ p, p ∈ G.depClosure t.roots → publicEquivalent p

end Tenant

/--
An explicit trusted bridge from equal fingerprint bytes to semantic public-
environment equivalence.  Ordinary fingerprint equality does not construct
this assumption.
-/
structure PublicFingerprintConsistency
    {G : DependencyGraph}
    (old new : ManifestSet G)
    (publicEquivalent : G.ProjectId → Prop) : Prop where
  equal_implies : ∀ p,
    (old p).publicEnvironmentFingerprint =
        (new p).publicEnvironmentFingerprint →
      publicEquivalent p

namespace Build

/--
Operational unaffectedness yields semantic stability only when the caller
supplies the explicit fingerprint-consistency assumption.
-/
theorem not_affected_implies_semantically_unchanged
    {G : DependencyGraph}
    (t : DAF.Tenant G)
    (old new : ManifestSet G)
    (publicEquivalent : G.ProjectId → Prop)
    (hConsistency :
      PublicFingerprintConsistency old new publicEquivalent)
    (h : ¬ t.Affected (ChangeSet.between G old new)) :
    t.SemanticallyUnchanged publicEquivalent := by
  intro p hp
  apply hConsistency.equal_implies
  exact not_affected_implies_publicFingerprintsUnchanged
    t old new h p hp

end Build

end DAF
```
