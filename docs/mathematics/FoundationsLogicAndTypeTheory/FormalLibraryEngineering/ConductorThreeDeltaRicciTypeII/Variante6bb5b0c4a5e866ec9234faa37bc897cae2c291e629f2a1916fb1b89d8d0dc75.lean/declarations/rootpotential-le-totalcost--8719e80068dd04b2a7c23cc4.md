# rootPotential_le_totalCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:755becbe-8497-934c-0701-b3389fe5a5a8",
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
  "slug": "rootpotential-le-totalcost--8719e80068dd04b2a7c23cc4",
  "source": {
    "blob": "3ae6f9136955cd5add69a226b84bde01ac743263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8719e80068dd04b2a7c23cc41540069148a9ed0492fe2188c9b63161f2345770",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:755becbe-8497-934c-0701-b3389fe5a5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–219.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae6f9136955cd5add69a226b84bde01ac743263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
