# DirectedOn.exists_mem_subset_of_finite_of_subset_sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6cb4cdc-6305-b923-bd55-2b77112bde94",
  "kind": "theorem",
  "lexical_name": "DirectedOn.exists_mem_subset_of_finite_of_subset_sUnion",
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
  "slug": "directedon-exists-mem-subset-of-finite-of-subset-sunion--a9f52465c453ac4e77642f9d",
  "source": {
    "blob": "e9ff8ed57e702c7db85d717532a24af91644d78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 480,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9f52465c453ac4e77642f9d5b8f1f5a6e571f606ac842d5fee35e56865320cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6cb4cdc-6305-b923-bd55-2b77112bde94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DirectedOn.exists_mem_subset_of_finite_of_subset_sUnion {α : Type*} {c : Set (Set α)}
    (hn : c.Nonempty) (hc : DirectedOn (· ⊆ ·) c) {s : Set α} (hs : s.Finite)
    (hsc : s ⊆ sUnion c) : ∃ t ∈ c, s ⊆ t := by
  rw [← hs.coe_toFinset, sUnion_eq_biUnion] at hsc
  have := DirectedOn.exists_mem_subset_of_finset_subset_biUnion hn hc hsc
  exact hs.coe_toFinset ▸ this

end LinearOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ff8ed57e702c7db85d717532a24af91644d78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
