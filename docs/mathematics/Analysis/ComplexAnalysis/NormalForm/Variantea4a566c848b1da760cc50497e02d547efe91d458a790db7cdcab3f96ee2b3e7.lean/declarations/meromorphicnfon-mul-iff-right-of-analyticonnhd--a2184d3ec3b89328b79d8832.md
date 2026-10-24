# meromorphicNFOn_mul_iff_right_of_analyticOnNhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72dabaddb6ccd3e9d8e79c13d979a5764648d550",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab915233-2f87-6d01-f49e-eeed2f5c9351",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a6bb7bb-6881-527c-f29e-49709f170cd2",
  "kind": "theorem",
  "lexical_name": "meromorphicNFOn_mul_iff_right_of_analyticOnNhd",
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
  "slug": "meromorphicnfon-mul-iff-right-of-analyticonnhd--a2184d3ec3b89328b79d8832",
  "source": {
    "blob": "72dabaddb6ccd3e9d8e79c13d979a5764648d550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 503,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2184d3ec3b89328b79d88329b8ba63eca88a978415e97b50c7ec85f4d863e39",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a6bb7bb-6881-527c-f29e-49709f170cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicNFOn_mul_iff_right_of_analyticOnNhd {f g : 𝕜 → 𝕜} (h₁g : AnalyticOnNhd 𝕜 g U)
    (h₂g : ∀ u ∈ U, g u ≠ 0) :
    MeromorphicNFOn (g * f) U ↔ MeromorphicNFOn f U := by
  rw [← smul_eq_mul]
  exact meromorphicNFOn_smul_iff_right_of_analyticOnNhd h₁g h₂g

/--
If `f` is any function and `g` is analytic without zero in `U`, then `f` is
meromorphic in normal form on `U` iff `f * g` is meromorphic in normal form on
`U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72dabaddb6ccd3e9d8e79c13d979a5764648d550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
