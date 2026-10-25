# rootPotential_le_totalCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50769296831728cfc96440003a343b9c46196a22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c79f6da4-98eb-8c84-7926-79d5312237cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f2de82d-a082-271d-afa0-ab3e1d55fa49",
  "kind": "theorem",
  "lexical_name": "rootPotential_le_totalCost",
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
  "slug": "rootpotential-le-totalcost--7ef3c0c04448c24c51284fb9",
  "source": {
    "blob": "50769296831728cfc96440003a343b9c46196a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ef3c0c04448c24c51284fb991033fa0505c4a41d34b6dc38ad6a3b7b0641249",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f2de82d-a082-271d-afa0-ab3e1d55fa49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootPotential_le_totalCost {state : State}
    (tree : DeltaRicciSurgeryTree state) :
    state.correlation.maxPotential ≤ tree.totalCost := by
  induction tree with
  | finiteLeaf state terminal =>
      exact terminal.directCoefficientBound
  | transverseLeaf state terminal =>
      exact terminal.coefficientSensitiveTTStarBound
  | diffuseLeaf state terminal =>
      exact terminal.coefficientSensitiveDiffuseBound
  | flow control child inductionHypothesis =>
      calc
        _ ≤ child.totalCost + control.correlation.integratedDissipation +
              control.correlation.deformationError := by
          exact control.correlation.backwardPotentialControl.trans
            (add_le_add
              (add_le_add inductionHypothesis (le_refl _)) (le_refl _))
  | split alternative control left right ihLeft ihRight =>
      exact control.potentialControl.trans (by
        exact add_le_add_left (add_le_add ihLeft ihRight)
          control.control.surgeryError)

end DeltaRicciSurgeryTree

end Tree

/-! ## Conditional global assumptions and assembly -/

/-- A zero-residual bounded readout is controlled by the concrete
coefficient-sensitive maximum potential.  This derives the initial readout
bridge from the canonical state fields rather than storing the desired
squared inequality as an assumption. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante7b22cf87f5229fb19121dc3833ce173bfd71a72b0999f76ae95da6afd2124a3.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50769296831728cfc96440003a343b9c46196a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
