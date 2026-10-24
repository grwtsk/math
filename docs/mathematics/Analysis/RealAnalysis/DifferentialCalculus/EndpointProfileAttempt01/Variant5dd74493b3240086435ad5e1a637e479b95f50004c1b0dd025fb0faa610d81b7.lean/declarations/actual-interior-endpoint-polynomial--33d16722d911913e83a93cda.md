# actual_interior_endpoint_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb674663-13d3-d974-b42b-260277935ee2",
  "kind": "theorem",
  "lexical_name": "actual_interior_endpoint_polynomial",
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
  "slug": "actual-interior-endpoint-polynomial--33d16722d911913e83a93cda",
  "source": {
    "blob": "e5646e89e5ba04221ae298842f7e992840991d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt01/Variant5dd74493b3240086435ad5e1a637e479b95f50004c1b0dd025fb0faa610d81b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d16722d911913e83a93cda7f9ef42e32e1358c53f6a8549a2262c1ba8d37a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt01/Variant5dd74493b3240086435ad5e1a637e479b95f50004c1b0dd025fb0faa610d81b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb674663-13d3-d974-b42b-260277935ee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_interior_endpoint_polynomial {A s : ℝ} (hA : 0<A) :
    (secondInterior A (A-s)-bumpInterior A (A-s)/4)*(A^4*Real.sqrt A)=
      endpointInteriorPolynomial A⁻¹ s := by
  have hne : A≠0 := ne_of_gt hA
  have hsqrt : Real.sqrt A≠0 := ne_of_gt (Real.sqrt_pos.mpr hA)
  dsimp [secondInterior,bumpInterior,endpointInteriorPolynomial]
  field_simp [hne,hsqrt]
  ring

/-- The closed actual source support is checked, rather than an assumed interior adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt01/Variant5dd74493b3240086435ad5e1a637e479b95f50004c1b0dd025fb0faa610d81b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt01/Variant5dd74493b3240086435ad5e1a637e479b95f50004c1b0dd025fb0faa610d81b7.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5646e89e5ba04221ae298842f7e992840991d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
