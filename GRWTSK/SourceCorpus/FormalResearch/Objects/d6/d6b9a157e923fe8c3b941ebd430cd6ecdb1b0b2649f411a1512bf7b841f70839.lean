import Surface.ContinuousAssurance.Index.Records
import DAF.Manifest

/-!
# Stable world-model identities

The existing Continuous Assurance identifiers for mathematical objects,
formal declarations, representations, obligations, and artifacts are reused.
This module adds only identities not already present in the parent namespace.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Stable identity of a proposition independently of its representation. -/
structure PropositionId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of an assumption in a finite assumption context. -/
structure AssumptionId where
  value : String
  deriving DecidableEq, Repr

/-- Stable semantic identity of one mathematical world model. -/
structure WorldModelId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of one typed model translation. -/
structure TranslationId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of one declared dependency edge. -/
structure DependencyId where
  value : String
  deriving DecidableEq, Repr

/-- Human-independent vocabulary identity for a model version. -/
structure Vocabulary where
  identity : ArtifactIdentity
  symbols : List String
  deriving DecidableEq, Repr

/-- Namespace boundary in which a model version publishes declarations. -/
structure DeclarationNamespace where
  value : String
  deriving DecidableEq, Repr

/-- Identity of the finite registry snapshot itself. -/
structure RegistryVersionId where
  version : DAF.Version
  sourceDigest : ArtifactIdentity
  deriving DecidableEq, Repr

end Surface.ContinuousAssurance.WorldModel

