# analytic_pde_flow_preserves_declared_homology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "544b2e06cbfea51980476e61127977bc285dd504",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f119ac5-70bb-9127-957e-94a32ac16e7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:030c5bfa-ceba-1995-a962-d9b51eb973e6",
  "kind": "theorem",
  "lexical_name": "analytic_pde_flow_preserves_declared_homology",
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
  "slug": "analytic-pde-flow-preserves-declared-homology--11366b3ecb97cb209dc49b27",
  "source": {
    "blob": "544b2e06cbfea51980476e61127977bc285dd504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 341,
    "path": "GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11366b3ecb97cb209dc49b275e00e76aab7e2adf72631205340a6a33cffcc671",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:030c5bfa-ceba-1995-a962-d9b51eb973e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analytic_pde_flow_preserves_declared_homology
    (C : AnalyticPDEHomologyStabilityTheoremCertificate) :
    C.certifiedForMajorProof ->
      C.homologyStability.bettiPreserved ∧
      C.quasiIso.quasiIso.inducesHomologyIso ∧
      C.ricciFlowPreservesHomologyInterface := by
  intro h
  rcases h with
    ⟨_hHeat, _hRicci, _hFlat, hQI, hStability,
     _hHeatRicci, _hTransport, hRicciHomology,
     _hFiniteOS, _hNoSpectral⟩
  rcases hQI with
    ⟨_hSrc, _hTgt, _hMap, hHomologyIso, _hNoQIOnly⟩
  rcases hStability with
    ⟨_hStabilityQI, hBetti, _hCoverage, _hOSBoundary, _hNoFiniteOnly⟩
  exact ⟨hBetti, hHomologyIso, hRicciHomology⟩

end Flow
end Surface
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544b2e06cbfea51980476e61127977bc285dd504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
