# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetResult.Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.Equiv.Perm.prod_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfff2065-f204-da9b-7073-aafe258a1817",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetResult.Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.Equiv.Perm.prod_comp",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-finsetresult-variante935--249f3c4a5c256d213184895b",
  "source": {
    "blob": "84e7a40cd644c362ba59f96b27ad46569ac92471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 429,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:249f3c4a5c256d213184895b0e5f6e0298ab9d418ad10abffb81bc0928d898eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfff2065-f204-da9b-7073-aafe258a1817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetResult.Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.Equiv.Perm.prod_comp (σ : Equiv.Perm ι) (s : Finset ι) (f : ι → M)
    (hs : { a | σ a ≠ a } ⊆ s) : (∏ x ∈ s, f (σ x)) = ∏ x ∈ s, f x := by
  convert! (prod_map s σ.toEmbedding f).symm
  exact (map_perm hs).symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e7a40cd644c362ba59f96b27ad46569ac92471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
