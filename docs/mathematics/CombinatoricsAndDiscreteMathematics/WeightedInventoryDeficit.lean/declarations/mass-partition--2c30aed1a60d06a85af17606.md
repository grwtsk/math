# mass_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26c08d21-92af-4434-7c3d-f752bd8e0483",
  "kind": "theorem",
  "lexical_name": "mass_partition",
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
  "slug": "mass-partition--2c30aed1a60d06a85af17606",
  "source": {
    "blob": "56e05c022a7597bc93f3ef42064183cb937bec55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/Combinatorics/WeightedInventoryDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c30aed1a60d06a85af17606b2031aba815a1c7193a420c6092ca785982b54a3",
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

Occurrence: `result:26c08d21-92af-4434-7c3d-f752bd8e0483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass_partition (source known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ source) :
    mass known weight + mass (source \ known) weight = mass source weight := by
  have disjoint : Disjoint known (source \ known) := by
    apply Finset.disjoint_left.mpr
    intro x hx hrest
    exact (Finset.mem_sdiff.mp hrest).2 hx
  have union : known ∪ (source \ known) = source := by
    ext x
    constructor
    · intro hx
      rcases Finset.mem_union.mp hx with hk | hr
      · exact subset hk
      · exact (Finset.mem_sdiff.mp hr).1
    · intro hx
      by_cases hk : x ∈ known
      · exact Finset.mem_union.mpr (Or.inl hk)
      · exact Finset.mem_union.mpr (Or.inr (Finset.mem_sdiff.mpr ⟨hx, hk⟩))
  unfold mass
  rw [← Finset.sum_union disjoint, union]

/-- Distinct missing points contribute in addition to, not instead of, the known mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/WeightedInventoryDeficit.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e05c022a7597bc93f3ef42064183cb937bec55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
