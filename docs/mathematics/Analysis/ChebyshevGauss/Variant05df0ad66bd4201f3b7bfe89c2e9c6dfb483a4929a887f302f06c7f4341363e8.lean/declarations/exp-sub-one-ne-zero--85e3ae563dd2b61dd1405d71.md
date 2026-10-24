# exp_sub_one_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4c069a3b0e7d2b62d71963d65f56b38470cf3cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f05a632c-74b3-babe-9191-e5a584557374",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5ae1f99-ce83-1fda-86e8-2a19c489c4fc",
  "kind": "lemma",
  "lexical_name": "exp_sub_one_ne_zero",
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
  "slug": "exp-sub-one-ne-zero--85e3ae563dd2b61dd1405d71",
  "source": {
    "blob": "c4c069a3b0e7d2b62d71963d65f56b38470cf3cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e3ae563dd2b61dd1405d71bc5b1ce24b1163b41350779a202f4f35f1c0896a",
  "verification": {
    "reference": "docs/verification/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5ae1f99-ce83-1fda-86e8-2a19c489c4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exp_sub_one_ne_zero {n : ℕ} {k : ℤ} (hn : n ≠ 0) (hk : ¬ (2 * n : ℤ) ∣ k) :
    exp (k / n * π * I) ≠ 1 := by
  contrapose hk
  obtain ⟨m, hx⟩ := Complex.exp_eq_one_iff.mp hk
  have h : k = 2 * n * m := by
    apply (@Int.cast_inj ℂ _ _).mp
    linear_combination (norm := (push_cast; field [show (n : ℂ) ≠ 0 by aesop])) hx * (n / π / I)
  use m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c069a3b0e7d2b62d71963d65f56b38470cf3cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
