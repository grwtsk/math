# cprankMax_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2ecb1ac-0651-458c-07aa-8d28410d8308",
  "kind": "theorem",
  "lexical_name": "cprankMax_upper_bound",
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
  "slug": "cprankmax-upper-bound--e1525422cbd5ccf7f57824ef",
  "source": {
    "blob": "4a9a92d4f0b1f91325fb5ab9e978f497abf359e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 317,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1525422cbd5ccf7f57824efe5bb62b0655af56455f5cfa66c4b7c83240b4ee3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2ecb1ac-0651-458c-07aa-8d28410d8308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cprankMax_upper_bound [Semiring α] : ∀ {ds}, ∀ x : Holor α ds, CPRankMax ds.prod x
  | [], x => cprankMax_nil x
  | d :: ds, x => by
    have h_summands :
      ∀ i : { x // x ∈ Finset.range d },
        CPRankMax ds.prod (unitVec d i.1 ⊗ slice x i.1 (mem_range.1 i.2)) :=
      fun i => cprankMax_mul _ _ _ (cprankMax_upper_bound (slice x i.1 (mem_range.1 i.2)))
    have h_dds_prod : (List.cons d ds).prod = Finset.card (Finset.range d) * prod ds := by
      simp [Finset.card_range]
    have :
      CPRankMax (Finset.card (Finset.attach (Finset.range d)) * prod ds)
        (∑ i ∈ Finset.attach (Finset.range d),
          unitVec d i.val ⊗ slice x i.val (mem_range.1 i.2)) :=
      cprankMax_sum (Finset.range d).attach _ fun i _ => h_summands i
    have h_cprankMax_sum :
      CPRankMax (Finset.card (Finset.range d) * prod ds)
        (∑ i ∈ Finset.attach (Finset.range d),
          unitVec d i.val ⊗ slice x i.val (mem_range.1 i.2)) := by rwa [Finset.card_attach] at this
    rw [← sum_unitVec_mul_slice x]
    rw [h_dds_prod]
    exact h_cprankMax_sum

/-- The CP rank of a holor `x`: the smallest N such that
  `x` can be written as the sum of N holors of rank at most 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a9a92d4f0b1f91325fb5ab9e978f497abf359e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
