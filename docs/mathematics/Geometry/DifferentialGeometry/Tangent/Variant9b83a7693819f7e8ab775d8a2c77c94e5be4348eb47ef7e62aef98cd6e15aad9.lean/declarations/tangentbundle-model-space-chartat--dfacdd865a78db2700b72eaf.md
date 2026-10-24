# tangentBundle_model_space_chartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c684b7e-0223-5209-2e0b-e32e28a28aa4",
  "kind": "theorem",
  "lexical_name": "tangentBundle_model_space_chartAt",
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
  "slug": "tangentbundle-model-space-chartat--dfacdd865a78db2700b72eaf",
  "source": {
    "blob": "01c1c4ba331ffb253513292547acb94c281ae8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 371,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfacdd865a78db2700b72eaf77b692e4204c3dc017a5e2d142258adef52cb688",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c684b7e-0223-5209-2e0b-e32e28a28aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentBundle_model_space_chartAt (p : TangentBundle I H) :
    (chartAt (ModelProd H E) p).toPartialEquiv = (TotalSpace.toProd H E).toPartialEquiv := by
  ext x : 1
  · ext; · rfl
    exact (tangentBundleCore I H).coordChange_self (achart _ x.1) x.1 (mem_achart_source H x.1) x.2
  · ext; · rfl
    apply heq_of_eq
    exact (tangentBundleCore I H).coordChange_self (achart _ x.1) x.1 (mem_achart_source H x.1) x.2
  simp_rw [TangentBundle.chartAt, FiberBundleCore.localTriv,
    FiberBundleCore.localTrivAsPartialEquiv, VectorBundleCore.toFiberBundleCore_baseSet,
    tangentBundleCore_baseSet]
  simp only [mfld_simps]

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c1c4ba331ffb253513292547acb94c281ae8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
