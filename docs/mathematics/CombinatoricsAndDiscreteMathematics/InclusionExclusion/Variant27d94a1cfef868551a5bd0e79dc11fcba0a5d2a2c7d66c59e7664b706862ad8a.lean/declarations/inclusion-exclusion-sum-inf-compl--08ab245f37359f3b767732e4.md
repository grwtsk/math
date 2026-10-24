# inclusion_exclusion_sum_inf_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9230fd84-b134-8374-2207-678d81346225",
  "kind": "theorem",
  "lexical_name": "inclusion_exclusion_sum_inf_compl",
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
  "slug": "inclusion-exclusion-sum-inf-compl--08ab245f37359f3b767732e4",
  "source": {
    "blob": "a76512f90c7e12e3931cf71abbcb688eb9439cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08ab245f37359f3b767732e40cb58334a487850785420762d9576cea52baa03e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9230fd84-b134-8374-2207-678d81346225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inclusion_exclusion_sum_inf_compl (s : Finset ι) (S : ι → Finset α) (f : α → G) :
    ∑ a ∈ s.inf fun i ↦ (S i)ᶜ, f a = ∑ t ∈ s.powerset, (-1) ^ #t • ∑ a ∈ t.inf S, f a := by
  classical
  calc
    ∑ a ∈ s.inf fun i ↦ (S i)ᶜ, f a
      = ∑ a, f a - ∑ a ∈ s.biUnion S, f a := by
      rw [← Finset.compl_sup, sup_eq_biUnion, eq_sub_iff_add_eq, sum_compl_add_sum]
    _ = ∑ t ∈ s.powerset.filter (¬ ·.Nonempty), (-1) ^ #t • ∑ a ∈ t.inf S, f a
          + ∑ t ∈ s.powerset.filter (·.Nonempty), (-1) ^ #t • ∑ a ∈ t.inf S, f a := by
      simp [← sum_attach (filter ..), inclusion_exclusion_sum_biUnion, inf'_eq_inf, filter_eq',
        sub_eq_add_neg, pow_succ]
    _ = ∑ t ∈ s.powerset, (-1) ^ #t • ∑ a ∈ t.inf S, f a := sum_filter_not_add_sum_filter ..

/-- **Inclusion-exclusion principle** for the cardinality of an intersection of complements.

The cardinality of the intersection of the complements of the `S i` over `i ∈ s` is the
alternating sum of the cardinalities of the intersections of the `S i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76512f90c7e12e3931cf71abbcb688eb9439cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
