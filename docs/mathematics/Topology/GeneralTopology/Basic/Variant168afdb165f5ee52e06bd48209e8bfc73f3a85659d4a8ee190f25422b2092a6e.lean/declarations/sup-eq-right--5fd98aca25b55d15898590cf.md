# sup_eq_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 791,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9e92bc4-d1ba-0af9-55d6-354c4173b90c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15760504-9f66-6604-33f1-04d45260c53e",
  "kind": "theorem",
  "lexical_name": "sup_eq_right",
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
  "slug": "sup-eq-right--5fd98aca25b55d15898590cf",
  "source": {
    "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 802,
    "line": 791,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fd98aca25b55d15898590cf0b65a03ee927e5bd124aaeb4b12773e49539512a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15760504-9f66-6604-33f1-04d45260c53e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–802.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem sup_eq_right {a b : CauSeq α abs} (h : a ≤ b) : a ⊔ b ≈ b := by
  obtain ⟨ε, ε0 : _ < _, i, h⟩ | h := h
  · intro _ _
    refine ⟨i, fun j hj => ?_⟩
    dsimp
    rw [← max_sub_sub_right]
    rwa [sub_self, max_eq_right, abs_zero]
    rw [sub_nonpos, ← sub_nonneg]
    exact ε0.le.trans (h _ hj)
  · refine Setoid.trans (sup_equiv_sup h (Setoid.refl _)) ?_
    rw [CauSeq.sup_idem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
