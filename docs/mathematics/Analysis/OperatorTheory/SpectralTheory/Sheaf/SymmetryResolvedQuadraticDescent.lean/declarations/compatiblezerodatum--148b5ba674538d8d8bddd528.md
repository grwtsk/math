# CompatibleZeroDatum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3fc3e1a6677e5e7655ea04e97467af1518ddd0fb9bc9cbe9285e72f8aadb78e",
  "kind": "structure",
  "lexical_name": "CompatibleZeroDatum",
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
  "slug": "compatiblezerodatum--148b5ba674538d8d8bddd528",
  "source": {
    "blob": "5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 219,
    "path": "GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:148b5ba674538d8d8bddd5285679464296d8b417f7c71e10523a700d6b7baceb",
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

Occurrence: `declaration:b3fc3e1a6677e5e7655ea04e97467af1518ddd0fb9bc9cbe9285e72f8aadb78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompatibleZeroDatum
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    (sheaf : ModelSheaf Vertex Z Stalk)
    (Coverage : Vertex → Type*)
    (coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
      Coverage source → Coverage target → Prop)
    (z : Z) where
  data : ∀ vertex, LocalZeroDatum sheaf Coverage z vertex
  sector_compatible : ∀ {source target} (arrow : sheaf.edge source target),
    (data source).sector = (data target).sector
  source_compatible : ∀ {source target} (arrow : sheaf.edge source target),
    sheaf.restrict arrow (data source).source = (data target).source
  coverage_compatible : ∀ {source target} (arrow : sheaf.edge source target),
    coverageCompatible arrow (data source).coverage (data target).coverage

namespace CompatibleZeroDatum

-- The shared coverage predicate retains its named edge witness for consumers.
set_option linter.unusedVariables false
variable {Vertex Z : Type*} {Stalk : Vertex → Type*}
  [Fintype Vertex] [DecidableEq Vertex]
  [∀ vertex, NormedAddCommGroup (Stalk vertex)]
  [∀ vertex, NormedSpace ℚ (Stalk vertex)]
  [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
  {sheaf : ModelSheaf Vertex Z Stalk}
  {Coverage : Vertex → Type*}
  {coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
    Coverage source → Coverage target → Prop}
  {z : Z}

/-- Value-and-jet symbols agree along every compatible edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
