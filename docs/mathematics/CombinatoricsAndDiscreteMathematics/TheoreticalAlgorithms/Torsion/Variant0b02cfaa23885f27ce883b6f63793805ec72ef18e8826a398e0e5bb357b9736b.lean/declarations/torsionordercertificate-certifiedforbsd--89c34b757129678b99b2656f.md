# TorsionOrderCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53933af0ea479c774fa48d16c7ab821bd2c11235ae1accb89645964f63139161",
  "kind": "def",
  "lexical_name": "TorsionOrderCertificate.certifiedForBSD",
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
  "slug": "torsionordercertificate-certifiedforbsd--89c34b757129678b99b2656f",
  "source": {
    "blob": "a0d32c6bff8012eb26fafe59bdd9731b413721e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89c34b757129678b99b2656fc61eb5e282c603848d32c67fc194799570e12155",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53933af0ea479c774fa48d16c7ab821bd2c11235ae1accb89645964f63139161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TorsionOrderCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TorsionOrderCertificate M S) :
    Prop :=
  T.torsionSubgroup.certifiedForBSD ∧
  T.torsionOrder.order = T.torsionSubgroup.torsionData.listedTorsionPoints.length ∧
  T.torsionOrderPositive ∧
  T.torsionOrderMatchesSubgroup ∧
  T.torsionOrderSquaredInDenominator ∧
  S.identityData.torsionOrder =
    BSDComponentStatus.suppliedByCertificate ∧
  T.torsionOrderMatchesSecondPart ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Torsion/Variant0b02cfaa23885f27ce883b6f63793805ec72ef18e8826a398e0e5bb357b9736b.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d32c6bff8012eb26fafe59bdd9731b413721e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
