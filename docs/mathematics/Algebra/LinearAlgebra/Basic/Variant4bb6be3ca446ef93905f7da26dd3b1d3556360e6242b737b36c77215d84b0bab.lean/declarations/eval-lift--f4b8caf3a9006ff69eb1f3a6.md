# eval_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0814f0c1239f2e5687bed89ca60013f19855ce8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 509,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bb6be3ca446ef93905f7da26dd3b1d3556360e6242b737b36c77215d84b0bab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fc61bdb-3dba-593e-cff7-0252468769d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be071c3c-765d-8cc8-5818-cf6c4e728cfd",
  "kind": "lemma",
  "lexical_name": "eval_lift",
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
  "slug": "eval-lift--f4b8caf3a9006ff69eb1f3a6",
  "source": {
    "blob": "d0814f0c1239f2e5687bed89ca60013f19855ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 509,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4bb6be3ca446ef93905f7da26dd3b1d3556360e6242b737b36c77215d84b0bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b8caf3a9006ff69eb1f3a61085e3e005aabe51ead78b0c9c4e10b12d2fd7e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant4bb6be3ca446ef93905f7da26dd3b1d3556360e6242b737b36c77215d84b0bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be071c3c-765d-8cc8-5818-cf6c4e728cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eval_lift (f : ∀ (n : ℕ), M →ₗ[R] N ⧸ (I ^ n • ⊤ : Submodule R N))
    (h : ∀ {m n : ℕ} (hle : m ≤ n), transitionMap I N hle ∘ₗ f n = f m)
    (n : ℕ) : eval I N n ∘ₗ lift I f h = f n :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant4bb6be3ca446ef93905f7da26dd3b1d3556360e6242b737b36c77215d84b0bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant4bb6be3ca446ef93905f7da26dd3b1d3556360e6242b737b36c77215d84b0bab.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0814f0c1239f2e5687bed89ca60013f19855ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
