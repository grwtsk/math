# oangle_CQ₁Q_sign_eq_oangle_CBA_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f034e22976e9b98bf5355d1866ec621c2d15b1b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f4ae454-db14-a837-26a8-2dc58d67707c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b15a6b24-502d-e4ad-51da-dba3fd73c935",
  "kind": "theorem",
  "lexical_name": "oangle_CQ₁Q_sign_eq_oangle_CBA_sign",
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
  "slug": "oangle-cq-q-sign-eq-oangle-cba-sign--1625cc8a686fc2c40ce26c95",
  "source": {
    "blob": "f034e22976e9b98bf5355d1866ec621c2d15b1b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 283,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1625cc8a686fc2c40ce26c95ea5792229fa13872436e345745e69796f49516fa",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b15a6b24-502d-e4ad-51da-dba3fd73c935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_CQ₁Q_sign_eq_oangle_CBA_sign :
    (∡ cfg.C cfg.Q₁ cfg.Q).sign = (∡ cfg.C cfg.B cfg.A).sign := by
  rw [← cfg.sbtw_Q_A₁_Q₁.symm.oangle_eq_right,
    cfg.sOppSide_CB_Q_Q₁.oangle_sign_eq_neg (left_mem_affineSpan_pair ℝ cfg.C cfg.B)
      cfg.wbtw_B_A₁_C.symm.mem_affineSpan,
    ← Real.Angle.sign_neg, ← oangle_rev,
    cfg.wbtw_B_A₁_C.oangle_sign_eq_of_ne_right cfg.Q cfg.A₁_ne_C, oangle_rotate_sign,
    cfg.wbtw_B_Q_B₁.oangle_eq_right cfg.Q_ne_B,
    cfg.wbtw_A_B₁_C.symm.oangle_sign_eq_of_ne_left cfg.B cfg.B₁_ne_C.symm]
#align imo2019_q2.imo2019q2_cfg.oangle_CQ₁Q_sign_eq_oangle_CBA_sign Imo2019Q2.Imo2019q2Cfg.oangle_CQ₁Q_sign_eq_oangle_CBA_sign

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f034e22976e9b98bf5355d1866ec621c2d15b1b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
