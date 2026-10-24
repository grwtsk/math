# evalSorryIfSorry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bb16d19f2e43c1d3fee44ea91add41c77508a3f80d9c503033103a52e143429",
  "kind": "def",
  "lexical_name": "evalSorryIfSorry",
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
  "slug": "evalsorryifsorry--a05db7671377145a66023b83",
  "source": {
    "blob": "a0c73a1c703f2af45349317fd89279d2b74dc280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a05db7671377145a66023b832e0c46b15746117d38e0ada81e9df8f5dab94b6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bb16d19f2e43c1d3fee44ea91add41c77508a3f80d9c503033103a52e143429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic sorryIfSorry, inherit_doc sorryIfSorry] meta def evalSorryIfSorry : Tactic := fun _ => do
  let goalType ← getMainTarget
  if goalType.hasSorry then
    closeMainGoal `sorry_if_sorry (← mkSorry goalType true)
  else
    throwError "The goal does not contain `sorry`"

/--
`rfl_cat` is a macro for `intros; rfl` which is attempted in `aesop_cat` before
doing the more expensive `aesop` tactic.

This gives a speedup because `simp` (called by `aesop`) can be very slow.
https://github.com/leanprover-community/mathlib4/pull/25475 contains measurements from June 2025.

Implementation notes:
* `refine id ?_`:
  In some cases it is important that the type of the proof matches the expected type exactly.
  e.g. if the goal is `2 = 1 + 1`, the `rfl` tactic will give a proof of type `2 = 2`.
  Starting a proof with `refine id ?_` is a trick to make sure that the proof has exactly
  the expected type, in this case `2 = 1 + 1`. See also
  https://leanprover.zulipchat.com/#narrow/channel/270676-lean4/topic/changing.20a.20proof.20can.20break.20a.20later.20proof
* `apply_rfl`:
  `rfl` is a macro that attempts both `eq_refl` and `apply_rfl`. Since `apply_rfl`
  subsumes `eq_refl`, we can use `apply_rfl` instead. This fails twice as fast as `rfl`.

-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04124e5757971c74c6f73168c3d723e13ed64b7f063ce50b1aed1ae0acfda8aa.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c73a1c703f2af45349317fd89279d2b74dc280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
