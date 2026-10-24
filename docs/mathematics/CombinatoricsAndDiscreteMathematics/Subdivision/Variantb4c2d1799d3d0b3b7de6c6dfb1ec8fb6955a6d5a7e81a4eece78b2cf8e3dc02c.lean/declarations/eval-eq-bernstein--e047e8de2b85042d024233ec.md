# eval_eq_bernstein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "641120279d49dbefae1c893ca239537f35ba0fea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:282cb550-92f1-8a51-aa05-cbedde85003e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5fc1d11-b87b-1a88-1d9c-729fcb546e5f",
  "kind": "theorem",
  "lexical_name": "eval_eq_bernstein",
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
  "slug": "eval-eq-bernstein--e047e8de2b85042d024233ec",
  "source": {
    "blob": "641120279d49dbefae1c893ca239537f35ba0fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e047e8de2b85042d024233eca916affd1cef53ff5d79aa8bfdbf3770973bb113",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5fc1d11-b87b-1a88-1d9c-729fcb546e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_eq_bernstein (n : ℕ) (p : ControlRow M) (t : unitInterval) :
    eval n p (t : ℝ) =
      ∑ i : Fin (n + 1), _root_.bernstein n i t • p i := by
  rw [eval_eq_bernsteinWeight_sum]
  unfold bernsteinSum
  apply Finset.sum_congr rfl
  intro i hi
  rw [bernsteinWeight_eq_bernstein]

/-! ## Exact subdivision on real module rows -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantb4c2d1799d3d0b3b7de6c6dfb1ec8fb6955a6d5a7e81a4eece78b2cf8e3dc02c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641120279d49dbefae1c893ca239537f35ba0fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
