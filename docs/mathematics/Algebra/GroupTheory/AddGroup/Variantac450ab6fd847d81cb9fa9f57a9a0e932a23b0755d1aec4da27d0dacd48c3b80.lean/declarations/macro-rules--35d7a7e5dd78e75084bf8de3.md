# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0aa74711fda7a7b3f6fe2d6a6fe5005c6c017239878669118ad500581050da9",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--35d7a7e5dd78e75084bf8de3",
  "source": {
    "blob": "be5a4b7109468ea0d564be8770d43432c7427d58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 109,
    "path": "GRWTSK/Algebra/GroupTheory/AddGroup/Variantac450ab6fd847d81cb9fa9f57a9a0e932a23b0755d1aec4da27d0dacd48c3b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35d7a7e5dd78e75084bf8de35326e971d8faff874ed144552d54fc85cc258bfc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddGroup/Variantac450ab6fd847d81cb9fa9f57a9a0e932a23b0755d1aec4da27d0dacd48c3b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0aa74711fda7a7b3f6fe2d6a6fe5005c6c017239878669118ad500581050da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
| `(tactic| add_group $[$loc]?) =>
  `(tactic| first
    | fail_if_no_progress
        simp -decide -failIfUnchanged only [sub_eq_add_neg] $[$loc]?
        repeat fail_if_no_progress
          (simp -decide -failIfUnchanged only
            [addCommutatorElement_def, add_zero, zero_add,
              neg_add_rev, neg_zero, zsmul_neg, ← neg_zsmul,
              ← natCast_zsmul, ← mul_zsmul',
              Int.natCast_add, Int.natCast_mul, neg_neg,
              zsmul_zero, zero_zsmul, one_zsmul, neg_one_zsmul,
              ← add_assoc,
              ← add_zsmul, ← add_one_zsmul, ← one_add_zsmul,
              Mathlib.Tactic.Group._zsmul_trick,
              Mathlib.Tactic.Group._zsmul_trick_one,
              Mathlib.Tactic.Group._zsmul_trick_one',
              _zsmul_neg_trick, _neg_zsmul_trick, _neg_neg_trick,
              _add_zsmul_neg_trick, _add_neg_zsmul_trick, _add_neg_neg_trick,
              add_neg_cancel_right, neg_add_cancel_right,
              tsub_self, sub_self, add_neg_cancel, neg_add_cancel]
            $[$loc]?
          <;> ring_nf (ifUnchanged := .silent) $[$loc]?)
    | fail "`add_group` made no progress")

end Mathlib.Tactic.AddGroup

/-!
We register `add_group` with the `hint` tactic.
-/

register_hint 900 add_group
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddGroup/Variantac450ab6fd847d81cb9fa9f57a9a0e932a23b0755d1aec4da27d0dacd48c3b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddGroup/Variantac450ab6fd847d81cb9fa9f57a9a0e932a23b0755d1aec4da27d0dacd48c3b80.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be5a4b7109468ea0d564be8770d43432c7427d58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
