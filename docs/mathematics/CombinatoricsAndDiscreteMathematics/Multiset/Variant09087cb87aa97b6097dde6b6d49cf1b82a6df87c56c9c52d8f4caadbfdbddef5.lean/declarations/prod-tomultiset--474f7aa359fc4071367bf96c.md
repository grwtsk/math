# prod_toMultiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db89a13e-b60e-d85e-aff2-7e35704caf5a",
  "kind": "theorem",
  "lexical_name": "prod_toMultiset",
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
  "slug": "prod-tomultiset--474f7aa359fc4071367bf96c",
  "source": {
    "blob": "d64fd2da38df7df70b6adf0778cfae133aef461b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:474f7aa359fc4071367bf96cc760756dae240dd02123f90b07866929fb90a8d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db89a13e-b60e-d85e-aff2-7e35704caf5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_toMultiset [CommMonoid α] (f : α →₀ ℕ) :
    f.toMultiset.prod = f.prod fun a n => a ^ n := by
  refine' f.induction _ _
  · rw [toMultiset_zero, Multiset.prod_zero, Finsupp.prod_zero_index]
  · intro a n f _ _ ih
    rw [toMultiset_add, Multiset.prod_add, ih, toMultiset_single, Multiset.prod_nsmul,
      Finsupp.prod_add_index' pow_zero pow_add, Finsupp.prod_single_index, Multiset.prod_singleton]
    · exact pow_zero a
#align finsupp.prod_to_multiset Finsupp.prod_toMultiset

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d64fd2da38df7df70b6adf0778cfae133aef461b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
