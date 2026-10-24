# LinearMap.isPosSemidef_iff_posSemidef_toMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09aba995-b349-4ce4-293f-ce3401ead3e2",
  "kind": "lemma",
  "lexical_name": "LinearMap.isPosSemidef_iff_posSemidef_toMatrix",
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
  "slug": "linearmap-ispossemidef-iff-possemidef-tomatrix--9674d12bb8329cb3985a24da",
  "source": {
    "blob": "0646f618c017fbdfa2826808f3dc06916228eea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9674d12bb8329cb3985a24dac38acbe685352d4a3e7ab6aefeca555bb1f64725",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09aba995-b349-4ce4-293f-ce3401ead3e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.isPosSemidef_iff_posSemidef_toMatrix :
    B.IsPosSemidef ↔ (toMatrix₂ b b B).PosSemidef := by
  rw [isPosSemidef_def, Matrix.posSemidef_iff_dotProduct_mulVec]
  apply and_congr (B.isSymm_iff_isHermitian_toMatrix b)
  rw [isNonneg_def]
  refine ⟨fun h x ↦ ?_, fun h x ↦ ?_⟩
  · rw [star_dotProduct_toMatrix₂_mulVec]
    exact h _
  · rw [apply_eq_star_dotProduct_toMatrix₂_mulVec b]
    exact h _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0646f618c017fbdfa2826808f3dc06916228eea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
