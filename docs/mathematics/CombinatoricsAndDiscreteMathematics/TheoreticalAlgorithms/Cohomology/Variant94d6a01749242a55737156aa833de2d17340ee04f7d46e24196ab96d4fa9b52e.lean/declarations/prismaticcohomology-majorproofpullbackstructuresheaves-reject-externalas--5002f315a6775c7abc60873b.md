# PrismaticCohomology.majorProofPullbackStructureSheaves_reject_externalAssumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9715aa30-bfdb-e730-ddaf-0ab5effea945",
  "kind": "theorem",
  "lexical_name": "PrismaticCohomology.majorProofPullbackStructureSheaves_reject_externalAssumption",
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
  "slug": "prismaticcohomology-majorproofpullbackstructuresheaves-reject-externalas--5002f315a6775c7abc60873b",
  "source": {
    "blob": "29dcde2ee5cbaf3c6cb8522903296ccf501e7888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 480,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5002f315a6775c7abc60873b59046911642cd0622bee965db6ae803b433cd2fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9715aa30-bfdb-e730-ddaf-0ab5effea945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrismaticCohomology.majorProofPullbackStructureSheaves_reject_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    (h : C.hasMajorProofPullbackStructureSheafCertificates) :
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings P X,
      C.ODeltaBar_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) := by
  constructor
  · intro S hS
    rcases h.1 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_externalAssumption
        S0 hMajor) hExternal0
  · intro S hS
    rcases h.2 with ⟨S0, hS0, hMajor⟩
    have hEq : S = S0 := by
      rw [hS] at hS0
      cases hS0
      rfl
    intro hExternal
    have hExternal0 :
        S0.constructionStatus = ConstructionStatus.externalAssumption := by
      rw [← hEq]
      exact hExternal
    exact
      (CertifiedPullbackStructureSheafOfRings.rejects_externalAssumption
        S0 hMajor) hExternal0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29dcde2ee5cbaf3c6cb8522903296ccf501e7888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
