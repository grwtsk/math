# VCGen.Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00b6b417c9f4e54e0dd1942e4a5285fd61a13718be9a446746d755adff1b9705",
  "kind": "structure",
  "lexical_name": "VCGen.Context",
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
  "slug": "vcgen-context--a000f50beb4b0546ea774750",
  "source": {
    "blob": "ef9078ab07e611c6c8bc699766f58bc92a322f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a000f50beb4b0546ea7747501f188c96c5b7c79a05b1fdf6f9dd4e4307ad3b16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00b6b417c9f4e54e0dd1942e4a5285fd61a13718be9a446746d755adff1b9705`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure VCGen.Context where
  /-- Pre-built backward rules used by `solve`. -/
  backwardRules : VCGen.BackwardRules
  /-- The `@[frameproc]` registry snapshot taken at frontend init. `solve` selects a procedure per
  program node by the node's monad. -/
  frameProcs : VCGen.FrameProcs := {}
  /-- Lattice splits keyed by operator head, merging the built-in connectives with the registered
  frame operators. Built once at frontend init; `splitLatticeOp?` looks a head up here. -/
  latticeOps : Std.HashMap Name VCGen.LatticeOp := {}
  /-- User-customizable simp methods used to pre-simplify hypotheses. -/
  hypSimpMethods : Option Sym.Simp.Methods := none
  /-- The `trivial` config option: when `true` (default), `Driver.emitVC` runs
  `solveTrivialConjuncts` to collapse trivial `And.intro` chains; when `false`, the goal is
  emitted as-is. -/
  trivial : Bool := true
  /-- The `jp` config option: when `true`, `tryLetIntro` recognises `__do_jp` lets
  whose body is a splitter and sets up shared-continuation handling instead of
  zeta-unfolding. When `false` (default, matching original `mvcgen`), every call
  site of the JP zeta-unfolds, leading to exponential blow-up on nested splits. -/
  useJP : Bool := false
  /-- The `errorOnMissingSpec` config option: when `true` (default), a program with no matching
  spec raises a hard error. When `false`, the goal is emitted as an unsolved VC for the user to
  discharge — useful with `vcgen [-some_spec]` patterns where the user knows the spec is
  intentionally removed and wants to handle the residual goal by hand. -/
  errorOnMissingSpec : Bool := true
  /-- The `debug` config option: when `true`, `tryApplyRule` retries failed
  `BackwardRule.apply` calls after `unfoldReducible` and reports an error when the
  retry succeeds, pinpointing missing normalization steps in `vcgen`. -/
  debug : Bool := false
  /-- The `internalize` config option: when `true` (default), `emitVC` and the
  multi-subgoal fork in `Driver.work` call `Grind.processHypotheses`. The tactic-mode
  entry point disables this when there is no `with` clause. -/
  internalize : Bool := true
  /-- Pre-parsed `invariants`/`invariants?` alternatives, indexed by 1-based invariant
  number. Bullet form maps positions to entries (`bullet n+1 → alt`); labelled form maps
  the parsed `inv<n>` numbers (out-of-order labels are supported). Empty when no
  `invariants` clause is provided or in `invariants?` (suggest) mode (handled separately). -/
  invariantAlts : Std.HashMap Nat Syntax := {}
  /-- The `until` pattern: when `some pat`, VC generation stops and emits the current goal as a VC
  once the program in `wp⟦e⟧` matches `pat`, before applying a spec. -/
  untilPat? : Option Sym.Pattern := none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9078ab07e611c6c8bc699766f58bc92a322f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
