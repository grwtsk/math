# lt_rpow_inv_iff_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f2f0e46ca3e84897756b6831bf647c91b8c7f84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d4dbb5d-9e49-589d-576b-81b811828399",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e128c971-996a-60cf-d219-e25a6a32fbca",
  "kind": "theorem",
  "lexical_name": "lt_rpow_inv_iff_of_neg",
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
  "slug": "lt-rpow-inv-iff-of-neg--28c9a3d91f50e2ee043757d5",
  "source": {
    "blob": "7f2f0e46ca3e84897756b6831bf647c91b8c7f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 462,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28c9a3d91f50e2ee043757d5dd1cc9bdc332756e736dc9a0b95a50bbfc35780e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e128c971-996a-60cf-d219-e25a6a32fbca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_rpow_inv_iff_of_neg (hx : 0 < x) (hy : 0 < y) (hz : z < 0) :
    x < y ^ z⁻¹ ↔ y < x ^ z := by
  have hz' : 0 < -z := by rwa [lt_neg, neg_zero]
  have hxz : 0 < x ^ (-z) := Real.rpow_pos_of_pos hx _
  have hyz : 0 < y ^ z⁻¹ := Real.rpow_pos_of_pos hy _
  rw [← Real.rpow_lt_rpow_iff hx.le hyz.le hz', ← Real.rpow_mul hy.le]
  simp only [ne_of_lt hz, Real.rpow_neg_one, mul_neg, inv_mul_cancel, Ne.def, not_false_iff]
  rw [lt_inv hxz hy, ← Real.rpow_neg_one, ← Real.rpow_mul hx.le]
  simp
#align real.lt_rpow_inv_iff_of_neg Real.lt_rpow_inv_iff_of_neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2f0e46ca3e84897756b6831bf647c91b8c7f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
