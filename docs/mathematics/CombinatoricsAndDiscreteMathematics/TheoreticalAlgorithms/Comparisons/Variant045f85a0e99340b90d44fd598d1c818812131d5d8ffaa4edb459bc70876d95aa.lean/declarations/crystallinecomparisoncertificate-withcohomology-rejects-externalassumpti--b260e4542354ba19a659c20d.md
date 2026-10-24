# CrystallineComparisonCertificate.withCohomology_rejects_externalAssumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10db3713-8c3b-24b0-de9b-1c532ab571a4",
  "kind": "theorem",
  "lexical_name": "CrystallineComparisonCertificate.withCohomology_rejects_externalAssumption",
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
  "slug": "crystallinecomparisoncertificate-withcohomology-rejects-externalassumpti--b260e4542354ba19a659c20d",
  "source": {
    "blob": "90f5fa38ba3cb5b33c672519dca32555cd29c59c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant045f85a0e99340b90d44fd598d1c818812131d5d8ffaa4edb459bc70876d95aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b260e4542354ba19a659c20de816cd984d16811ea59122980ef913450702b889",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant045f85a0e99340b90d44fd598d1c818812131d5d8ffaa4edb459bc70876d95aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10db3713-8c3b-24b0-de9b-1c532ab571a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CrystallineComparisonCertificate.withCohomology_rejects_externalAssumption
    {C : PrismaticCohomology P X}
    (H : CrystallineComparisonCertificate C)
    (h : H.certifiedForMajorProofWithCohomology) :
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODelta_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedStructureSheafOfRings P X,
      C.ODeltaBar_sheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) :=
  C.admissibleForMajorProofInput_rejects_externalAssumption h.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant045f85a0e99340b90d44fd598d1c818812131d5d8ffaa4edb459bc70876d95aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant045f85a0e99340b90d44fd598d1c818812131d5d8ffaa4edb459bc70876d95aa.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f5fa38ba3cb5b33c672519dca32555cd29c59c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
