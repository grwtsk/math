# ModelSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e901524ee13a6a9e8b35e1760893447ef2a18048e28358323398f3d6e26b5f",
  "kind": "structure",
  "lexical_name": "ModelSheaf",
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
  "slug": "modelsheaf--7d36fd62122aaba11e3998d8",
  "source": {
    "blob": "5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 114,
    "path": "GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d36fd62122aaba11e3998d8e53b31ccf6b5fcde3577ef179f59ca70c4ed0621",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e901524ee13a6a9e8b35e1760893447ef2a18048e28358323398f3d6e26b5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ModelSheaf
    (Vertex Z : Type*) (Stalk : Vertex → Type*)
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)] where
  edge : EdgeRelation Vertex
  frequency : Vertex → ℚ
  ordered : OrderedBy frequency edge
  model : ∀ vertex, LocalModel Z (Stalk vertex)
  restrict : ∀ {source target}, edge source target →
    Stalk source →L[ℚ] Stalk target
  encoded_source : ∀ {source target} (arrow : edge source target),
    (model target).code.encode.comp (restrict arrow) = (model source).code.encode
  sigma_intertwines : ∀ {source target} (arrow : edge source target),
    (restrict arrow).toLinearMap.comp (model source).involutions.sigma =
      (model target).involutions.sigma.comp (restrict arrow).toLinearMap
  tau_intertwines : ∀ {source target} (arrow : edge source target),
    (restrict arrow).toLinearMap.comp (model source).involutions.tau =
      (model target).involutions.tau.comp (restrict arrow).toLinearMap

namespace ModelSheaf

variable {Vertex Z : Type*} {Stalk : Vertex → Type*}
  [Fintype Vertex] [DecidableEq Vertex]
  [∀ vertex, NormedAddCommGroup (Stalk vertex)]
  [∀ vertex, NormedSpace ℚ (Stalk vertex)]
  [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]

/-- An edge restriction regarded as an involution intertwiner. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
