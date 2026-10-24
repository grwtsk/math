# slice_union_shadow_falling_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d0aabbd-3d11-7a79-de1a-d94619655b0d",
  "kind": "theorem",
  "lexical_name": "slice_union_shadow_falling_succ",
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
  "slug": "slice-union-shadow-falling-succ--17df0158040b323e77d2a248",
  "source": {
    "blob": "0d4bdaf3c71ff1099b428491e8a4953c340dedb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17df0158040b323e77d2a2488cae04a220b086cc46012ee3cd9840685522bb2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d0aabbd-3d11-7a79-de1a-d94619655b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem slice_union_shadow_falling_succ : 𝒜 # k ∪ ∂ (falling (k + 1) 𝒜) = falling k 𝒜 := by
  ext s
  simp_rw [mem_union, mem_slice, mem_shadow_iff, mem_falling]
  constructor
  · rintro (h | ⟨s, ⟨⟨t, ht, hst⟩, hs⟩, a, ha, rfl⟩)
    · exact ⟨⟨s, h.1, Subset.refl _⟩, h.2⟩
    refine ⟨⟨t, ht, (erase_subset _ _).trans hst⟩, ?_⟩
    rw [card_erase_of_mem ha, hs]
    rfl
  · rintro ⟨⟨t, ht, hst⟩, hs⟩
    by_cases h : s ∈ 𝒜
    · exact Or.inl ⟨h, hs⟩
    obtain ⟨a, ha, hst⟩ := ssubset_iff.1 (ssubset_of_subset_of_ne hst (ht.ne_of_notMem h).symm)
    refine Or.inr ⟨insert a s, ⟨⟨t, ht, hst⟩, ?_⟩, a, mem_insert_self _ _, erase_insert ha⟩
    rw [card_insert_of_notMem ha, hs]

variable {𝒜 k}

/-- The shadow of `falling m 𝒜` is disjoint from the `n`-sized elements of `𝒜`, thanks to the
antichain property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d4bdaf3c71ff1099b428491e8a4953c340dedb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
