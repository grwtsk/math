# _root_.Lean.MVarId.generalizeProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdfc478ffeccba4db825bbf3d965b594897bcc3d64ad8dfa258ad45abc5573ff",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.generalizeProofs",
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
  "slug": "root-lean-mvarid-generalizeproofs--ed6fc7614ae07803408b9b42",
  "source": {
    "blob": "6d13bfa7a36083eb7d8578b038e9db071990e897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 469,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed6fc7614ae07803408b9b423c01417ed50e6c18c21ff60725c932da305ae550",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdfc478ffeccba4db825bbf3d965b594897bcc3d64ad8dfa258ad45abc5573ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def _root_.Lean.MVarId.generalizeProofs
    (g : MVarId) (fvars : Array FVarId) (target : Bool) (config : GeneralizeProofs.Config := {}) :
    MetaM (Array Expr × MVarId) := do
  let (rfvars, g) ← g.revert fvars (clearAuxDeclsInsteadOfRevert := true)
  g.withContext do
    let s := { propToFVar := ← GeneralizeProofs.initialPropToFVar }
    GeneralizeProofs.generalizeProofsCore g fvars rfvars target |>.run config |>.run' s

/--
`generalize_proofs ids* [at locs]?` generalizes proofs in the current goal,
turning them into new local hypotheses.

- `generalize_proofs` generalizes proofs in the target.
- `generalize_proofs at h₁ h₂` generalized proofs in hypotheses `h₁` and `h₂`.
- `generalize_proofs at *` generalizes proofs in the entire local context.
- `generalize_proofs pf₁ pf₂ pf₃` uses names `pf₁`, `pf₂`, and `pf₃` for the generalized proofs.
  These can be `_` to not name proofs.

If a proof is already present in the local context, it will use that rather than create a new
local hypothesis.

When doing `generalize_proofs at h`, if `h` is a let binding, its value is cleared,
and furthermore if `h` duplicates a preceding local hypothesis then it is eliminated.

The tactic is able to abstract proofs from under binders, creating universally quantified
proofs in the local context.
To disable this, use `generalize_proofs -abstract`.
The tactic is also set to recursively abstract proofs from the types of the generalized proofs.
This can be controlled with the `maxDepth` configuration option,
with `generalize_proofs (config := { maxDepth := 0 })` turning this feature off.

For example:
```lean
def List.nthLe {α} (l : List α) (n : ℕ) (_h : n < l.length) : α := sorry
example : List.nthLe [1, 2] 1 (by simp) = 2 := by
  -- ⊢ [1, 2].nthLe 1 ⋯ = 2
  generalize_proofs h
  -- h : 1 < [1, 2].length
  -- ⊢ [1, 2].nthLe 1 h = 2
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d13bfa7a36083eb7d8578b038e9db071990e897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
