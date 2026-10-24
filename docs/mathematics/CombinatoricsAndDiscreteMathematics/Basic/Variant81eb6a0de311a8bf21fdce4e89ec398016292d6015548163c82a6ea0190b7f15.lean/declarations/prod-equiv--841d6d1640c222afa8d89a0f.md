# prod_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53a079ce06136fdb6567124e6d5a1e37bc2d7fd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1998,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81eb6a0de311a8bf21fdce4e89ec398016292d6015548163c82a6ea0190b7f15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4111978-6cf1-23b4-b838-d9ec375c6ead",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cfde7b0-19dd-dc07-9522-765b91973d32",
  "kind": "theorem",
  "lexical_name": "prod_equiv",
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
  "slug": "prod-equiv--841d6d1640c222afa8d89a0f",
  "source": {
    "blob": "53a079ce06136fdb6567124e6d5a1e37bc2d7fd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2004,
    "line": 1998,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant81eb6a0de311a8bf21fdce4e89ec398016292d6015548163c82a6ea0190b7f15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:841d6d1640c222afa8d89a0f2bd8246028f8901c1e222af34a79c7fca65f0d21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant81eb6a0de311a8bf21fdce4e89ec398016292d6015548163c82a6ea0190b7f15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cfde7b0-19dd-dc07-9522-765b91973d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1998–2004.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_equiv {α β M : Type*} [Fintype α] [Fintype β] [CommMonoid M] (e : α ≃ β) (f : α → M)
    (g : β → M) (h : ∀ x, f x = g (e x)) : ∏ x : α, f x = ∏ x : β, g x :=
  prod_bijective e e.bijective f g h
#align fintype.prod_equiv Fintype.prod_equiv
#align fintype.sum_equiv Fintype.sum_equiv

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant81eb6a0de311a8bf21fdce4e89ec398016292d6015548163c82a6ea0190b7f15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant81eb6a0de311a8bf21fdce4e89ec398016292d6015548163c82a6ea0190b7f15.lean#L1998).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53a079ce06136fdb6567124e6d5a1e37bc2d7fd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
