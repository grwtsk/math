# discrete_summationByParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f618174e81c6a2bc2e39c37f8c196e71baf41b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:225b1a2d-6b6c-901a-31bf-9ccb15a70b3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8837b72-1cba-aa23-ae87-23d518c7f721",
  "kind": "theorem",
  "lexical_name": "discrete_summationByParts",
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
  "slug": "discrete-summationbyparts--4f38c9a3b9175f4731520721",
  "source": {
    "blob": "83f618174e81c6a2bc2e39c37f8c196e71baf41b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f38c9a3b9175f4731520721118522237872965ace250c2739c03a3c632d7baf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8837b72-1cba-aa23-ae87-23d518c7f721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrete_summationByParts (N : ℕ) (weight : ℕ → ℝ) :
    conductorThreeDiscreteWeightedSum N weight =
      conductorThreePsi (2 * N) * weight (2 * N) +
        ∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1)) := by
  have hparts :
      (∑ n ∈ Finset.range (2 * N + 1),
          weight n * twistedVonMangoldtThree n) =
        weight (2 * N) * conductorThreePsi (2 * N) -
          ∑ x ∈ Finset.range (2 * N),
            (weight (x + 1) - weight x) * conductorThreePsi x := by
    simpa only [conductorThreePsi, Nat.add_sub_cancel, one_smul,
      smul_eq_mul] using
      (Finset.sum_range_by_parts weight twistedVonMangoldtThree
        (2 * N + 1))
  calc
    conductorThreeDiscreteWeightedSum N weight =
        ∑ n ∈ Finset.range (2 * N + 1),
          weight n * twistedVonMangoldtThree n := by
      unfold conductorThreeDiscreteWeightedSum
      apply Finset.sum_congr rfl
      intro n hn
      ring
    _ = weight (2 * N) * conductorThreePsi (2 * N) -
          ∑ x ∈ Finset.range (2 * N),
            (weight (x + 1) - weight x) * conductorThreePsi x := hparts
    _ = conductorThreePsi (2 * N) * weight (2 * N) +
          ∑ x ∈ Finset.range (2 * N),
            conductorThreePsi x * (weight x - weight (x + 1)) := by
      rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
      congr 1
      · ring
      · apply Finset.sum_congr rfl
        intro x hx
        ring

/-- The terminal value of a weight is bounded by its initial value plus its
total variation. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f618174e81c6a2bc2e39c37f8c196e71baf41b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
