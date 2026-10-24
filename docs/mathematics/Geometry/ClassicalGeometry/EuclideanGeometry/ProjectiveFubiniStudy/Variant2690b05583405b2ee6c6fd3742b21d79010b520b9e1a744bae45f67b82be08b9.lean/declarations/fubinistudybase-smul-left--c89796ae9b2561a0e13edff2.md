# fubiniStudyBase_smul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d55f987a0bbf403231cbef3037420b39ea77a6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7204cb8b-fbbf-a176-75db-0302dd6074fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdbbe51a-1762-5eb7-88ca-424ad6ae2c5e",
  "kind": "theorem",
  "lexical_name": "fubiniStudyBase_smul_left",
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
  "slug": "fubinistudybase-smul-left--c89796ae9b2561a0e13edff2",
  "source": {
    "blob": "0d55f987a0bbf403231cbef3037420b39ea77a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 285,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c89796ae9b2561a0e13edff2ac3154f16ae839e65e6a9d4da0bd1b4fd3ef7fee",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdbbe51a-1762-5eb7-88ca-424ad6ae2c5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fubiniStudyBase_smul_left (v w : H) {c : ℂ} (hc : c ≠ 0) :
    fubiniStudyBase (c • v) w = fubiniStudyBase v w := by
  unfold fubiniStudyBase
  congr 1
  rw [inner_smul_left, norm_mul, RCLike.norm_conj, norm_smul]
  field_simp [norm_ne_zero_iff.mpr hc]

/-- Nonzero scaling of the right representative leaves the ray angle unchanged. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55f987a0bbf403231cbef3037420b39ea77a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
