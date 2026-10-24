# rhThrough_of_coarse_positive_weighted_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ee3ad62-3d5d-169f-fcf9-d438490832bb",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_coarse_positive_weighted_inventory",
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
  "slug": "rhthrough-of-coarse-positive-weighted-inventory--7193cb7332470c9ad4588c41",
  "source": {
    "blob": "91ceef34cfbd920994350b568fca10b220d69829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7193cb7332470c9ad4588c4147182933ea6ae582b77ed58ccfbb3a5df793381e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ee3ad62-3d5d-169f-fcf9-d438490832bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_coarse_positive_weighted_inventory (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint) (lower : ZeroPoint → ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (lowerBound : ∀ z ∈ known, lower z ≤ multiplicity z)
    (strict : coarsePositiveUpper N < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  exact rhThrough_of_positive_weighted_inventory N known lower (coarsePositiveUpper N)
    knownSubset knownOnLine lowerBound
    (positiveHeightCount_le_coarsePositiveUpper N hN) strict

/-- Multiplicity-correct local contours can supply the credits consumed by the coarse count.
Every window remains tied to the same actual source root and disk; no coverage premise is inferred. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ceef34cfbd920994350b568fca10b220d69829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
