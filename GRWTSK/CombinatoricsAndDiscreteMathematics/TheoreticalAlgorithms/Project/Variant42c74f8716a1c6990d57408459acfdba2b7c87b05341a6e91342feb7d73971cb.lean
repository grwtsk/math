import Mathematics.System.Core

/-! # Projects, workspaces, and tenants -/

namespace Mathematics.System

/-- A project is a versioned semantic subsystem with explicit dependencies. -/
structure Project where
  id : ProjectId
  revision : Nat
  semanticDigest : Digest
  dependencies : List ProjectId
  deriving DecidableEq, Repr

/-- A workspace is a closed project collection, not a filesystem directory. -/
structure Workspace where
  id : WorkspaceId
  projects : List Project
  projectIdsUnique : (projects.map Project.id).Nodup

/-- Tenant state is isolated while foundational project identities may be shared. -/
structure Tenant where
  id : TenantId
  workspace : WorkspaceId
  enabledProjects : List ProjectId
  stateDigest : Digest
  deriving Repr

end Mathematics.System
