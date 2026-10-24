# selectedCatalogue_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f80eabe-dba0-bbee-9325-789e920dc911",
  "kind": "theorem",
  "lexical_name": "selectedCatalogue_complete",
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
  "slug": "selectedcatalogue-complete--4ee3738b092500030e52bced",
  "source": {
    "blob": "995df55754a7266334c5598a93b07e46a672325c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ee3738b092500030e52bced1e70cfe7ef5e379f1dc6274f69e3e2917c193d47",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f80eabe-dba0-bbee-9325-789e920dc911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selectedCatalogue_complete :
    ∀ s, s ∈ selectedElementaryBasis ->
      ∃ enc : CertifiedEncoding s,
        enc.arity = elementaryArity s ∧
        EMLCircuitMatrix.WellFormed enc.matrix ∧
        matrixToTree? enc.matrix = some enc.tree := by
  intro s h
  simp [selectedElementaryBasis] at h
  rcases h with h | h | h | h
  · cases h
    exact ⟨certifiedOne, certifiedOne.arity_eq, certifiedOne.wellFormed, certifiedOne.roundTrip⟩
  · cases h
    exact ⟨certifiedVar, certifiedVar.arity_eq, certifiedVar.wellFormed, certifiedVar.roundTrip⟩
  · cases h
    exact ⟨certifiedExp, certifiedExp.arity_eq, certifiedExp.wellFormed, certifiedExp.roundTrip⟩
  · cases h
    exact ⟨certifiedLog, certifiedLog.arity_eq, certifiedLog.wellFormed, certifiedLog.roundTrip⟩

end Surface.Legacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995df55754a7266334c5598a93b07e46a672325c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
