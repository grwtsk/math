# eval_split_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24383044-0aca-cfe7-223f-d4ae623be392",
  "kind": "theorem",
  "lexical_name": "eval_split_right",
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
  "slug": "eval-split-right--5b7334093c5430f40ed0dd97",
  "source": {
    "blob": "c54559a1bd84860a2281fef77dffd7188c66a935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7334093c5430f40ed0dd97e9b8aa2c82a87aa8b9376b1402b9a910127fde50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24383044-0aca-cfe7-223f-d4ae623be392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_split_right (n : ℕ) (p : ControlRow M) (u t : ℝ) :
    eval n (splitRight n p u) t =
      eval n p (u + (1 - u) * t) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [eval]
      calc
        eval n (step t (splitRight (n + 1) p u)) t =
            eval n (splitRight n (step (u + (1 - u) * t) p) u) t := by
          apply eval_congr_prefix
          intro i hi
          exact step_splitRight_prefix n i hi t u p
        _ = eval n (step (u + (1 - u) * t) p)
              (u + (1 - u) * t) :=
          ih (step (u + (1 - u) * t) p)
        _ = eval (n + 1) p (u + (1 - u) * t) := rfl

/-! ## Finite and weighted homogeneous wrappers -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant9bded59f7b5255df0ae9fd198fd81e9ff010cb46934134da4ca25c1eacffbc10.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54559a1bd84860a2281fef77dffd7188c66a935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
