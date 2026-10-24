# sphericalMedoidSelection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5df3ef710a96230209eda3eb24f617b2c66b037aa50aa65e448a7f4f04f3e832",
  "kind": "def",
  "lexical_name": "sphericalMedoidSelection",
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
  "slug": "sphericalmedoidselection--5a544d93afe4b57e60744997",
  "source": {
    "blob": "15712ec73c7da2bf44a4f95c367dbd67a0c86ff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a544d93afe4b57e607449970f31ef5ac187e8ad2b6516c60e107057b1691701",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5df3ef710a96230209eda3eb24f617b2c66b037aa50aa65e448a7f4f04f3e832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sphericalMedoidSelection
    (sites : List FiniteEmlSphericalSite) :
    SphericalMedoidSelection :=
  let lifted := liftAllFiniteSites sites
  { liftedSites := lifted
    medoid := sphericalMedoidOfLiftedSites lifted
    selectedAfterLift := true
    directImageOfComplexMedoid := false
    residues :=
      [ SphericalLiftResidue.direct_medoid_lift_refused
      , SphericalLiftResidue.spectral_theorem_authority_not_claimed
      ]
    theoremAuthority := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15712ec73c7da2bf44a4f95c367dbd67a0c86ff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
