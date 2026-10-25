# solverChoiceComparison_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ec1ca17-6cc9-418d-69e9-660baf2496d4",
  "kind": "theorem",
  "lexical_name": "solverChoiceComparison_pairing",
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
  "slug": "solverchoicecomparison-pairing--1906e809ca79b1f61c66ab25",
  "source": {
    "blob": "38c0d2fadedbd963c3cf3a1f0ee9839996c6136d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationSolverChoice/Variant116de3a11b62833a95febdf73abe202a5949cca7a6ce5c7d318de1a21c2ca76b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1906e809ca79b1f61c66ab25ba53eb0c029ff17af80ac513a64601c7f2c085b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationSolverChoice/Variant116de3a11b62833a95febdf73abe202a5949cca7a6ce5c7d318de1a21c2ca76b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ec1ca17-6cc9-418d-69e9-660baf2496d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solverChoiceComparison_pairing (Q R : PhaseIIResidualQuotient G)
    (uv : U × U) (x : Unit) :
    R.solverChoiceRepresentation.recover uv (solverChoiceComparison Q R x) =
      Q.solverChoiceRepresentation.recover uv x :=
  StructuralQuine.comparison_recover
    Q.solverChoiceStructuralQuine R.solverChoiceStructuralQuine uv x

end PhaseIIResidualQuotient

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationSolverChoice/Variant116de3a11b62833a95febdf73abe202a5949cca7a6ce5c7d318de1a21c2ca76b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificationSolverChoice/Variant116de3a11b62833a95febdf73abe202a5949cca7a6ce5c7d318de1a21c2ca76b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c0d2fadedbd963c3cf3a1f0ee9839996c6136d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
