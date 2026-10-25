# tt12_bertrandGraphTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b3871db1580c81a609509400ea4f4436693e598",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9599cf7d8d238f6d9e978b5783df4ff2d62e8ea70b8654dfe71602d6ca73a4d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:324d17d6-1c74-863e-265a-ce9332e913cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:202b56bb-c28f-cdce-0aa6-894c259f31d5",
  "kind": "theorem",
  "lexical_name": "tt12_bertrandGraphTransport",
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
  "slug": "tt12-bertrandgraphtransport--bd6de423ecc56189c41f4af1",
  "source": {
    "blob": "4b3871db1580c81a609509400ea4f4436693e598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/TT12BertrandGraphTransport/Variant9599cf7d8d238f6d9e978b5783df4ff2d62e8ea70b8654dfe71602d6ca73a4d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd6de423ecc56189c41f4af13d89e83e41d4478b275579e48c5f3f31f003604f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/TT12BertrandGraphTransport/Variant9599cf7d8d238f6d9e978b5783df4ff2d62e8ea70b8654dfe71602d6ca73a4d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202b56bb-c28f-cdce-0aa6-894c259f31d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tt12_bertrandGraphTransport
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    (n : Nat) (hn : 1 < n)
    (identity : TransportDerivationIdentity)
    {methodKind : SelectionMethodKind}
    (method : SelectionMethod methodKind Nat Nat)
    (materializable : MaterializableSelectionKind methodKind)
    (selectionPlan :
      (∃ q, bertrandProfile.admissible n q) →
        ∃ candidate : IntervalWitness bertrandProfile n,
          method.certifies n candidate.value)
    (interpretation : BinaryInterpretation Nat Nat Coordinate)
    (constraint : BinaryConstraint Coordinate)
    (interpretationBridge : InterpretationBridge
      bertrandProfile interpretation constraint)
    (specification : SieveSpecification Coordinate)
    (procedure : SieveProcedure specification)
    (soundness : SieveSoundness procedure)
    (completeness : SieveCompleteness procedure)
    (evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) (some completeness))
    (constraintSieveBridge : ConstraintSieveBridge constraint specification)
    (intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge)
    (intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph)
    (materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge)
    (realizationContract :
      RealizationContract soundness materializedGraph)
    (consequence : GraphConsequence materializedGraph)
    (proveConsequence :
      ∀ candidate : IntervalWitness bertrandProfile n,
        ∀ _occurrence : EdgeOccurrence materializedGraph
            (interpretation.source n)
            (interpretation.target candidate.value),
          consequence.statement)
    (validationClaim : Prop)
    (validationEvidence : validationClaim) :
    ∃ q : Nat,
      Nat.Prime q ∧ n < q ∧ q < 2 * n ∧
        ∃ selectedIntervalWitness : IntervalWitness bertrandProfile n,
          selectedIntervalWitness.value = q ∧
          ∃ selectionMethodEvidence :
              method.certifies n selectedIntervalWitness.value,
            ∃ derivation : TransportDerivation
                identity.derivationRef bertrandProfile
                bertrandCertifiedTheorem n method interpretation constraint
                interpretationBridge specification procedure soundness
                (some completeness) evidenceTheory constraintSieveBridge
                intensionalGraph intensionalSemantics materializedGraph
                realizationContract consequence,
              TransportDerivationRetains derivation identity
                selectedIntervalWitness materializable
                selectionMethodEvidence validationClaim validationEvidence := by
  have hExistence : ∃ q, bertrandProfile.admissible n q := by
    obtain ⟨q, hPrime, hnq, hqUpper⟩ := tt01_bertrand n hn
    exact ⟨q, bertrandAdmissible hn hPrime hnq hqUpper⟩
  obtain ⟨selectedIntervalWitness, selectionMethodEvidence⟩ :=
    selectionPlan hExistence
  let q := selectedIntervalWitness.value
  have hAdmissible : bertrandProfile.admissible n q :=
    selectedIntervalWitness.evidence
  have hPrime : Nat.Prime q := hAdmissible.2.2
  have hnq : n < q := hAdmissible.2.1.1
  have hqUpper : q < 2 * n := hAdmissible.2.1.2
  obtain ⟨derivation, retention⟩ :=
    tt08_transportComposition
    identity materializable
    selectedIntervalWitness selectionMethodEvidence
    (proveConsequence selectedIntervalWitness)
    validationClaim validationEvidence
  exact ⟨q, hPrime, hnq, hqUpper, selectedIntervalWitness, rfl,
    selectionMethodEvidence, derivation, retention⟩

end FCRS.Transport.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/TT12BertrandGraphTransport/Variant9599cf7d8d238f6d9e978b5783df4ff2d62e8ea70b8654dfe71602d6ca73a4d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/TT12BertrandGraphTransport/Variant9599cf7d8d238f6d9e978b5783df4ff2d62e8ea70b8654dfe71602d6ca73a4d5.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b3871db1580c81a609509400ea4f4436693e598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
