# map_add_eq_map_add_linearDeriv_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c09e965e-dc2f-6787-eaec-001cb6ecd671",
  "kind": "lemma",
  "lexical_name": "map_add_eq_map_add_linearDeriv_add",
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
  "slug": "map-add-eq-map-add-linearderiv-add--1626bc10ab842e185e7caa06",
  "source": {
    "blob": "5673e3ee94a2d607bd6a91444f39c8d0be9992ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1392,
    "line": 1380,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1626bc10ab842e185e7caa069ff77fc2963e4b2604d064bd96b45505e27aae98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c09e965e-dc2f-6787-eaec-001cb6ecd671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1380–1392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_add_eq_map_add_linearDeriv_add [DecidableEq ι] [Fintype ι] (x h : (i : ι) → M₁ i) :
    f (x + h) = f x + f.linearDeriv x h + ∑ s with 2 ≤ #s, f (s.piecewise h x) := by
  rw [add_comm, map_add_univ, ← Finset.powerset_univ,
      ← sum_filter_add_sum_filter_not _ (2 ≤ #·)]
  simp_rw [not_le, Nat.lt_succ_iff, le_iff_lt_or_eq (b := 1), Nat.lt_one_iff, filter_or,
    ← powersetCard_eq_filter, sum_union (disjoint_powersetCard_of_ne zero_ne_one _ _),
    powersetCard_zero, powersetCard_one, sum_singleton, Finset.piecewise_empty, sum_map,
    Function.Embedding.coeFn_mk, Finset.piecewise_singleton, linearDeriv_apply, add_comm]

open Finset in
/-- This expresses the difference between the values of a multilinear map
at two points "close to `x`" in terms of the "derivative" of the multilinear map at `x`
and of "second-order" terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean#L1380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5673e3ee94a2d607bd6a91444f39c8d0be9992ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
