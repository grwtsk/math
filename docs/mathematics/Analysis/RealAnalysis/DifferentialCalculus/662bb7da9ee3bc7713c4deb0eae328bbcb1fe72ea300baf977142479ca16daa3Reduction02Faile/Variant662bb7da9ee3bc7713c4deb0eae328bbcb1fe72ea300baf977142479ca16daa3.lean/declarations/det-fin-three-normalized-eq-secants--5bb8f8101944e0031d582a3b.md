# det_fin_three_normalized_eq_secants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a9166e82225990e56d6fe5483bfff234be2763",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d95b0878-c6ec-2399-e5ce-e384a2a8ab50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73b356d5-05ef-99e2-df3c-cbaaebb37dd8",
  "kind": "theorem",
  "lexical_name": "det_fin_three_normalized_eq_secants",
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
  "slug": "det-fin-three-normalized-eq-secants--5bb8f8101944e0031d582a3b",
  "source": {
    "blob": "d5a9166e82225990e56d6fe5483bfff234be2763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bb8f8101944e0031d582a3b0c405ea3b1f5fb0e1a2872b84785025445822cd8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73b356d5-05ef-99e2-df3c-cbaaebb37dd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_fin_three_normalized_eq_secants (a0 a1 a2 b0 b1 b2 : ℝ)
    (h01 : a1 - a0 ≠ 0) (h12 : a2 - a1 ≠ 0) :
    Matrix.det !![1, 1, 1; a0, a1, a2; b0, b1, b2] =
      (a1 - a0) * (a2 - a1) *
        ((b2 - b1) / (a2 - a1) - (b1 - b0) / (a1 - a0)) := by
  rw [det_fin_three_normalized_eq_differences]
  field_simp [h01, h12]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a9166e82225990e56d6fe5483bfff234be2763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
