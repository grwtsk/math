# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Periodic.Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.Multiset.periodic_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60c3517c-857b-da59-381d-f31ab226cf4a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Periodic.Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.Multiset.periodic_prod",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-periodic-variant5f26e29a--cfc56a8364d5ff54f57b7d32",
  "source": {
    "blob": "60ed44d012495ae697bf3b632be853c4fe71f69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant17bca658e1d3f5c7435988cf2a7b76ae251a581452e61a714b1e21ffe26dad39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc56a8364d5ff54f57b7d32a140d2ea99d89c6a2a74e3357596faebe138fa04",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Periodic/Variant17bca658e1d3f5c7435988cf2a7b76ae251a581452e61a714b1e21ffe26dad39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60c3517c-857b-da59-381d-f31ab226cf4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Periodic.Variant5f26e29aa06a2fad26438b3837cea03d4de521d7e85b8f9dc19d4d53311981fe.Multiset.periodic_prod [Add α] [CommMonoid β] (s : Multiset (α → β))
    (hs : ∀ f ∈ s, Periodic f c) : Periodic s.prod c :=
  (s.prod_toList ▸ s.toList.periodic_prod) fun f hf => hs f <| Multiset.mem_toList.mp hf
#align multiset.periodic_prod Multiset.periodic_prod
#align multiset.periodic_sum Multiset.periodic_sum

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Periodic/Variant17bca658e1d3f5c7435988cf2a7b76ae251a581452e61a714b1e21ffe26dad39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant17bca658e1d3f5c7435988cf2a7b76ae251a581452e61a714b1e21ffe26dad39.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60ed44d012495ae697bf3b632be853c4fe71f69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
