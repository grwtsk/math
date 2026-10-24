# fixture_negative_orderFour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:403b9ab3-4f93-bc41-c3cc-1fdc83cf4f43",
  "kind": "theorem",
  "lexical_name": "fixture_negative_orderFour",
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
  "slug": "fixture-negative-orderfour--f062ce0d553cff3a184ade9b",
  "source": {
    "blob": "cb9d7be2cf37d2007777bd4522afa6ca9242d437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 207,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f062ce0d553cff3a184ade9bbdc7042835c0051f37a662d37c16aa8c94b69dd8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:403b9ab3-4f93-bc41-c3cc-1fdc83cf4f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture_negative_orderFour :
    minor (Quadratic.coefficient (3 / 2) 1)
      (fun i : Fin 4 => i.val) (fun i : Fin 4 => i.val + 1) = -11 / 16 := by
  unfold minor
  simp_rw [Quadratic.entry_coefficient]
  have he : (fun i j : Fin 4 => band (3 / 2) 1 i.val (j.val + 1)) =
      tridiagonal (3 / 2) 1 4 := by
    ext i j
    simpa [add_comm] using band_consecutive (3 / 2) 1 0 4 i j
  rw [he, det_tridiagonal]
  norm_num [continuant]

/-- The same sequence is not PF_4, despite all-position PF_3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb9d7be2cf37d2007777bd4522afa6ca9242d437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
