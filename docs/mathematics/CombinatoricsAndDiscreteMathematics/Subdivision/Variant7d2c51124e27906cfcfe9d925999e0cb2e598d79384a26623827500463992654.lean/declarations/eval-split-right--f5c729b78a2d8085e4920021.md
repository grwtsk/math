# eval_split_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37ddcd8fe2d1ff6c764eb21fb291388fa0399581",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e831c0fd-d4b6-81eb-ab0e-fcdb93dc269d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab4a794b-2f5e-7d91-f0f0-48684512621b",
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
  "slug": "eval-split-right--f5c729b78a2d8085e4920021",
  "source": {
    "blob": "37ddcd8fe2d1ff6c764eb21fb291388fa0399581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5c729b78a2d8085e492002110ded397e538197415856e0b337469ed6e717557",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab4a794b-2f5e-7d91-f0f0-48684512621b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–232.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ddcd8fe2d1ff6c764eb21fb291388fa0399581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
