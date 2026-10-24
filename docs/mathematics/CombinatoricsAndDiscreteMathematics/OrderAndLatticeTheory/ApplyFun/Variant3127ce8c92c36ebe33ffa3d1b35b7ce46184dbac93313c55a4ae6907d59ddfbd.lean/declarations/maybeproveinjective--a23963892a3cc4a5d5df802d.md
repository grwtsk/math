# maybeProveInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2944916ab984067f978d954129bb47a73b656e35c0175d38526f2d64e5cf5715",
  "kind": "def",
  "lexical_name": "maybeProveInjective",
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
  "slug": "maybeproveinjective--a23963892a3cc4a5d5df802d",
  "source": {
    "blob": "480e1918deb65eec433c30edbc74b75fabec0b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a23963892a3cc4a5d5df802d3699ebc046ef3d774157681d15211ff82d5b51d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2944916ab984067f978d954129bb47a73b656e35c0175d38526f2d64e5cf5715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def maybeProveInjective (ginj : Expr) (using? : Option Expr) : MetaM Bool := do
  -- Try the `using` clause
  if let some u := using? then
    if ← isDefEq ginj u then
      ginj.mvarId!.assign u
      return true
    else
      let err ← mkHasTypeButIsExpectedMsg (← inferType u) (← inferType ginj)
      throwError "Using clause {err}"
  -- Try an assumption
  try ginj.mvarId!.assumption; return true catch _ => pure ()
  -- Try using that this is an equivalence
  -- Note: if `f` is itself a metavariable, this can cause it to become an equivalence;
  -- perhaps making sure `f` is an equivalence would be correct, but maybe users
  -- shouldn't do `apply_fun _`.
  let ok ← observing? do
    let [] ← ginj.mvarId!.apply (← mkConstWithFreshMVarLevels ``Equiv.injective) | failure
  if ok.isSome then return true
  return false

-- for simplicity of the implementation below it is helpful
-- to have the forward direction of these lemmas
alias ⟨ApplyFun.le_of_le, _⟩ := OrderIso.le_iff_le
alias ⟨ApplyFun.lt_of_lt, _⟩ := OrderIso.lt_iff_lt

/-- Apply a function to the main goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480e1918deb65eec433c30edbc74b75fabec0b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
