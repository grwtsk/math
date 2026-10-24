# det_fin_three_normalize_first_row

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
      "line": 9,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ed16f7-b5d5-b6f2-a85b-6f44f194e10c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6440f864-2b68-bb84-e382-3ea3f4d8dbfe",
  "kind": "theorem",
  "lexical_name": "det_fin_three_normalize_first_row",
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
  "slug": "det-fin-three-normalize-first-row--5c7a13144454f5339888a8fe",
  "source": {
    "blob": "d5a9166e82225990e56d6fe5483bfff234be2763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 9,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c7a13144454f5339888a8fe6d2af1f85c2d209155adc402a0ae8acc84836507",
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

Occurrence: `result:6440f864-2b68-bb84-e382-3ea3f4d8dbfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_fin_three_normalize_first_row (M : Matrix (Fin 3) (Fin 3) ℝ)
    (h0 : ∀ j, M 0 j ≠ 0) :
    M.det = (M 0 0 * M 0 1 * M 0 2) *
      Matrix.det !![1, 1, 1;
        M 1 0 / M 0 0, M 1 1 / M 0 1, M 1 2 / M 0 2;
        M 2 0 / M 0 0, M 2 1 / M 0 1, M 2 2 / M 0 2] := by
  simp [Matrix.det_fin_three]
  field_simp [h0 0, h0 1, h0 2]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a9166e82225990e56d6fe5483bfff234be2763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
