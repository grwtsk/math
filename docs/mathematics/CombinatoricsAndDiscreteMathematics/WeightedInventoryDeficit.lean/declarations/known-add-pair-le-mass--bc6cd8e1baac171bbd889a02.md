# known_add_pair_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b666795-9b5c-dac9-7c21-64cb7c0581b8",
  "kind": "theorem",
  "lexical_name": "known_add_pair_le_mass",
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
  "slug": "known-add-pair-le-mass--bc6cd8e1baac171bbd889a02",
  "source": {
    "blob": "56e05c022a7597bc93f3ef42064183cb937bec55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/Combinatorics/WeightedInventoryDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc6cd8e1baac171bbd889a02a58a67cd87a216010c6ee7ba8e60b85995851baf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b666795-9b5c-dac9-7c21-64cb7c0581b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem known_add_pair_le_mass (source known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ source) (a b : α)
    (memberA : a ∈ source) (memberB : b ∈ source)
    (missingA : a ∉ known) (missingB : b ∉ known) (distinct : a ≠ b) :
    mass known weight + weight a + weight b ≤ mass source weight := by
  have pair := pair_le_mass (source \ known) weight a b
    (Finset.mem_sdiff.mpr ⟨memberA, missingA⟩)
    (Finset.mem_sdiff.mpr ⟨memberB, missingB⟩) distinct
  have partition := mass_partition source known weight subset
  omega

/-- Independent lower credits and a complete-source upper bound exclude a missing pair.
Both missing memberships and strictness remain explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/WeightedInventoryDeficit.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e05c022a7597bc93f3ef42064183cb937bec55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
