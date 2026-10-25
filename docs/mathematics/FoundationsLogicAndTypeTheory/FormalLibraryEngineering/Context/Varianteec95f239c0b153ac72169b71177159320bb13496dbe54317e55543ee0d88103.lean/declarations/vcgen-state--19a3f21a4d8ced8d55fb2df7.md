# VCGen.State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d72bf46adae729f53c58e480bc323354e1c1383834ab66a78222bdf87085ab5f",
  "kind": "structure",
  "lexical_name": "VCGen.State",
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
  "slug": "vcgen-state--19a3f21a4d8ced8d55fb2df7",
  "source": {
    "blob": "58f14342b51dd1104999a5d1e021a92d8a37ab47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianteec95f239c0b153ac72169b71177159320bb13496dbe54317e55543ee0d88103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19a3f21a4d8ced8d55fb2df7b49994c498d442317ef27072d5a9f8a07d5af56e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianteec95f239c0b153ac72169b71177159320bb13496dbe54317e55543ee0d88103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d72bf46adae729f53c58e480bc323354e1c1383834ab66a78222bdf87085ab5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure VCGen.State where
  /--
  A cache mapping registered SpecThms to their backward rule to apply.
  The particular rule depends on the theorem name, the `WPMonad` instance and the number of
  excess state arguments that the weakest precondition target is applied to.

  The instance is keyed by `ExprPtr`, so lookups compare it by pointer rather than structurally.
  This is sound because the instance is a subterm of the hash-consed goal target.
  -/
  specBackwardRuleCache : Std.HashMap (Name × ExprPtr × Nat) BackwardRule := {}
  /--
  A cache mapping matchers to their splitting backward rule to apply.
  The particular rule depends on the matcher name, the monad and the number of excess state
  arguments that the weakest precondition target is applied to.

  The instance is keyed by `ExprPtr`, so lookups compare it by pointer rather than structurally.
  This is sound because the instance is a subterm of the hash-consed goal target.
  -/
  splitBackwardRuleCache : Std.HashMap (Name × ExprPtr × Nat) BackwardRule := {}
  /--
  A cache mapping lattice connectives to their backward rule to apply, keyed by the `head … cₙ`
  prefix of constant arguments the rule bakes in verbatim and the total argument count that fixes the
  schematic operand and state count.

  The prefix is keyed by `ExprPtr`, so lookups compare it by pointer rather than structurally. This is
  sound because it is a subterm of the hash-consed goal target.
  -/
  latticeBackwardRuleCache : Std.HashMap (ExprPtr × Nat) BackwardRule := {}
  /-- Caches the `F`-abstract upper-adjoint frame rule (`op_wp_upperAdjoint_le_wp`), keyed by the
  `WPMonad` instance and the number of excess state arguments. -/
  frameBackwardRuleCache : Std.HashMap (ExprPtr × Nat) BackwardRule := {}
  /-- The frame database from the `frames` clause. -/
  frameDB : FrameDB := {}
  /--
  Holes of type `Invariant` that have been generated so far.
  -/
  invariants : Array MVarId := #[]
  /--
  The verification conditions that have been generated so far. Each entry
  shares the parent `Grind.Goal`'s state.
  -/
  vcs : Array Grind.Goal := #[]
  /--
  Persistent cache for the `Sym.Simp` simplifier used to pre-simplify hypotheses
  before grind internalization. Threading this cache across VCGen iterations avoids
  re-simplifying shared subexpressions (e.g., `s + 1 + 1 + ...` chains).
  -/
  simpState : Sym.Simp.State := {}
  /--
  Remaining VC-generation steps. Initialized from `Context.config.stepLimit` (or
  `.unlimited` when no limit is set). Decremented at each successful program-shape
  step (`tryLetHoist`, `trySplit`, `tryFvarZeta`, `applySpec`). When exhausted,
  `solve` short-circuits and emits the current goal as a VC.
  -/
  fuel : Lean.Elab.Tactic.Do.Fuel := .unlimited
  /--
  Set of invariant numbers that have been inline-elaborated by `Driver.emitVC` via
  `tryInlineInvariant`. The post-hoc invariant elaboration in `Frontend` consults
  this to know which user-provided alts have already been consumed (so it doesn't
  warn about them). -/
  inlineHandledInvariants : Std.HashSet Nat := {}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianteec95f239c0b153ac72169b71177159320bb13496dbe54317e55543ee0d88103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianteec95f239c0b153ac72169b71177159320bb13496dbe54317e55543ee0d88103.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f14342b51dd1104999a5d1e021a92d8a37ab47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
