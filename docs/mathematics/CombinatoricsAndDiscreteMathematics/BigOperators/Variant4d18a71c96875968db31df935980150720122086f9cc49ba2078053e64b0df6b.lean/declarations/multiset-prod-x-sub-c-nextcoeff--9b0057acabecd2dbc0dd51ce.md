# multiset_prod_X_sub_C_nextCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bfcc3a0ac42228ee148d0badf8b486ae67d81a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:191a916c-3087-6503-f55d-cd55cde0b613",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d35f330-e693-0a0b-5488-4a95d81c25dc",
  "kind": "theorem",
  "lexical_name": "multiset_prod_X_sub_C_nextCoeff",
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
  "slug": "multiset-prod-x-sub-c-nextcoeff--9b0057acabecd2dbc0dd51ce",
  "source": {
    "blob": "3bfcc3a0ac42228ee148d0badf8b486ae67d81a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b0057acabecd2dbc0dd51ce27f248dab1fb42697252f436c8b96c0543f5e420",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d35f330-e693-0a0b-5488-4a95d81c25dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiset_prod_X_sub_C_nextCoeff (t : Multiset R) :
    nextCoeff (t.map fun x => X - C x).prod = -t.sum := by
  rw [nextCoeff_multiset_prod]
  · simp only [nextCoeff_X_sub_C]
    exact t.sum_hom (-AddMonoidHom.id R)
  · intros
    apply monic_X_sub_C
set_option linter.uppercaseLean3 false in
#align polynomial.multiset_prod_X_sub_C_next_coeff Polynomial.multiset_prod_X_sub_C_nextCoeff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant4d18a71c96875968db31df935980150720122086f9cc49ba2078053e64b0df6b.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bfcc3a0ac42228ee148d0badf8b486ae67d81a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
