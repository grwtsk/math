# Split.State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34d417699ad4a5ea6fad290ab333dd2820c7597508a91a684e550a171bdbfaa8",
  "kind": "structure",
  "lexical_name": "Split.State",
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
  "slug": "split-state--a1b378524ea53e7d6c71f818",
  "source": {
    "blob": "319df85256f66e0b9295ed3113fcc6a61dd47bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 918,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1b378524ea53e7d6c71f81825558c3c111cba69f26bea2b8434427600306390",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34d417699ad4a5ea6fad290ab333dd2820c7597508a91a684e550a171bdbfaa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 918–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Split.State where
  /-- Number of splits performed to get to this goal. -/
  num          : Nat := 0
  /-- Case-split candidates. -/
  candidates   : List SplitInfo := []
  /-- Case-splits that have been inserted at `candidates` at some point. -/
  added        : Std.HashSet SplitInfo := {}
  /-- Case-splits that have already been performed, or that do not have to be performed anymore. -/
  resolved     : PHashSet ExprPtr := {}
  /--
  Sequence of cases steps that generated this goal. We only use this information for diagnostics.
  Remark: `casesTrace.length ≥ numSplits` because we don't increase the counter for `cases`
  applications that generated only 1 subgoal.
  -/
  trace        : List CaseTrace := []
  /-- Lookahead "case-splits". -/
  lookaheads   : List SplitInfo := []
  /--
  A mapping `(a, b) ↦ is` s.t. for each `SplitInfo.arg a b i eq`
  in `candidates` or `lookaheads` we have `i ∈ is`.
  We use this information to decide whether the split/lookahead is "ready"
  to be tried or not.
  -/
  argPosMap    : Std.HashMap (Expr × Expr) (List Nat) := {}
  /--
  Mapping from pairs `(f, i)` to a list of arguments.
  Each argument occurs as the `i`-th of an `f`-application.
  We use this information to add splits/lookaheads for
  triggering extensionality theorems and model-based theory combination.
  See `addSplitCandidatesForExt`.
  -/
  argsAt       : PHashMap (Expr × Nat) (List SplitArg) := {}
  deriving Inhabited

/-- Clean name generator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean#L918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319df85256f66e0b9295ed3113fcc6a61dd47bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
