# contMDiff_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:092fe2ac-cd75-92cb-cefb-38443ddf0df7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:404b14d0-1cd2-0834-3afa-4dceacc9aa6e",
  "kind": "lemma",
  "lexical_name": "contMDiff_smul",
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
  "slug": "contmdiff-smul--9d6bb6bd31fbb458dc234585",
  "source": {
    "blob": "f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 101,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d6bb6bd31fbb458dc2345852e38f0bf5c1e6a466ccc1997770543c61a74f1f3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:404b14d0-1cd2-0834-3afa-4dceacc9aa6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiff_smul {g : GL (Fin 2) ℝ} (hg : 0 < g.det.val) :
    ContMDiff 𝓘(ℂ) 𝓘(ℂ) n (fun τ : ℍ ↦ g • τ) := fun τ ↦ by
  refine contMDiffAt_iff_target.mpr ⟨(continuous_const_smul g).continuousAt, ?_⟩
  simpa [glPos_smul_def hg] using (contMDiff_num g τ).mul (contMDiff_inv_denom g τ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
