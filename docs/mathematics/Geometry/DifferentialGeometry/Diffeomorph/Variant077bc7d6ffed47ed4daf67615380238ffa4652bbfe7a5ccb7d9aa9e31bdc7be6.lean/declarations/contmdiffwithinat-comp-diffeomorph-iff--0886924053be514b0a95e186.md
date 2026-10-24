# contMDiffWithinAt_comp_diffeomorph_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c257b2570657633197939c06452f7a4e7b1dd120",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cb13edb-8ea3-96e1-9f2f-f6888ac79a00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6fc7aac-766b-84e2-30d1-ac4382d79cc3",
  "kind": "theorem",
  "lexical_name": "contMDiffWithinAt_comp_diffeomorph_iff",
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
  "slug": "contmdiffwithinat-comp-diffeomorph-iff--0886924053be514b0a95e186",
  "source": {
    "blob": "c257b2570657633197939c06452f7a4e7b1dd120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 287,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0886924053be514b0a95e186a8280d5c6a70df2ee1e7f9edeeb9157897e561dc",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6fc7aac-766b-84e2-30d1-ac4382d79cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffWithinAt_comp_diffeomorph_iff {m} (h : M ≃ₘ^n⟮I, J⟯ N) {f : N → M'} {s x}
    (hm : m ≤ n) :
    CMDiffAt[s] m (f ∘ h) x ↔ CMDiffAt[h.symm ⁻¹' s] m f (h x) := by
  constructor
  · intro Hfh
    rw [← h.symm_apply_apply x] at Hfh
    simpa only [Function.comp_def, h.apply_symm_apply] using
      Hfh.comp (h x) (h.symm.contMDiffWithinAt.of_le hm) (mapsTo_preimage _ _)
  · rw [← h.image_eq_preimage_symm]
    exact fun hf => hf.comp x (h.contMDiffWithinAt.of_le hm) (mapsTo_image _ _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant077bc7d6ffed47ed4daf67615380238ffa4652bbfe7a5ccb7d9aa9e31bdc7be6.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c257b2570657633197939c06452f7a4e7b1dd120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
