# State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70079c32827901f775e5308216852386ef36aba5efe40e278223a59c4de20964",
  "kind": "structure",
  "lexical_name": "State",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "state--01712024eae1eb6b1f39bfe5",
  "source": {
    "blob": "fbc26446cc9617edfc7915675ce36a1d6c468b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01712024eae1eb6b1f39bfe58fc04392b5f9c079006e52feae1b0f2ecf28c68f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70079c32827901f775e5308216852386ef36aba5efe40e278223a59c4de20964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure State where
  /-- `ShareCommon` (aka `Hash-consing`) state. -/
  share : AlphaShareCommon.State := {}
  /--
  Maps expressions to their maximal free variable (by declaration index).

  - `maxFVar[e] = some fvarId` means `fvarId` is the free variable with the largest declaration
    index occurring in `e`.
  - `maxFVar[e] = none` means `e` contains no free variables (but may contain metavariables).

  Recall that if `e` contains a metavariable `?m`, then we assume `e` may contain any free variable
  in the local context associated with `?m`.

  This mapping enables O(1) local context compatibility checks during metavariable assignment.
  Instead of traversing local contexts with `isSubPrefixOf`, we check if the maximal free variable
  in the assigned value is in scope of the metavariable's local context.

  **Note**: We considered using a mapping `PHashMap ExprPtr FVarId`. However, there is a corner
  case that is not supported by this representation. `e` contains a metavariable (with an empty local context),
  and no free variables.
  -/
  maxFVar : PHashMap ExprPtr (Option FVarId) := {}
  proofInstInfo : PHashMap Name (Option ProofInstInfo) := {}
  /--
  Cache for `inferType` results, keyed by pointer equality.
  `SymM` uses a fixed configuration, so we can use a simpler key than `MetaM`.
  Remark: type inference is a bottleneck on `Meta.Tactic.Simp` simplifier.
  -/
  inferType : PHashMap ExprPtr Expr := {}
  /--
  Cache for `getLevel` results, keyed by pointer equality.
  -/
  getLevel : PHashMap ExprPtr Level := {}
  congrInfo : PHashMap ExprPtr CongrInfo := {}
  /-- Cache for `isDefEqI` results -/
  defEqI : PHashMap (ExprPtr × ExprPtr) Bool := {}
  /-- State for registered `SymExtension`s, indexed by extension id. -/
  extensions : Array SymExtensionState := #[]
  /--
  Issues found during symbolic computation. Accumulated across operations
  within a `sym =>` block and reported when a tactic fails.
  -/
  issues : List MessageData := []
  canon : Canon.State := {}
  /--
  Instances registered by satellite modules for types they create themselves
  (e.g., `grind linarith`'s envelope type `IntModule.OfNatModule.Q`).
  `Sym.synthInstance?` consults this table (keyed by the instance type, structural equality)
  before running typeclass resolution. This both skips searches whose results are known in
  advance, and ensures the registered term is used as the canonical representative.

  We currently use this table to reduce the overhead of type class resolution in `grind`.
  -/
  instanceOverrides : PHashMap Expr Expr := {}
  debug : Bool := false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc26446cc9617edfc7915675ce36a1d6c468b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
