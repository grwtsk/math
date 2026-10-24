# T_BLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d7b825d841925f500d454d2c8d5e554f1aba6f60f00bef2381dfc75778f12cc",
  "kind": "def",
  "lexical_name": "T_BLM",
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
  "slug": "t-blm--ba26798a6f80b65afbb98bc6",
  "source": {
    "blob": "b1f7516b2f852be84b0b23e71bbb1e534faf7105",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 378,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba26798a6f80b65afbb98bc6c34663cfbe46140999ab1f43e6a4578d86fe5bb5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d7b825d841925f500d454d2c8d5e554f1aba6f60f00bef2381dfc75778f12cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def T_BLM : GeometricTheory.{0, 0, 0} where
  sortTy := BLMSort
  functionSymbol := BLMFunctionSymbol
  relationSymbol := BLMRelationSymbol
  functionName := fun
    | .matrixZero => "matrixZero"
    | .matrixTranspose => "matrixTranspose"
    | .matrixPadding => "matrixPadding"
    | .matrixCompare => "matrixCompare"
    | .tensorFactorBoundary => "tensorFactorBoundary"
    | .reducerFold => "reducerFold"
  relationName := fun
    | .boundaryPreserving => "boundaryPreserving"
    | .reversibleFlowCertified => "reversibleFlowCertified"
    | .irreversibleModality => "irreversibleModality"
    | .theoremManifestPreserved => "theoremManifestPreserved"
    | .similarityWitnessed => "similarityWitnessed"
    | .obstructionConstructed => "obstructionConstructed"
    | .proofStatusPreserved => "proofStatusPreserved"
  rules := [
    { name := "flow_or_obstruction_cover",
      context := ["attempted equivalence"],
      antecedent := [.top],
      consequent := [.arbitraryDisjunction, .relation],
      geometricOnly := True,
      boundary := ["Either a certified reversible flow is supplied, or a Ricci obstruction descriptor is constructed."] },
    { name := "average_not_flow_without_certificate",
      context := ["average", "missing bijective certificate"],
      antecedent := [.relation, .relation],
      consequent := [.bottom],
      geometricOnly := True,
      boundary := ["Averaging is not represented as a flow without a bijective certificate."] },
    { name := "manifest_preservation",
      context := ["theorem occurrence"],
      antecedent := [.top],
      consequent := [.relation],
      geometricOnly := True,
      boundary := ["The theorem manifest preserves proof status, trusted status, dependencies, and claim boundaries."] }
  ]
  allRulesGeometric := by
    intro rule h
    simp [List.mem_cons] at h
    rcases h with h | h | h
    · subst rule; trivial
    · subst rule; trivial
    · subst rule; trivial
  claimBoundary := [
    "T_BLM classifies only claim-boundary-aware finite Legacy BinaryLogicMatrix models.",
    "No analytic equality, determinant completeness, spectral-triple authority, or Ricci-flow equivalence is claimed."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PascalTreeCertificates/Variant2d2b2de68b7f0b113b758e3e24a60b3456eb608d52ee8bbb55a6a8910e6555ce.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1f7516b2f852be84b0b23e71bbb1e534faf7105` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
