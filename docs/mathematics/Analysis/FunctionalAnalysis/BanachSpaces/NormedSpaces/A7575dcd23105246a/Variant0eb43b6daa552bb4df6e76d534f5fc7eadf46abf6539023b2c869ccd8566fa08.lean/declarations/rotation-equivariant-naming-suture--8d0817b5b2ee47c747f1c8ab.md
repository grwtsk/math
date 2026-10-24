# rotation_equivariant_naming_suture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ac88ee9-0e99-c21f-2783-69f251c588f5",
  "kind": "theorem",
  "lexical_name": "rotation_equivariant_naming_suture",
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
  "slug": "rotation-equivariant-naming-suture--8d0817b5b2ee47c747f1c8ab",
  "source": {
    "blob": "01556b8f9efb18927e16360df32a2c0f565cecdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7575dcd23105246a/Variant0eb43b6daa552bb4df6e76d534f5fc7eadf46abf6539023b2c869ccd8566fa08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d0817b5b2ee47c747f1c8ab06025eb8e86e7017d439bed450ec2719e30fa11a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7575dcd23105246a/Variant0eb43b6daa552bb4df6e76d534f5fc7eadf46abf6539023b2c869ccd8566fa08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ac88ee9-0e99-c21f-2783-69f251c588f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_equivariant_naming_suture
    (certificate : RotationEquivariantNamingSuture n B) :
    allDegreeSutured certificate.rotation
        certificate.oracleSignal certificate.modelSignal ∧
      allFaceDirichletResidual 2 certificate.degreeWeight
        certificate.rotation certificate.oracleSignal certificate.modelSignal = 0 ∧
      TwistedOneCocycle certificate.eventChange ∧
      TwistedOneCoboundary certificate.eventChange ∧
      TwistedH1.classOf certificate.eventChange certificate.eventClosed =
        TwistedH1.zero ∧
      FaceSignalTurnStabilizes certificate.cycleHolonomy
        certificate.modelSignal ∧
      certificate.base.model.value = certificate.base.oracle.value := by
  refine ⟨certificate.allFacesAgree, ?_, certificate.eventClosed,
    certificate.eventExact, ?_, certificate.cycleHolonomyInStabilizer, ?_⟩
  · exact dirichletEnergy_zero_of_allDegreeSutured
      2 (by decide) certificate.degreeWeight certificate.rotation
      certificate.oracleSignal certificate.modelSignal certificate.allFacesAgree
  · exact
      (TwistedH1.classOf_eq_zero_iff
        certificate.eventChange certificate.eventClosed).2 certificate.eventExact
  · exact certificate.base.agreement.2

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7575dcd23105246a/Variant0eb43b6daa552bb4df6e76d534f5fc7eadf46abf6539023b2c869ccd8566fa08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7575dcd23105246a/Variant0eb43b6daa552bb4df6e76d534f5fc7eadf46abf6539023b2c869ccd8566fa08.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01556b8f9efb18927e16360df32a2c0f565cecdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
