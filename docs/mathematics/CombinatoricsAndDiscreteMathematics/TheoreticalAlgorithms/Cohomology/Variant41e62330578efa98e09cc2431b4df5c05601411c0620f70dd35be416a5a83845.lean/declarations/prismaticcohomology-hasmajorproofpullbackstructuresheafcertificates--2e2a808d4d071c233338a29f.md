# PrismaticCohomology.hasMajorProofPullbackStructureSheafCertificates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3fb96e139b2250ca89856c48e903611d8f0e1c7163dab37297754b4c799241d",
  "kind": "def",
  "lexical_name": "PrismaticCohomology.hasMajorProofPullbackStructureSheafCertificates",
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
  "slug": "prismaticcohomology-hasmajorproofpullbackstructuresheafcertificates--2e2a808d4d071c233338a29f",
  "source": {
    "blob": "8cf2f421e5b29516f73ed8b6102709051ce38fe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant41e62330578efa98e09cc2431b4df5c05601411c0620f70dd35be416a5a83845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e2a808d4d071c233338a29ffbdda4b60ba191499ab2a8962afa91babea6dac3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant41e62330578efa98e09cc2431b4df5c05601411c0620f70dd35be416a5a83845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3fb96e139b2250ca89856c48e903611d8f0e1c7163dab37297754b4c799241d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrismaticCohomology.hasMajorProofPullbackStructureSheafCertificates
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (C : PrismaticCohomology P X) : Prop :=
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODelta_pullbackSheaf? = some S ∧
      S.usableForMajorProof) ∧
  (∃ S : CertifiedPullbackStructureSheafOfRings P X,
    C.ODeltaBar_pullbackSheaf? = some S ∧
      S.usableForMajorProof)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant41e62330578efa98e09cc2431b4df5c05601411c0620f70dd35be416a5a83845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant41e62330578efa98e09cc2431b4df5c05601411c0620f70dd35be416a5a83845.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf2f421e5b29516f73ed8b6102709051ce38fe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
