# getFalseProof?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bde4e8dc0573a70f6ba425b3d1055fd22bf2448c1aabaeb879eed79eb7dbf129",
  "kind": "def",
  "lexical_name": "getFalseProof?",
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
  "slug": "getfalseproof--95c3a5bf589899910cc6c631",
  "source": {
    "blob": "b43ce3f054bf56f72211b5d290ec1e7fce59a9bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95c3a5bf589899910cc6c6318e93038e0ee940ab7723743c8f647bd1e0500eb2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bde4e8dc0573a70f6ba425b3d1055fd22bf2448c1aabaeb879eed79eb7dbf129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getFalseProof? (mvarId : MVarId) : MetaM (Option Expr) := mvarId.withContext do
  let proof ← instantiateMVars (mkMVar mvarId)
  if proof.hasSyntheticSorry then
    /- **Note**: We do not perform non-chronological backtracking if the proof
    contains synthetic `sorry`. -/
    return none
  else
    go proof
where
  go (proof : Expr) : MetaM (Option Expr) := do
    match_expr proof with
    | False.elim _ p => return some p
    | False.casesOn _ p => return some p
    | id α p => if α.isFalse then return some p else return none
    | _ =>
      /-
      **Note**: `intros` tactics may hide the `False` proof behind a `casesOn`
      For example: suppose the subgoal has a type of the form `p₁ → q₁ ∧ q₂ → p₂ → False`
      The proof will be of the form `fun _ h => h.casesOn (fun _ _ => hf)` where `hf` is the proof
      of `False` we are looking for.
      Non-chronological backtracking currently fails in this kind of example.
      -/
      let .lam _ _ b _ := proof | return none
      if b.hasLooseBVars then return none
      go b

/-- Returns `true` if the given list can be compressed using `<;>` at `splitCore` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b43ce3f054bf56f72211b5d290ec1e7fce59a9bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
