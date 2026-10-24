# denselyOrdered_iff_of_orderIsoClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1b162cff00775e02bdc62235b61bcc923c7ac0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2bf35ee9dd6bd722a28c7b7fb3c6e3e535e9473955db9219e012bd63dec74c59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8343123-73ac-c5a5-f82e-7dbfb7833ec9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:204f9235-8d87-c321-7434-a54e1f8c5fc3",
  "kind": "lemma",
  "lexical_name": "denselyOrdered_iff_of_orderIsoClass",
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
  "slug": "denselyordered-iff-of-orderisoclass--7827d5e259765d7b760caa84",
  "source": {
    "blob": "2b1b162cff00775e02bdc62235b61bcc923c7ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1330,
    "line": 1318,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2bf35ee9dd6bd722a28c7b7fb3c6e3e535e9473955db9219e012bd63dec74c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7827d5e259765d7b760caa84a51a8328de1501733b2757d56303bd0bd8432960",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2bf35ee9dd6bd722a28c7b7fb3c6e3e535e9473955db9219e012bd63dec74c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:204f9235-8d87-c321-7434-a54e1f8c5fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1318–1330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma denselyOrdered_iff_of_orderIsoClass {X Y F : Type*} [Preorder X] [Preorder Y]
    [EquivLike F X Y] [OrderIsoClass F X Y] (f : F) :
    DenselyOrdered X ↔ DenselyOrdered Y := by
  constructor
  · intro H
    refine ⟨fun a b h ↦ ?_⟩
    obtain ⟨c, hc⟩ := exists_between ((map_inv_lt_map_inv_iff f).mpr h)
    exact ⟨f c, by simpa using hc⟩
  · intro H
    refine ⟨fun a b h ↦ ?_⟩
    obtain ⟨c, hc⟩ := exists_between ((map_lt_map_iff f).mpr h)
    exact ⟨EquivLike.inv f c, by simpa using hc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2bf35ee9dd6bd722a28c7b7fb3c6e3e535e9473955db9219e012bd63dec74c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant2bf35ee9dd6bd722a28c7b7fb3c6e3e535e9473955db9219e012bd63dec74c59.lean#L1318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1b162cff00775e02bdc62235b61bcc923c7ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
