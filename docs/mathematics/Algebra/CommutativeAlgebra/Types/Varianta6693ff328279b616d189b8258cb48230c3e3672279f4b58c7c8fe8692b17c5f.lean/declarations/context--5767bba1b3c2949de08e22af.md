# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e0860ef21adc801f1c5ccf8aa83d66b05136452369e8bf748895790f22b5394",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--5767bba1b3c2949de08e22af",
  "source": {
    "blob": "7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 151,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5767bba1b3c2949de08e22af5d936ab0c796168a6ac5222113b5b995605ed5c2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e0860ef21adc801f1c5ccf8aa83d66b05136452369e8bf748895790f22b5394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  simp         : Simp.Context
  simpMethods  : Simp.Methods
  config       : Grind.Config
  /--
  If `anchorRefs? := some anchorRefs`, then only local instances and case-splits in `anchorRefs`
  are considered.
  -/
  anchorRefs?  : Option (Array AnchorRef)
  /--
  If `cheapCases` is `true`, `grind` only applies `cases` to types that contain
  at most one minor premise.
  Recall that `grind` applies `cases` when introducing types tagged with `[grind cases eager]`,
  and at `Split.lean`
  Remark: We add this option to implement the `lookahead` feature, we don't want to create several subgoals
  when performing lookahead.
  -/
  cheapCases : Bool := false
  /-
  If `reportMVarIssue` is `true`, `grind` reports an issue when internalizing metavariables.
  The default value is `true`. We set it to `false` when invoking `proveEq` from the `instantiateTheorem`
  at in the E-matching module. There, the terms may contain metavariables, and we don't want to bother
  user with "false-alarms". If the instantiation fails, we produce a more informative issue anyways.
  -/
  reportMVarIssue : Bool := true
  /-- Current source of case-splits. -/
  splitSource  : SplitSource := .input
  /-- Current source of tracking E-matching theorem instantiation (see `grind.ematch.instances`). -/
  ematchDiagSource  : EMatchDiagSource := .other
  /-- Symbol priorities for inferring E-matching patterns -/
  symPrios     : SymbolPriorities
  extensions   : ExtensionStateArray := #[]
  debug        : Bool -- Cached `grind.debug (← getOptions)`
  ematchDiag   : Bool -- Cached `grind.ematch.diagnostics (← getOptions)`

export Sym (getTrueExpr getFalseExpr getBoolTrueExpr getBoolFalseExpr getNatZeroExpr getOrderingEqExpr getIntExpr isTrueExpr isFalseExpr)

/-- Key for the congruence theorem cache. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
