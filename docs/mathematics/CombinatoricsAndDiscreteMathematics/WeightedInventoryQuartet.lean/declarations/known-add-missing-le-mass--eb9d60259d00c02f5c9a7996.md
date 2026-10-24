# known_add_missing_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e152af00-eaed-dc1f-60ad-ef6de7ab3568",
  "kind": "theorem",
  "lexical_name": "known_add_missing_le_mass",
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
  "slug": "known-add-missing-le-mass--eb9d60259d00c02f5c9a7996",
  "source": {
    "blob": "6080ba65517b3233c74e9d5ba38a73090c6c259f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/Combinatorics/WeightedInventoryQuartet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb9d60259d00c02f5c9a799620934d84b6aeef089ebd04863271028ff00dc204",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedInventoryQuartet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e152af00-eaed-dc1f-60ad-ef6de7ab3568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem known_add_missing_le_mass (source known missing : Finset α) (weight : α → ℕ)
    (knownSubset : known ⊆ source) (missingSubset : missing ⊆ source)
    (separate : Disjoint known missing) :
    mass known weight + mass missing weight ≤ mass source weight := by
  have subset : missing ⊆ source \ known := by
    intro x hx
    refine Finset.mem_sdiff.mpr ⟨missingSubset hx, ?_⟩
    intro hk
    exact Finset.disjoint_left.mp separate hk hx
  have bound : mass missing weight ≤ mass (source \ known) weight :=
    Finset.sum_le_sum_of_subset_of_nonneg subset
      (fun x _ _ => Nat.zero_le (weight x))
  have partition := mass_partition source known weight knownSubset
  omega

/-- All six inequalities are needed: four labels are not automatically four points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedInventoryQuartet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/WeightedInventoryQuartet.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6080ba65517b3233c74e9d5ba38a73090c6c259f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
