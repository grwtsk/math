# MeromorphicNFAt.smul_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f847eede3c3cd158a154044da915c22e9eadc6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54ab2076-832a-7cc0-5cd3-6632fe7f4fb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd5d2f95-82dc-af42-f56b-f658c98e2a8a",
  "kind": "lemma",
  "lexical_name": "MeromorphicNFAt.smul_analytic",
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
  "slug": "meromorphicnfat-smul-analytic--472c60db0faf906f9dad7444",
  "source": {
    "blob": "2f847eede3c3cd158a154044da915c22e9eadc6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:472c60db0faf906f9dad7444f6cb6b658813d7a456d5c6d14314101a8e8d7072",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd5d2f95-82dc-af42-f56b-f658c98e2a8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeromorphicNFAt.smul_analytic (hf : MeromorphicNFAt f x)
    (h₁g : AnalyticAt 𝕜 g x) (h₂g : g x ≠ 0) :
    MeromorphicNFAt (g • f) x := by
  rcases hf with h₁f | ⟨n, g_f, h₁g_f, h₂g_f, h₃g_f⟩
  · left
    filter_upwards [h₁f]
    simp_all
  · right
    use n, g • g_f, h₁g.smul h₁g_f
    constructor
    · simp [smul_ne_zero h₂g h₂g_f]
    · filter_upwards [h₃g_f]
      intro y hy
      simp only [Pi.smul_apply', hy, Pi.pow_apply]
      rw [smul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f847eede3c3cd158a154044da915c22e9eadc6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
