# exists_sum_fiber_le_of_maps_to_of_sum_le_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e07870d7af9dd7f4cd1128df7a966bbb142b496",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0c12dae-8a8b-6afc-252a-65c8aaaee2e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dd7732f-0f2c-a7d9-75fa-128cd1459fe3",
  "kind": "theorem",
  "lexical_name": "exists_sum_fiber_le_of_maps_to_of_sum_le_nsmul",
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
  "slug": "exists-sum-fiber-le-of-maps-to-of-sum-le-nsmul--918ef01f872810f4f12b22eb",
  "source": {
    "blob": "8e07870d7af9dd7f4cd1128df7a966bbb142b496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918ef01f872810f4f12b22ebce77a98f6c4b7b3a5a4e08c442e6b5fc01c3890f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dd7732f-0f2c-a7d9-75fa-128cd1459fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sum_fiber_le_of_maps_to_of_sum_le_nsmul (hf : ∀ a ∈ s, f a ∈ t) (ht : t.Nonempty)
    (hb : ∑ x ∈ s, w x ≤ #t • b) : ∃ y ∈ t, ∑ x ∈ s with f x = y, w x ≤ b :=
  exists_le_sum_fiber_of_maps_to_of_nsmul_le_sum (M := Mᵒᵈ) hf ht hb

/-- The pigeonhole principle for finitely many pigeons counted by weight, non-strict inequality
version: if the total weight of a finite set of pigeons is greater than or equal to `n • b`, they
are sorted into some pigeonholes, and for all but `n > 0` pigeonholes the total weight of the
pigeons there is nonpositive, then for at least one of these `n` pigeonholes, the total weight of
the pigeons in this pigeonhole is greater than or equal to `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e07870d7af9dd7f4cd1128df7a966bbb142b496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
