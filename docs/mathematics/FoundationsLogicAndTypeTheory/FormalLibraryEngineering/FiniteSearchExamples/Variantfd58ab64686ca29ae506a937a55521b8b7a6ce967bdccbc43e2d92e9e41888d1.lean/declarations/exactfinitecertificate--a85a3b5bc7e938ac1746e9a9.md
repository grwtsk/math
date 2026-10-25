# exactFiniteCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e93ef5f534dce8dfa6093c583b5c2152a7862184adcfc0906631736fd0c55907",
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
  "slug": "exactfinitecertificate--a85a3b5bc7e938ac1746e9a9",
  "source": {
    "blob": "45288106dcfd19599256b3539a2f72f0602e4240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variantfd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a85a3b5bc7e938ac1746e9a9d4ae37d10914571b9ecee5d3734ef82827aaa1ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variantfd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e93ef5f534dce8dfa6093c583b5c2152a7862184adcfc0906631736fd0c55907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–49.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variantfd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteSearchExamples/Variantfd58ab64686ca29ae506a937a55521b8b7a6ce967bdccbc43e2d92e9e41888d1.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45288106dcfd19599256b3539a2f72f0602e4240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
