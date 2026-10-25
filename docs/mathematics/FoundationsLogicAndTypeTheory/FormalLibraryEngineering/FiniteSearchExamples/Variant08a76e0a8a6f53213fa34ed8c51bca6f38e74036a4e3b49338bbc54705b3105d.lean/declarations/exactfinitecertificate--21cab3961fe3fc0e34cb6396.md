# exactFiniteCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9390aae1067c61bc070d65f26e88e613640f50f929b63e19e39fe156459d4b40",
  "kind": "def",
  "lexical_name": "exactFiniteCertificate",
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
  "slug": "exactfinitecertificate--21cab3961fe3fc0e34cb6396",
  "source": {
    "blob": "7b3f2245bedcbcf28905076bc48be3233205d6f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variant08a76e0a8a6f53213fa34ed8c51bca6f38e74036a4e3b49338bbc54705b3105d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21cab3961fe3fc0e34cb63962477b1f393ff96e435f58596198d5baf8070847c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variant08a76e0a8a6f53213fa34ed8c51bca6f38e74036a4e3b49338bbc54705b3105d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9390aae1067c61bc070d65f26e88e613640f50f929b63e19e39fe156459d4b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactFiniteCertificate : FiniteSearch.PrismaticShadowFiniteCertificate where
  minimum :=
    { feasible :=
        { label := "singleton feasible set"
          stateCount := 1
          nonempty := 1 = 1
          nonemptyProof := rfl }
      minimumExists := 0 = 0
      minimumExistsProof := rfl }
  stableClass :=
    { classLabel := "singleton class"
      minimizersOneClass := 1 + 0 = 1
      minimizersOneClassProof := rfl }
  searchWitness :=
    { witnessLabel := "zero-energy witness"
      minimumEnergyWitness := 2 = 2
      minimumEnergyWitnessProof := rfl }
  energyGap :=
    { gapNumerator := 1
      gapDenominator := 1
      gapDenominatorPositive := by decide
      energyGapWitnessed := 3 = 3
      energyGapProof := rfl }
  projection :=
    { projectionLabel := "identity projection"
      preservesFeasibility := 4 = 4
      preservesFeasibilityProof := rfl }
  boundary :=
    { checkerLabel := "zero boundary checker"
      semanticBoundaryZero := 5 = 5
      semanticBoundaryZeroProof := rfl }
  residue :=
    { residueTableLabel := "empty residue table"
      allResidueWitnessed := 6 = 6
      allResidueWitnessedProof := rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variant08a76e0a8a6f53213fa34ed8c51bca6f38e74036a4e3b49338bbc54705b3105d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variant08a76e0a8a6f53213fa34ed8c51bca6f38e74036a4e3b49338bbc54705b3105d.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3f2245bedcbcf28905076bc48be3233205d6f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
