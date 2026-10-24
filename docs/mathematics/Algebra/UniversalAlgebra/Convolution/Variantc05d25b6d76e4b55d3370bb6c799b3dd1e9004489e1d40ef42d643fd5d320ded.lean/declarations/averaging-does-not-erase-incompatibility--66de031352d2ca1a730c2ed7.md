# averaging_does_not_erase_incompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cb8af07-cfd7-1e38-9947-02c24ddcf364",
  "kind": "theorem",
  "lexical_name": "averaging_does_not_erase_incompatibility",
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
  "slug": "averaging-does-not-erase-incompatibility--66de031352d2ca1a730c2ed7",
  "source": {
    "blob": "5ad0437d72e1196c30f3744582121ddaf0774a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 184,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66de031352d2ca1a730c2ed77694f08d660d808e4dd2a5e3185164a058fd2019",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cb8af07-cfd7-1e38-9947-02c24ddcf364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem averaging_does_not_erase_incompatibility
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    {i j : Model}
    (hi : i ∈ C.neighborModels p)
    (hj : j ∈ C.neighborModels p)
    (hbad : ¬ C.compatible i j) :
    (C.incompatibilityRecorded p i j hi hj hbad).1.unresolved :=
  (C.incompatibilityRecorded p i j hi hj hbad).2.2.2.2

end FiniteModelConvolution

/-- A convolution tied definitionally to one typed registry active region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Convolution/Variantc05d25b6d76e4b55d3370bb6c799b3dd1e9004489e1d40ef42d643fd5d320ded.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ad0437d72e1196c30f3744582121ddaf0774a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
