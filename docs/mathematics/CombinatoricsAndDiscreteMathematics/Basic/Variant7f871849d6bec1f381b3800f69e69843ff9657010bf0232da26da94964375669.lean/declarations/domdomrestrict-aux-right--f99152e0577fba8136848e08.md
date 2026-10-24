# domDomRestrict_aux_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41b373b9-6f22-8505-03ce-e7e81c4ecbdb",
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
  "slug": "domdomrestrict-aux-right--f99152e0577fba8136848e08",
  "source": {
    "blob": "5673e3ee94a2d607bd6a91444f39c8d0be9992ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 745,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f99152e0577fba8136848e08fdcb79066b18c76adc6b39f8ed2ea8a0546e932b",
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

Occurrence: `result:41b373b9-6f22-8505-03ce-e7e81c4ecbdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–761.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5673e3ee94a2d607bd6a91444f39c8d0be9992ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
