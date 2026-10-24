# baseChange_jacobian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "552cee4afcffc37b64dcac395ab4a4a491be616c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74f016e0-e18f-0f47-9c8b-98c044457b76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f09e7971-f9b8-0a97-00c6-23dec6e1ce75",
  "kind": "lemma",
  "lexical_name": "baseChange_jacobian",
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
  "slug": "basechange-jacobian--2f05432b62661e5b3732e906",
  "source": {
    "blob": "552cee4afcffc37b64dcac395ab4a4a491be616c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 404,
    "path": "GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variant5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f05432b62661e5b3732e906ffe251e5dc9b31617aa6bac8664705cc8b387606",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StandardSmooth/Variant5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f09e7971-f9b8-0a97-00c6-23dec6e1ce75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_jacobian : (P.baseChange T).jacobian = 1 ⊗ₜ P.jacobian := by
  classical
  cases nonempty_fintype P.rels
  letI : Fintype (P.baseChange T).rels := inferInstanceAs <| Fintype P.rels
  simp_rw [jacobian_eq_jacobiMatrix_det]
  have h : (baseChange T P).jacobiMatrix =
      (MvPolynomial.map (algebraMap R T)).mapMatrix P.jacobiMatrix := by
    ext i j : 1
    simp only [baseChange, jacobiMatrix_apply, Presentation.baseChange_relation,
      RingHom.mapMatrix_apply, Matrix.map_apply, Generators.baseChange_vars,
      Presentation.baseChange_toGenerators, baseChange_toPresentation, MvPolynomial.pderiv_map]
  rw [h]
  erw [← RingHom.map_det, aeval_map_algebraMap]
  rw [P.algebraMap_apply]
  apply aeval_one_tmul

end BaseChange

/-- Given a pre-submersive presentation `P` and equivalences `ι ≃ P.vars` and
`κ ≃ P.rels`, this is the induced pre-sumbersive presentation with variables indexed
by `ι` and relations indexed by `κ -/
@[simps toPresentation, simps -isSimp map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StandardSmooth/Variant5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variant5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `552cee4afcffc37b64dcac395ab4a4a491be616c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
