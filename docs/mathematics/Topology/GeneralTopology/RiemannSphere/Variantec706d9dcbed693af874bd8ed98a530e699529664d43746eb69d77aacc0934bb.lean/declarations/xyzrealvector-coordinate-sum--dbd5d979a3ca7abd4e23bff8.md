# xyzRealVector_coordinate_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00e059276c68ef42b74f08996ee132ab545bbd77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7663da53-e086-9679-908f-109c37b371c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09dcfb61-ebef-fed3-8f2e-3424d08119ec",
  "kind": "theorem",
  "lexical_name": "xyzRealVector_coordinate_sum",
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
  "slug": "xyzrealvector-coordinate-sum--dbd5d979a3ca7abd4e23bff8",
  "source": {
    "blob": "00e059276c68ef42b74f08996ee132ab545bbd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd5d979a3ca7abd4e23bff871ecd029ffcb41d6d97cf15800e95586af8bac6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09dcfb61-ebef-fed3-8f2e-3424d08119ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xyzRealVector_coordinate_sum (xyz : NormalizedXYZPoint) :
    xyzRealVector xyz 0 + xyzRealVector xyz 1 + xyzRealVector xyz 2 = 1 := by
  have hinvariant := congrArg (fun n : ℤ ↦ (n : ℝ)) xyz.invariant
  simp only [xyzFormatV1] at hinvariant
  simp only [xyzRealVector, FixedChannel.toReal, xyzFormatV1,
    PiLp.toLp_apply, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two]
  norm_num at hinvariant ⊢
  linarith

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e059276c68ef42b74f08996ee132ab545bbd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
