# acyclic_truncGE_iff_isSupportedOutside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33aa50866daca8b4d74875fa0da81dc212bf944f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f23aebd-351f-e63d-e9de-bbe7e4d986cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9542c1d1-a4bf-3c32-ade3-0c1f8c9a65f4",
  "kind": "lemma",
  "lexical_name": "acyclic_truncGE_iff_isSupportedOutside",
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
  "slug": "acyclic-truncge-iff-issupportedoutside--4f849cc1196ec05e616b13b5",
  "source": {
    "blob": "33aa50866daca8b4d74875fa0da81dc212bf944f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f849cc1196ec05e616b13b50f093937a4a25b758a429040603e3ca36bdfec98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9542c1d1-a4bf-3c32-ade3-0c1f8c9a65f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma acyclic_truncGE_iff_isSupportedOutside :
    (K.truncGE e).Acyclic ↔ K.IsSupportedOutside e := by
  constructor
  · intro hK
    exact ⟨fun i =>
      by simpa only [exactAt_iff_of_quasiIsoAt (K.πTruncGE e)] using hK (e.f i)⟩
  · intro hK i'
    by_cases hi' : ∃ i, e.f i = i'
    · obtain ⟨i, rfl⟩ := hi'
      simpa only [← exactAt_iff_of_quasiIsoAt (K.πTruncGE e)] using hK.exactAt i
    · exact exactAt_of_isSupported _ e i' (by simpa using hi')

variable {K L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33aa50866daca8b4d74875fa0da81dc212bf944f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
