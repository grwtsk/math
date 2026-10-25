# fourAdmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0efb72020355c98eab573adcb720e81b9b33fde43ccdf62253219d0833c30de3",
  "kind": "def",
  "lexical_name": "fourAdmission",
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
  "slug": "fouradmission--bebae2ced78d2cfcc137fa5f",
  "source": {
    "blob": "b1bfbfd9d839a9a9f37be77813845319318ea63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bebae2ced78d2cfcc137fa5fd6d15b9790d4631d06658ee45fd855eca2c8fb7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0efb72020355c98eab573adcb720e81b9b33fde43ccdf62253219d0833c30de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fourAdmission : CertificateAdmission schema policy withdrawnLedger where
  claims := {4}
  records := [currentFourRecord]
  pending_only := by
    intro claim _
    rw [withdrawn_pending_all]
    exact Finset.mem_univ claim
  current_evidence := by
    intro claim member
    have equal : claim = 4 := by simpa only [Finset.mem_singleton] using member
    subst claim
    refine ⟨currentFourRecord, by simp, rfl, rfl, ?_⟩
    exact currentFourCertificate.recorded_accepted
  prerequisites := by
    intro claim member prerequisite dependency
    have equal : claim = 4 := by simpa only [Finset.mem_singleton] using member
    subst claim
    simp [schema, DependencyFixtures.cyclicDependencies] at dependency

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples__SourceOccurrence3c8a471cc9bfd83e3943bb74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/BatchVerificationExamples.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bfbfd9d839a9a9f37be77813845319318ea63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
