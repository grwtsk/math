# mkPointFrameApply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ba062cbb7f394a6938b473a2c29677ae6869febdad265e93e86ff6728a30d74",
  "kind": "def",
  "lexical_name": "mkPointFrameApply",
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
  "slug": "mkpointframeapply--0d338b9b71a5273001639be8",
  "source": {
    "blob": "8e6a20668f4df44e498088500bfadb5f207dd1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d338b9b71a5273001639be88caa66cff336e33bc57e088198aa4969db8fcfc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ba062cbb7f394a6938b473a2c29677ae6869febdad265e93e86ff6728a30d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkPointFrameApply (introThm : Name) (opAs pre : Expr) (ss : List Expr) :
    MetaM Expr := do
  match ss with
  | [] =>
    let introRule ← mkConstWithFreshMVarLevels introThm
    let (xs, _, body) ← forallMetaTelescope (← Meta.inferType introRule)
    let target ← mkAppM ``PartialOrder.rel #[pre, opAs]
    unless ← isDefEq body target do
      throwError "lattice terminal {introThm} does not conclude {target}"
    return mkAppN introRule xs
  | _ =>
    let s := ss.getLast!
    let init := ss.dropLast
    let Q := mkAppN opAs init.toArray
    let preTy ← Meta.inferType pre
    let gate ← withLocalDeclD `u (← Meta.inferType s) fun u => do
      let ofp ← mkAppOptM ``Lean.Order.CompleteLattice.ofProp #[preTy, none, ← mkEq u s]
      mkLambdaFVars #[u] (← mkAppM ``Lean.Order.meet #[ofp, pre])
    let h ← mkPointFrameApply introThm opAs gate init
    mkAppM ``Lean.Order.le_apply_of_point_meet_le #[s, pre, Q, h]

/--
Build a reusable backward rule decomposing `pre ⊑ op … s⃗` for a lattice operator. The operator's
value arguments are made schematic; `rewrites` saturate the operator through its distribution and
unfolding equalities, the terminal keyed by the reduced head fires, and any state arguments left
over-applied by the terminal are point-framed onto the precondition. When the reduced head has no
registered terminal, the saturated `pre ⊑ reduced` is handed back as the sole subgoal. Throws when the
operator neither reduces nor has a terminal, since its rule would be the identity.

For `⊓`, produces `∀ a b s⃗ pre, pre ⊑ a s⃗ → pre ⊑ b s⃗ → pre ⊑ (a ⊓ b) s⃗`. For the opaque residual
`upperAdjoint f b`, produces `∀ f b s⃗ pre, f (fun u⃗ => ⌜u⃗ = s⃗⌝ ⊓ pre) ⊑ b → pre ⊑ upperAdjoint f b s⃗`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variant67dd79088dea60aefa82e289e078874026062dab88c2d5dc2882c7d5874c945a.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6a20668f4df44e498088500bfadb5f207dd1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
