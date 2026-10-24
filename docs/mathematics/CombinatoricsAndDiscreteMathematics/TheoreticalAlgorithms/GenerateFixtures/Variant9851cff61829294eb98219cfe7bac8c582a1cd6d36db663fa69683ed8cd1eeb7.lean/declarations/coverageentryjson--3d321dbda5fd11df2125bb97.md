# coverageEntryJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48be4120b857f6fd5571160fb39eb0f5eb1cb4626c3ac2e3010c1daefe596cd8",
  "kind": "def",
  "lexical_name": "coverageEntryJson",
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
  "slug": "coverageentryjson--3d321dbda5fd11df2125bb97",
  "source": {
    "blob": "ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 249,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d321dbda5fd11df2125bb97d376adb8ff2fbffa8db5a6d790ff37b81009b140",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48be4120b857f6fd5571160fb39eb0f5eb1cb4626c3ac2e3010c1daefe596cd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coverageEntryJson (kind constructor witness witnessKind semanticStatus domainStatus branchStatus : String)
    (arity : Nat) : String :=
  let foundation :=
    if kind = "measurable" then "measurable"
    else if kind = "fractal" ∨ kind = "zeta_mobius_fractal" then "fractal"
    else "classical"
  "{\"declaredFunctionKind\":" ++ stringJson kind ++
  ",\"logicalFoundation\":" ++ stringJson foundation ++
  ",\"evolutionMode\":\"none\"" ++
  ",\"bijectivityStatus\":\"not_claimed\"" ++
  ",\"classicalConstructor\":" ++ stringJson constructor ++
  ",\"measurableCertificateRef\":" ++
    (if kind = "measurable" then stringJson "certified_measurable_atom" else "null") ++
  ",\"fractalCertificateRef\":" ++
    (if kind = "fractal" ∨ kind = "zeta_mobius_fractal" then
      stringJson "nowhere_differentiable_certificate" else "null") ++
  ",\"zetaMobiusScaleLaw\":" ++
    (if kind = "zeta_mobius_fractal" then stringJson "zeta_mobius_hybrid" else "null") ++
  ",\"arity\":" ++ toString arity ++
  ",\"gamma\":" ++ gammaJson ++
  ",\"witness\":" ++ stringJson witness ++
  ",\"witnessKind\":" ++ stringJson witnessKind ++
  ",\"finiteTree\":" ++
    (if witnessKind = "finite_eml_tree" then stringJson witness else "null") ++
  ",\"extendedWitness\":" ++ stringJson witness ++
  ",\"finiteMatrixRef\":" ++
    (if witnessKind = "finite_eml_tree" then stringJson "eml-catalogue.json" else "null") ++
  ",\"proofStatus\":\"checked_by_lean\"" ++
  ",\"semanticStatus\":" ++ stringJson semanticStatus ++
  ",\"domainStatus\":" ++ stringJson domainStatus ++
  ",\"branchStatus\":" ++ stringJson branchStatus ++
  ",\"precisionSummary\":\"Gamma.structural exports proof trace and matrix channels only\"" ++
  ",\"claimBoundary\":" ++ claimBoundaryJson ++ "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
