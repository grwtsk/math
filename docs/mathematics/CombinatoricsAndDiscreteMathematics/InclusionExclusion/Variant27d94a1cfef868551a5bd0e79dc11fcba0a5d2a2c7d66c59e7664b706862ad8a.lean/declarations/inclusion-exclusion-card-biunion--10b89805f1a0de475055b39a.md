# inclusion_exclusion_card_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7f2af09-39a4-1398-031c-44ca513f8f8c",
  "kind": "theorem",
  "lexical_name": "inclusion_exclusion_card_biUnion",
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
  "slug": "inclusion-exclusion-card-biunion--10b89805f1a0de475055b39a",
  "source": {
    "blob": "a76512f90c7e12e3931cf71abbcb688eb9439cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10b89805f1a0de475055b39a5ba437d002799e675eb864a5ccde857437fca6e9",
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

Occurrence: `result:b7f2af09-39a4-1398-031c-44ca513f8f8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inclusion_exclusion_card_biUnion (s : Finset ι) (S : ι → Finset α) :
    #(s.biUnion S) = ∑ t : s.powerset.filter (·.Nonempty),
      (-1 : ℤ) ^ (#t.1 + 1) * #(t.1.inf' (mem_filter.1 t.2).2 S) := by
  simpa using inclusion_exclusion_sum_biUnion (G := ℤ) s S (f := 1)

variable [Fintype α]

/-- **Inclusion-exclusion principle** for the sum of a function over an intersection of complements.

The sum of a function `f` over the intersection of the complements of the `S i` over `i ∈ s` is the
alternating sum of the sums of `f` over the intersections of the `S i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76512f90c7e12e3931cf71abbcb688eb9439cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
