# validLocatorChecked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dc7b412e4702e79887fe343706d5eba665150ff09c32e5edf93979aafa82072",
  "kind": "def",
  "lexical_name": "validLocatorChecked",
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
  "slug": "validlocatorchecked--ac831e4f916ee38587ade3fe",
  "source": {
    "blob": "fffab8533b6124a5085b99a7bf43cad6ec12721b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 793,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac831e4f916ee38587ade3fec5d470f96e789987a663421f288e0b4e2ef95788",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dc7b412e4702e79887fe343706d5eba665150ff09c32e5edf93979aafa82072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 793–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validLocatorChecked :
    CheckedExternalRhetoricalLocator registry [validClause] validLocator where
  clauseBound := ⟨validClause, by simp, rfl, rfl⟩
  kernelFresh := by
    refine ⟨gramCertificate, ?_, rfl, rfl⟩
    simp [registry, validLocator]
  traceRegistered := by
    refine ⟨gramCertificate, ?_⟩
    simp [registry, validLocator]
  traceDigestFresh := by
    refine ⟨gramCertificate, ?_, rfl⟩
    simp [registry, validLocator]
  gramCertified := by
    refine ⟨gramCertificate, ?_, rfl, rfl, rfl, rfl, rfl, rfl⟩
    simp [registry, validLocator]
  pointsNonempty := by simp [validLocator]
  pointNormsPositive := by
    intro point membership
    simp only [validLocator, List.mem_singleton] at membership
    subst point
    change 0 < basePointReport.normSquared
    native_decide
  pointsCertified := by
    refine ⟨gramCertificate, ?_, ?_⟩
    · simp [registry, validLocator]
    · intro point membership
      simp only [validLocator, List.mem_singleton] at membership
      subst point
      exact point_is_certified
  scoreShapesValid := by
    intro score membership
    simp only [validLocator, List.mem_singleton] at membership
    subst score
    exact similarity_score_shape
  scoresCertified := by
    refine ⟨gramCertificate, ?_, ?_⟩
    · simp [registry, validLocator]
    · intro score membership
      simp only [validLocator, List.mem_singleton] at membership
      subst score
      exact score_is_certified
  navigationOnly := by
    simp [ExternalRhetoricalLocator.NavigationOnly,
      validLocator, similarityScore, scoreTemplate]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GroundedLanguage/Variantd6baa312f04328d93446317281fa79082e7e89dfb06ed34e7d154491e1bdc289.lean#L793).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fffab8533b6124a5085b99a7bf43cad6ec12721b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
