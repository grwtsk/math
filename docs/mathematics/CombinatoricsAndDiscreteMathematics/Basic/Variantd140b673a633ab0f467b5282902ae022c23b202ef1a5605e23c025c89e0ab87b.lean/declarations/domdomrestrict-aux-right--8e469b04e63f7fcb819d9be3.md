# domDomRestrict_aux_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2b2a00c76a87ec6e1d861c21016714c5fbd3b12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 727,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ad49833-9807-c6e7-443e-6269bbc3913c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7286758-6cd1-59ff-4941-b3d910db3b4c",
  "kind": "lemma",
  "lexical_name": "domDomRestrict_aux_right",
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
  "slug": "domdomrestrict-aux-right--8e469b04e63f7fcb819d9be3",
  "source": {
    "blob": "a2b2a00c76a87ec6e1d861c21016714c5fbd3b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 727,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e469b04e63f7fcb819d9be3ca0b4dc82180cb4377ef3ec50d63b56718277529",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7286758-6cd1-59ff-4941-b3d910db3b4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 727–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma domDomRestrict_aux_right {ι} [DecidableEq ι] (P : ι → Prop) [DecidablePred P] {M₁ : ι → Type*}
    [DecidableEq {a // ¬ P a}]
    (x : (i : {a // P a}) → M₁ i) (z : (i : {a // ¬ P a}) → M₁ i) (i : {a : ι // ¬ P a})
    (c : M₁ i) : (fun j ↦ if h : P j then x ⟨j, h⟩ else Function.update z i c ⟨j, h⟩) =
    Function.update (fun j => if h : P j then x ⟨j, h⟩ else z ⟨j, h⟩) i c := by
  simpa only [dite_not] using domDomRestrict_aux _ z (fun j ↦ x ⟨j.1, not_not.mp j.2⟩) i c

/-- Given a multilinear map `f` on `(i : ι) → M i`, a (decidable) predicate `P` on `ι` and
an element `z` of `(i : {a // ¬ P a}) → M₁ i`, construct a multilinear map on
`(i : {a // P a}) → M₁ i)` whose value at `x` is `f` evaluated at the vector with `i`th coordinate
`x i` if `P i` and `z i` otherwise.

The naming is similar to `MultilinearMap.domDomCongr`: here we are applying the restriction to the
domain of the domain.

For a linear map version, see `MultilinearMap.domDomRestrictₗ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean#L727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b2a00c76a87ec6e1d861c21016714c5fbd3b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
