# normedSpaceCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d17c6d95a7ed842d8ad84e2af08ce4819124a599",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e63beb7-9cba-a588-d9a0-9a9b680ac1bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9ce6a37-7c82-454f-ad48-fe2c5e56283f",
  "kind": "lemma",
  "lexical_name": "normedSpaceCore",
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
  "slug": "normedspacecore--356bd7fc29641c7ca21ca3e9",
  "source": {
    "blob": "d17c6d95a7ed842d8ad84e2af08ce4819124a599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 571,
    "path": "GRWTSK/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:356bd7fc29641c7ca21ca3e940d2139f772e30933bfe15b6986dacb0246ba807",
  "verification": {
    "reference": "docs/verification/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9ce6a37-7c82-454f-ad48-fe2c5e56283f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normedSpaceCore : NormedSpace.Core ℂ (CStarMatrix m n A) where
  norm_nonneg M := (toCLM M).opNorm_nonneg
  norm_smul c M := by rw [norm_def, norm_def, map_smul, norm_smul _ (toCLM M)]
  norm_triangle M₁ M₂ := by simpa [← map_add] using norm_add_le (toCLM M₁) (toCLM M₂)
  norm_eq_zero_iff := by
    simpa only [norm_def, norm_eq_zero, ← injective_iff_map_eq_zero'] using toCLM_injective

open WithCStarModule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CStarMatrix/Variantfbe4fabe09d5a87fa363fc7cf7e6e5a66d61c20c4bf04549ab68ccd1ce49fbb4.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d17c6d95a7ed842d8ad84e2af08ce4819124a599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
