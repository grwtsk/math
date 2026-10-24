# weightedVSub_sdiff_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eec244f0-6016-68f0-50ec-a86758ed02ba",
  "kind": "theorem",
  "lexical_name": "weightedVSub_sdiff_sub",
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
  "slug": "weightedvsub-sdiff-sub--f8dd2729de95b4962834fb5c",
  "source": {
    "blob": "9e798f2a5c14388cabd43258ee0338100eccf051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 325,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8dd2729de95b4962834fb5cb4c1565b473ca79d95805fe79c1f45ee30d49c03",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eec244f0-6016-68f0-50ec-a86758ed02ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedVSub_sdiff_sub [DecidableEq ι] {s₂ : Finset ι} (h : s₂ ⊆ s) (w : ι → k)
    (p : ι → P) : (s \ s₂).weightedVSub p w - s₂.weightedVSub p (-w) = s.weightedVSub p w :=
  s.weightedVSubOfPoint_sdiff_sub h _ _ _

/-- A weighted sum over `s.subtype pred` equals one over `{x ∈ s | pred x}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e798f2a5c14388cabd43258ee0338100eccf051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
