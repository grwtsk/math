# fixed_return_iff_relative_stabilizes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e16fb87fa61e790b8dc29b84a5051a1858bea006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ef14595-0c5b-2c83-434e-0dcdd562eb5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c512ce5b-ce8e-8a62-c59a-c9ab3d03dbe9",
  "kind": "theorem",
  "lexical_name": "fixed_return_iff_relative_stabilizes",
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
  "slug": "fixed-return-iff-relative-stabilizes--dac5c08c32458637d14ddd21",
  "source": {
    "blob": "e16fb87fa61e790b8dc29b84a5051a1858bea006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 53,
    "path": "GRWTSK/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac5c08c32458637d14ddd21334066082a6d0fc287e7779119ef9e7cd0b21c6c",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c512ce5b-ce8e-8a62-c59a-c9ab3d03dbe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_return_iff_relative_stabilizes
    {G Point : Type*}
    [Group G]
    [MulAction G Point]
    (symmetry : Point → Point)
    (groupSymmetry : G ≃* G)
    (compatible :
      ∀ groupElement point,
        symmetry (groupElement • point) =
          groupSymmetry groupElement • symmetry point)
    (point : Point)
    (pointFixed : symmetry point = point)
    (phase : G) :
    symmetry (phase • point) = phase • point ↔
      Stabilizes (phase⁻¹ * groupSymmetry phase) point := by
  constructor
  · intro fixed
    have transported :
        groupSymmetry phase • point = phase • point := by
      calc
        groupSymmetry phase • point =
            groupSymmetry phase • symmetry point := by rw [pointFixed]
        _ = symmetry (phase • point) := by
          rw [compatible]
        _ = phase • point := fixed
    calc
      (phase⁻¹ * groupSymmetry phase) • point =
          phase⁻¹ • (groupSymmetry phase • point) := by
            rw [mul_smul]
      _ = phase⁻¹ • (phase • point) := by rw [transported]
      _ = point := by simp [smul_smul]
  · intro stabilizes
    have transported := congrArg (fun value => phase • value) stabilizes
    have phaseEqual :
        groupSymmetry phase • point = phase • point := by
      simpa [Stabilizes, smul_smul] using transported
    calc
      symmetry (phase • point) =
          groupSymmetry phase • symmetry point :=
        compatible phase point
      _ = groupSymmetry phase • point := by rw [pointFixed]
      _ = phase • point := phaseEqual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Geometry/Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e16fb87fa61e790b8dc29b84a5051a1858bea006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
