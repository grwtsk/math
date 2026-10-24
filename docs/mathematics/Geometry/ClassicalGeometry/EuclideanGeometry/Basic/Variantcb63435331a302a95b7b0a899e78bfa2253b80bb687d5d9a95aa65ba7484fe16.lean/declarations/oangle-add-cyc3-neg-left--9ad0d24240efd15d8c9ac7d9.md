# oangle_add_cyc3_neg_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:505ce08b-8afc-e6cc-d862-c2b50a908bae",
  "kind": "theorem",
  "lexical_name": "oangle_add_cyc3_neg_left",
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
  "slug": "oangle-add-cyc3-neg-left--9ad0d24240efd15d8c9ac7d9",
  "source": {
    "blob": "7834dee5e69e8b6768e602c5406282ecfe289a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 485,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ad0d24240efd15d8c9ac7d9f6888d8ea89a8bebe374b5f063772be89d1ebeaa",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505ce08b-8afc-e6cc-d862-c2b50a908bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_add_cyc3_neg_left {x y z : V} (hx : x ≠ 0) (hy : y ≠ 0) (hz : z ≠ 0) :
    o.oangle (-x) y + o.oangle (-y) z + o.oangle (-z) x = π := by
  rw [o.oangle_neg_left hx hy, o.oangle_neg_left hy hz, o.oangle_neg_left hz hx,
    show o.oangle x y + π + (o.oangle y z + π) + (o.oangle z x + π) =
      o.oangle x y + o.oangle y z + o.oangle z x + (π + π + π : Real.Angle) by abel,
    o.oangle_add_cyc3 hx hy hz, Real.Angle.coe_pi_add_coe_pi, zero_add, zero_add]

/-- Given three nonzero vectors, adding the angles between them in cyclic order, with the second
vector in each angle negated, results in π. If the vectors add to 0, this is a version of the
sum of the angles of a triangle. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantcb63435331a302a95b7b0a899e78bfa2253b80bb687d5d9a95aa65ba7484fe16.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7834dee5e69e8b6768e602c5406282ecfe289a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
