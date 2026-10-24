# Products.prop_of_isGood_of_contained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1626c32749317249f436e4fa0e0e56d88176b2ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59816758-7bd7-e986-810f-7a7c6ff11bdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71757bd8-0ff6-2069-1174-4b9ee7202df2",
  "kind": "theorem",
  "lexical_name": "Products.prop_of_isGood_of_contained",
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
  "slug": "products-prop-of-isgood-of-contained--a3b0bb9f1fa3f6c0062b3b58",
  "source": {
    "blob": "1626c32749317249f436e4fa0e0e56d88176b2ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 521,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3b0bb9f1fa3f6c0062b3b582d4d597b61585be998439f1e82a4ba4a9bdc5913",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71757bd8-0ff6-2069-1174-4b9ee7202df2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Products.prop_of_isGood_of_contained {l : Products I} (o : Ordinal) (h : l.isGood C)
    (hsC : contained C o) (i : I) (hi : i ∈ l.val) : ord I i < o := by
  by_contra h'
  apply h
  suffices eval C l = 0 by simp [this]
  ext x
  simp only [eval_eq, LocallyConstant.coe_zero, Pi.zero_apply, ite_eq_right_iff, one_ne_zero]
  contrapose! h'
  exact hsC x.val x.prop i (h'.1 i hi)

end Ordinal

section Maps
/-!
## `ℤ`-linear maps induced by projections

We define injective `ℤ`-linear maps between modules of the form `LocallyConstant C ℤ` induced by
precomposition with the projections defined in the section `Projections`.

### Main definitions

* `πs` and `πs'` are the `ℤ`-linear maps corresponding to `ProjRestrict` and `ProjRestricts`
  respectively.

### Main result

* We prove that `πs` and `πs'` interact well with `Products.eval` and the main application is the
  theorem `isGood_mono` which says that the property `isGood` is "monotone" on ordinals.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1efa855307d9982d26893701fc6c0150f1769858f2550cb2b82f5e7da21ceb2d.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1626c32749317249f436e4fa0e0e56d88176b2ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
