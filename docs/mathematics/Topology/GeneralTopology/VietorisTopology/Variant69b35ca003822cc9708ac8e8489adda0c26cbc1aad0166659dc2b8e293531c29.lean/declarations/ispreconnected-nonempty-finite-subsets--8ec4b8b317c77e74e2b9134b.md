# isPreconnected_nonempty_finite_subsets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf408523-41f2-88ce-1876-32c0708abf38",
  "kind": "theorem",
  "lexical_name": "isPreconnected_nonempty_finite_subsets",
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
  "slug": "ispreconnected-nonempty-finite-subsets--8ec4b8b317c77e74e2b9134b",
  "source": {
    "blob": "524bba0218c9cea79b453a081dfae042d893f368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 341,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ec4b8b317c77e74e2b9134b1ae76cbefa1a8a66206d9a86cab3a18d9cc1b9b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf408523-41f2-88ce-1876-32c0708abf38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_nonempty_finite_subsets {s : Set α} (hs : IsPreconnected s) :
    IsPreconnected {t | t.Nonempty ∧ t.Finite ∧ t ⊆ s} := by
  rcases eq_empty_or_nonempty s with rfl | ⟨x, hx⟩
  · convert isPreconnected_empty
    grind [Set.not_nonempty_empty]
  suffices {t | t.Nonempty ∧ t.Finite ∧ t ⊆ s} =
      ⋃ n : ℕ+, range (ι := Fin n) '' Set.pi univ fun _ => s by
    rw [this]
    /- The family of nonempty subsets of `s` with at most `n` elements is connected, since it is the
    image of `sⁿ` under the continuous map `(x₁, …, xₙ) ↦ {x₁, …, xₙ}`. It follows that their union
    over `n ≥ 1` is also connected. -/
    exact isPreconnected_iUnion
      ⟨{x}, mem_iInter_of_mem fun n => ⟨fun _ => x, by simpa⟩⟩
      (fun n => .image (isPreconnected_univ_pi fun _ => hs) _ (by fun_prop))
  refine subset_antisymm (fun t ht => ?_)
    (iUnion_subset fun _ => image_subset_iff.mpr fun f hf =>
      ⟨range_nonempty _, finite_range _, by grind⟩)
  obtain ⟨ht₁, ht₂, hts⟩ := ht
  obtain ⟨n, f, -, rfl⟩ := ht₂.fin_param
  rw [range_subset_iff] at hts
  rw [range_nonempty_iff_nonempty] at ht₁
  lift n to ℕ+ using Fin.pos'
  exact mem_iUnion_of_mem n <| mem_image_of_mem _ <| mem_univ_pi.mpr hts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524bba0218c9cea79b453a081dfae042d893f368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
