# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Stratum.Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe33409f2b91e7647dd2377152ff6aa63c82c238` · SHA-256 `f88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.DeriveFintype
import Mathematics.Core.SemanticIdentity

/-! # Typed whole-system strata and boundaries -/

namespace Mathematics.Mutation

inductive Stratum
  | human
  | jurisCapability
  | semantic
  | globalPlanner
  | localElement
  | formal
  | runtime
  | client
  | world
  deriving DecidableEq, Repr, Fintype

abbrev StratumSet := Finset Stratum

inductive SystemEdgeKind
  | dependsOn
  | authorizes
  | restricts
  | calls
  | reads
  | writes
  | renders
  | validates
  | derives
  | transmits
  | retains
  | delegates
  | supersedes
  | revokes
  | implements
  | projects
  deriving DecidableEq, Repr, Fintype

inductive BoundaryKind
  | humanToSystem
  | jurisdictionChange
  | operatingSystemPermission
  | localToRemote
  | modelToTool
  | leanToRust
  | rustToClient
  | clientToWorld
  | deviceHandoff
  | corpusVisibility
  deriving DecidableEq, Repr, Fintype

abbrev BoundarySet := Finset BoundaryKind

end Mathematics.Mutation
```
