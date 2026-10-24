# IsPos.reflectionPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 640,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89952dc2-3d1f-27a6-9f58-693227c4f08c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6a75b6b-907b-92bb-f802-8a3b9e8212b6",
  "kind": "lemma",
  "lexical_name": "IsPos.reflectionPerm",
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
  "slug": "ispos-reflectionperm--c272a5eccdb929bb3a6aa320",
  "source": {
    "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 640,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c272a5eccdb929bb3a6aa320d656e2b5e73a2bc8c0a1b0c5a20e6c60a0336fec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6a75b6b-907b-92bb-f802-8a3b9e8212b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPos.reflectionPerm {i j : ι} (hi : b.IsPos i) (hj : j ∈ b.support) (hij : i ≠ j) :
    b.IsPos (P.reflectionPerm j i) := by
  have : P.root (P.reflectionPerm j i) = P.root i + (-P.pairingIn ℤ i j) • P.root j := by
    rw [root_reflectionPerm, neg_smul, reflection_apply_root' ℤ, sub_eq_add_neg]
  exact hi.add_zsmul hij hj this

omit [P.IsReduced] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e95b084476d1b16dd82d35a3bed2517c25b1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
