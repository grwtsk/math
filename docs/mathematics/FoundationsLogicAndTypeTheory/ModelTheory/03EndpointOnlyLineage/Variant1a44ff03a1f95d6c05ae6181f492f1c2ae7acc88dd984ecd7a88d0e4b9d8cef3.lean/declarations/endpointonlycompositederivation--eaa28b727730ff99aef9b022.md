# endpointOnlyCompositeDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94d48094fe09253d682244b4411f6c4ef1140ee27059e335165b4b46852b2583",
  "kind": "def",
  "lexical_name": "endpointOnlyCompositeDerivation",
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
  "slug": "endpointonlycompositederivation--eaa28b727730ff99aef9b022",
  "source": {
    "blob": "3643a374005a85b6a2e028901e32a20890f1918e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaa28b727730ff99aef9b022b11fbef7b9b6664201b18642de22d08b8577adc7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94d48094fe09253d682244b4411f6c4ef1140ee27059e335165b4b46852b2583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointOnlyCompositeDerivation :
    TheoremTransferDerivation composed composedPreservation where
  derivationArtifact := v "endpoint-only-composite-derivation"
  sourceTheorem := sourceTheorem
  sourcePropositionInScope := sourceInScope
  targetTheorem := targetTheorem
  targetTheoremExact := rfl
  targetPropositionInScope := True.intro
  dependencyGraph := endpointGraph
  sourceNode := .source
  targetNode := .target
  dependency := .summary
  lineageEdgeCoverage := by
    intro artifact membership
    change artifact ∈ [v "first", v "second"] at membership
    have cases : artifact = first.artifact ∨ artifact = second.artifact := by
      simpa [first, second, atomicTranslation] using membership
    rcases cases with firstExact | secondExact
    · subst artifact
      exact ⟨.source, .target, .firstComponent, Or.inl rfl⟩
    · subst artifact
      exact ⟨.source, .target, .secondComponent, Or.inl rfl⟩
  sourceTheoryVersionExact := rfl
  targetTheoryVersionExact := rfl
  sourceTheoremArtifactExact := rfl
  targetTheoremArtifactExact := rfl
  sourcePropositionArtifactExact := rfl
  targetPropositionArtifactExact := rfl
  edgeKindExact := rfl
  bridgeArtifactExact := rfl
  evidenceArtifactExact := rfl
  declaredInformationLoss := composed.informationLoss
  informationLossExact := rfl
  informationLossAssessment := by intros; exact .declaredMetadata _
  declaredCanonicality := composed.canonicality
  canonicalityExact := rfl
  lifecycle := ⟨v "lifecycle", [.Draft], by simp,
    [v "lifecycle-evidence"], by simp⟩
  equivalenceRegime := none
  soundnessLevel := .SemanticallyPreserved
  soundnessEvidence := .semanticallyPreserved

#check endpointOnlyCompositeDerivation

end FCRS.TheoremTransfer.Cycle4LineageWitness
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3643a374005a85b6a2e028901e32a20890f1918e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
