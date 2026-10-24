# exists_sum_fiber_le_of_sum_fiber_nonneg_of_sum_le_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e92000b8-0a9d-b648-160a-4b4d0a17b30a",
  "kind": "theorem",
  "lexical_name": "exists_sum_fiber_le_of_sum_fiber_nonneg_of_sum_le_nsmul",
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
  "slug": "exists-sum-fiber-le-of-sum-fiber-nonneg-of-sum-le-nsmul--3af051c3194da5c9453341fc",
  "source": {
    "blob": "06a4901b9cf9381e82e3d6db121ad10d9aff82ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3af051c3194da5c9453341fc9b53d3e3bf96f81f7884d4f50e1e933d0bb34348",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e92000b8-0a9d-b648-160a-4b4d0a17b30a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sum_fiber_le_of_sum_fiber_nonneg_of_sum_le_nsmul
    (hf : ∀ y ∉ t, (0 : M) ≤ ∑ x ∈ s with f x = y, w x) (ht : t.Nonempty)
    (hb : ∑ x ∈ s, w x ≤ #t • b) : ∃ y ∈ t, ∑ x ∈ s with f x = y, w x ≤ b :=
  exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum (M := Mᵒᵈ) hf ht hb

end

variable [CommSemiring M] [LinearOrder M] [IsStrictOrderedRing M]

/-!
### The pigeonhole principles on `Finset`s, pigeons counted by heads

In this section we formalize a few versions of the following pigeonhole principle: there is a
pigeonhole with at least as many pigeons as the ceiling of the average number of pigeons across all
pigeonholes.

First, we can use strict or non-strict inequalities. While the versions with non-strict inequalities
are weaker than those with strict inequalities, sometimes it might be more convenient to apply the
weaker version. Second, we can either state that there exists a pigeonhole with at least `n`
pigeons, or state that there exists a pigeonhole with at most `n` pigeons. In the latter case we do
not need the assumption `∀ a ∈ s, f a ∈ t`.

So, we prove four theorems: `Finset.exists_lt_card_fiber_of_maps_to_of_mul_lt_card`,
`Finset.exists_le_card_fiber_of_maps_to_of_mul_le_card`,
`Finset.exists_card_fiber_lt_of_card_lt_mul`, and `Finset.exists_card_fiber_le_of_card_le_mul`. -/


/-- The pigeonhole principle for finitely many pigeons counted by heads: there is a pigeonhole with
at least as many pigeons as the ceiling of the average number of pigeons across all pigeonholes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant466f8b8a2b6803e89114aeaca6da0decb39ba20c931e46533585a1ac1c5b2c49.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a4901b9cf9381e82e3d6db121ad10d9aff82ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
