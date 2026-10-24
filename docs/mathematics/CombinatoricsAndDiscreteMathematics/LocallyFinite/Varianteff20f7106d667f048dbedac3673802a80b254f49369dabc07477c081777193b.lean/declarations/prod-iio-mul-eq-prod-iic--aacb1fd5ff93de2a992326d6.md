# prod_Iio_mul_eq_prod_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10233015-36e1-5b30-3349-47366be3ba43",
  "kind": "lemma",
  "lexical_name": "prod_Iio_mul_eq_prod_Iic",
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
  "slug": "prod-iio-mul-eq-prod-iic--aacb1fd5ff93de2a992326d6",
  "source": {
    "blob": "24aa4c31f6ed0051908e3df3f942053002602177",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aacb1fd5ff93de2a992326d6ed19567f07741c6ba4849d86c9d7ffecc0d64d71",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10233015-36e1-5b30-3349-47366be3ba43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_Iio_mul_eq_prod_Iic (a : α) : (∏ x ∈ Iio a, f x) * f a = ∏ x ∈ Iic a, f x := by
  rw [mul_comm, mul_prod_Iio_eq_prod_Iic]

end LocallyFiniteOrderBot

end PartialOrder

section LinearOrder
variable [LinearOrder α]

section LocallyFiniteOrder
variable [LocallyFiniteOrder α] [AddMonoidWithOne α] [SuccAddOrder α] [NoMaxOrder α]

@[to_additive (dont_translate := α) sum_Ico_add_eq_sum_Ico_add_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24aa4c31f6ed0051908e3df3f942053002602177` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
