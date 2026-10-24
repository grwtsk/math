# jacobiMatrix_reindex

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
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f9e6453-afb7-9207-d6b1-053bc980ec42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11c61ca5-5062-cd96-0c86-64c1a0d67f8b",
  "kind": "lemma",
  "lexical_name": "jacobiMatrix_reindex",
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
  "slug": "jacobimatrix-reindex--63357bcbf224a457fd4fd070",
  "source": {
    "blob": "552cee4afcffc37b64dcac395ab4a4a491be616c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 436,
    "path": "GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variant5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63357bcbf224a457fd4fd0709b00e219ffaaaef3b1c2f32d5af03d7b8e764ae8",
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

Occurrence: `result:11c61ca5-5062-cd96-0c86-64c1a0d67f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobiMatrix_reindex {ι κ : Type*} (e : ι ≃ P.vars) (f : κ ≃ P.rels)
    [Fintype P.rels] [DecidableEq P.rels] [Fintype (P.reindex e f).rels]
    [DecidableEq (P.reindex e f).rels] :
    (P.reindex e f).jacobiMatrix =
      (P.jacobiMatrix.reindex f.symm f.symm).map (MvPolynomial.rename e.symm) := by
  ext i j : 1
  simp [jacobiMatrix_apply, PreSubmersivePresentation.reindex_map, Presentation.reindex_relation,
    Generators.reindex_vars, MvPolynomial.pderiv_rename e.symm.injective]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StandardSmooth/Variant5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variant5889848581bb19fb546a31e6cc4ad63bf563c9907c706cfec8c6a556ceecf077.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `552cee4afcffc37b64dcac395ab4a4a491be616c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
