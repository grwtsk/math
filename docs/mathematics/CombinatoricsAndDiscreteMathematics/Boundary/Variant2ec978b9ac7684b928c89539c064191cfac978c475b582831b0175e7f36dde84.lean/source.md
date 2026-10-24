# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Boundary.Variant2ec978b9ac7684b928c89539c064191cfac978c475b582831b0175e7f36dde84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e80a95803a6dad10c8846c7d3fb7389a5e537db9` · SHA-256 `2ec978b9ac7684b928c89539c064191cfac978c475b582831b0175e7f36dde84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Concept.Authority
import Mathlib.Data.Finset.Basic

/-!
# Semantic definitions and fail-closed boundaries

The first formal boundary is intentionally extensional over reviewed semantic
clauses.  Later extractors may derive clauses from elaborated signatures, but a
similarity score never satisfies a boundary clause by itself.
-/

namespace MathDiscovery.Concept

/-- One normalized semantic clause used by a concept boundary. -/
structure SemanticClause where
  id : StableId
  statement : String
  deriving DecidableEq, Inhabited

/-- Auditable concept intension. -/
structure SemanticDefinition where
  summary : String
  parameters : Finset SemanticClause
  ambient : Finset SemanticClause
  hypotheses : Finset SemanticClause
  laws : Finset SemanticClause
  permittedInstances : Finset SemanticClause
  nonclaims : Finset SemanticClause
  normalizedDigest : Digest
  deriving DecidableEq

/-- Explicit inclusion, exclusion, and nonclaim boundary. -/
structure Boundary where
  includes : Finset SemanticClause
  excludes : Finset SemanticClause
  nonclaims : Finset SemanticClause
  deriving DecidableEq

/-- Semantic profile of a compiled or runtime entity proposed for assignment. -/
structure EntityProfile where
  clauses : Finset SemanticClause
  normalizedDigest : Digest
  deriving DecidableEq

namespace Boundary

/-- The entity satisfies every required clause and no excluded clause. -/
def Accepts (boundary : Boundary) (profile : EntityProfile) : Prop :=
  boundary.includes ⊆ profile.clauses ∧
    Disjoint boundary.excludes profile.clauses

instance (boundary : Boundary) (profile : EntityProfile) :
    Decidable (boundary.Accepts profile) :=
  inferInstanceAs (Decidable
    (boundary.includes ⊆ profile.clauses ∧
      Disjoint boundary.excludes profile.clauses))

/-- Adding verified clauses cannot invalidate the positive part of a boundary. -/
theorem includes_mono
    {boundary : Boundary} {small large : EntityProfile}
    (accepted : boundary.Accepts small)
    (subset : small.clauses ⊆ large.clauses)
    (noExcluded : Disjoint boundary.excludes large.clauses) :
    boundary.Accepts large :=
  ⟨Finset.Subset.trans accepted.1 subset, noExcluded⟩

/-- Any witnessed excluded clause rejects the profile. -/
theorem rejects_of_excluded
    {boundary : Boundary} {profile : EntityProfile} {clause : SemanticClause}
    (inExcluded : clause ∈ boundary.excludes)
    (inProfile : clause ∈ profile.clauses) :
    ¬ boundary.Accepts profile := by
  intro accepted
  exact Finset.disjoint_left.mp accepted.2 inExcluded inProfile

end Boundary

end MathDiscovery.Concept
```
