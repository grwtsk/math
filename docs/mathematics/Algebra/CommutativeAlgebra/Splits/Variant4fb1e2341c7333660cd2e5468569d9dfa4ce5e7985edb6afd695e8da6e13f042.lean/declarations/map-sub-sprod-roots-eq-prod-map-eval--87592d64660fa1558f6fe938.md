# map_sub_sprod_roots_eq_prod_map_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a74f7a3cc409ed1bbb5c2bf7c571e44fa5a86865",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 491,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95517b38-e4d0-4ce3-6aa1-baa08362e89d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21495b0c-4f58-f92f-d852-69462e812130",
  "kind": "lemma",
  "lexical_name": "map_sub_sprod_roots_eq_prod_map_eval",
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
  "slug": "map-sub-sprod-roots-eq-prod-map-eval--87592d64660fa1558f6fe938",
  "source": {
    "blob": "a74f7a3cc409ed1bbb5c2bf7c571e44fa5a86865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 491,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87592d64660fa1558f6fe93878e4ca9a9ba169fd0b6487258ce687e559bad73f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21495b0c-4f58-f92f-d852-69462e812130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_sub_sprod_roots_eq_prod_map_eval
    (s : Multiset R) (g : R[X]) (hg : g.Monic) (hg' : g.Splits) :
    ((s ×ˢ g.roots).map fun ij ↦ ij.1 - ij.2).prod = (s.map g.eval).prod := by
  have := hg'.eq_prod_roots
  rw [hg.leadingCoeff, map_one, one_mul] at this
  conv_rhs => rw [this]
  simp_rw [eval_multiset_prod, Multiset.prod_map_product_eq_prod_prod, Multiset.map_map]
  congr! with x hx
  ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a74f7a3cc409ed1bbb5c2bf7c571e44fa5a86865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
