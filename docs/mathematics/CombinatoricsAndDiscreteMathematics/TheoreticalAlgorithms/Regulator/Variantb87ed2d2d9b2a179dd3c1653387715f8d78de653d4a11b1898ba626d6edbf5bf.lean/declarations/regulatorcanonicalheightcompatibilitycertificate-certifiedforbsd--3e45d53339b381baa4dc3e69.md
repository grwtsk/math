# RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fbfdbd4e3d9c2fafe8a201787d4c0cfac874044d73bef0a9dac3bf3bbad8dbc",
  "kind": "def",
  "lexical_name": "RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD",
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
  "slug": "regulatorcanonicalheightcompatibilitycertificate-certifiedforbsd--3e45d53339b381baa4dc3e69",
  "source": {
    "blob": "79f92e6ded6b351608553ab3cd412bceef929b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e45d53339b381baa4dc3e695b22135d33d0b3e18e351283ecb25c9bc7797fc7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fbfdbd4e3d9c2fafe8a201787d4c0cfac874044d73bef0a9dac3bf3bbad8dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    {P : MordellWeilFiniteGenerationProvenanceCertificate M}
    {R : RegulatorCertificate M S}
    (Q : RegulatorCanonicalHeightCompatibilityCertificate M S P R) :
    Prop :=
  P.certifiedForBSD ∧
  R.certifiedForBSD ∧
  P.heightDescentProvenance.canonicalHeight.certifiedForBSD ∧
  R.heightPairing.certifiedForBSD ∧
  Q.canonicalHeightMatchesPairingQuadraticForm ∧
  Q.pairingBilinearizationMatchesCanonicalHeight ∧
  Q.regulatorMatrixUsesGeneratedFreePart ∧
  Q.determinantUsesCanonicalHeightPairing ∧
  Q.compatibleWithFiniteGenerationRank ∧
  Q.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Regulator/Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f92e6ded6b351608553ab3cd412bceef929b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
