# natDegree_finset_prod_X_sub_C_eq_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d0611f8-a6ad-05d0-ea3f-05682e1982ec",
  "kind": "lemma",
  "lexical_name": "natDegree_finset_prod_X_sub_C_eq_card",
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
  "slug": "natdegree-finset-prod-x-sub-c-eq-card--4149a2ad41db29c18d15b871",
  "source": {
    "blob": "d36053a924df8f4cd78d7da2888f6d692227cebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 288,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4149a2ad41db29c18d15b871253886a285e989744f909b485485179abc37c439",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d0611f8-a6ad-05d0-ea3f-05682e1982ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma natDegree_finset_prod_X_sub_C_eq_card {α} (s : Finset α) (f : α → R) :
    (∏ a ∈ s, (X - C (f a))).natDegree = s.card := by
  rw [Finset.prod, ← (X - C ·).comp_def f, ← Multiset.map_map,
    natDegree_multiset_prod_X_sub_C_eq_card, Multiset.card_map, Finset.card]

end CommRing

section NoZeroDivisors

section Semiring

variable [Semiring R] [NoZeroDivisors R]

/-- The degree of a product of polynomials is equal to
the sum of the degrees, where the degree of the zero polynomial is ⊥.
`[Nontrivial R]` is needed, otherwise for `l = []` we have `⊥` in the LHS and `0` in the RHS.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36053a924df8f4cd78d7da2888f6d692227cebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
