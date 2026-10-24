# BSDSecondPartAssemblyCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b51ae97fd2cd8c18f689dae075d078fd52b42d26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bebcbbaa-4713-a0fc-4740-f6b14b1a30d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:234c006a-41a6-0213-7f8a-0808b139fdab",
  "kind": "theorem",
  "lexical_name": "BSDSecondPartAssemblyCertificate.certifiedForBSD_of_fields",
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
  "slug": "bsdsecondpartassemblycertificate-certifiedforbsd-of-fields--354e970d44d1d9869a5d6fb2",
  "source": {
    "blob": "b51ae97fd2cd8c18f689dae075d078fd52b42d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 254,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354e970d44d1d9869a5d6fb2dfe7861e09d4d6c3a5c38989646d896ad05a6a7f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:234c006a-41a6-0213-7f8a-0808b139fdab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BSDSecondPartAssemblyCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {S₁ : FirstPartStatement L M.MW}
    {S₂ : SecondPartStatement L M.MW}
    (A : BSDSecondPartAssemblyCertificate L M N P S₁ S₂)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.leadingCoefficient,
      A.period,
      A.regulator,
      A.tateShafarevich,
      A.tamagawa,
      A.torsion,
      A.componentsSupplied,
      A.numeratorComponentsUseCommonNormalizationCertified,
      A.denominatorComponentsUseCommonNormalizationCertified,
      A.torsionAppearsSquaredInDenominatorCertified,
      A.tamagawaProductUsesSameFinitePlacesAsLFunctionCertified,
      A.periodAndRegulatorUseSameInvariantDifferentialNormalizationCertified,
      A.assembledIdentityMatchesSecondPartStatementCertified,
      hsource⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b51ae97fd2cd8c18f689dae075d078fd52b42d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
