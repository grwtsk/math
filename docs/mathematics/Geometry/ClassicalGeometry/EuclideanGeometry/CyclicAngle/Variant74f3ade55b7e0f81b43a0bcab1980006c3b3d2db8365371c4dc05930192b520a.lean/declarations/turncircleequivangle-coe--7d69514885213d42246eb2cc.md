# turnCircleEquivAngle_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02259d9142d6f65d0c1d73989ef15cb68ffa4a74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e755b44-1106-5932-991d-fbdeda666d5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a92f9543-4cfb-92d2-ac5e-ed19fd4bb8b7",
  "kind": "theorem",
  "lexical_name": "turnCircleEquivAngle_coe",
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
  "slug": "turncircleequivangle-coe--7d69514885213d42246eb2cc",
  "source": {
    "blob": "02259d9142d6f65d0c1d73989ef15cb68ffa4a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 69,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d69514885213d42246eb2cc05dbff604bc71b542146393876fca3ee98a9e4bb",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92f9543-4cfb-92d2-ac5e-ed19fd4bb8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem turnCircleEquivAngle_coe (t : ℝ) :
    turnCircleEquivAngle (t : TurnCircle) =
      (phaseAngle t : Real.Angle) := by
  change
    AddCircle.equivAddCircle (1 : ℝ) (2 * Real.pi)
      one_ne_zero (ne_of_gt Real.two_pi_pos) (t : AddCircle (1 : ℝ)) =
        (phaseAngle t : AddCircle (2 * Real.pi))
  rw [AddCircle.equivAddCircle_apply_mk]
  congr 1
  simp only [phaseAngle, inv_one, one_mul]
  ring

/-! ## Derived maps or views -/

/-- Map an arbitrary real number of turns to its intrinsic angle. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02259d9142d6f65d0c1d73989ef15cb68ffa4a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
