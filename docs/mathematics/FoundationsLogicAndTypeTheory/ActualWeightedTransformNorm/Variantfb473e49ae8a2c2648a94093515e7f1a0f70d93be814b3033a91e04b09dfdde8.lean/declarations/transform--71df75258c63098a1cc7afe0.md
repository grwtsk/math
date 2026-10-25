# transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2430bc1912ff7eb90b6d2f7659ee32b8805063d026cf2c44c33e5bb55d10eab3",
  "kind": "def",
  "lexical_name": "transform",
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
  "slug": "transform--71df75258c63098a1cc7afe0",
  "source": {
    "blob": "88b53c79d3ee91a33ab1693471b161d9e3b68977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71df75258c63098a1cc7afe0da02e2c0e4aebe590e017837b84bf64ac6725eaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2430bc1912ff7eb90b6d2f7659ee32b8805063d026cf2c44c33e5bb55d10eab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transform (A : ℝ) (J : ℝ → ℝ) : ℝ :=
  ∫ u in (-2 * A)..(2 * A), C A u * Real.exp (3 * u / 16) * J (Real.exp u)

/-- The norm price in this module, with the following exact parameterization.

def normPrice (A θ : ℝ) : ℝ := ∫ u in (-2 * A)..(2 * A), |C A u| * Real.exp (θ * u)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88b53c79d3ee91a33ab1693471b161d9e3b68977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
