# DenselyOrdered.subsingleton_of_discreteTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6158d1cc81003eb1ac571469b7ac645e2e7b31f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de301a44-7338-a986-e5b1-eca711f13a05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39c61969-ad4f-21b8-9e56-ab83e8507a57",
  "kind": "lemma",
  "lexical_name": "DenselyOrdered.subsingleton_of_discreteTopology",
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
  "slug": "denselyordered-subsingleton-of-discretetopology--81db46156d543eac4d4646ac",
  "source": {
    "blob": "6158d1cc81003eb1ac571469b7ac645e2e7b31f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 262,
    "path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81db46156d543eac4d4646acbcc4126d1dffab7f702bad92e7c5d75401866494",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39c61969-ad4f-21b8-9e56-ab83e8507a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DenselyOrdered.subsingleton_of_discreteTopology [DiscreteTopology α] : Subsingleton α := by
  suffices ∀ a b : α, b ≤ a from ⟨fun a b ↦ le_antisymm (this b a) (this a b)⟩
  intro a b
  by_contra! contra
  have : Ioo a b = Icc a b := by rw [← closure_discrete (Ioo a b), closure_Ioo contra.ne]
  grind => have : b ∈ Ioo a b; finish

/-- Let `s` be a dense set in a nontrivial dense linear order `α`. If `s` is a
separable space (e.g., if `α` has a second countable topology), then there exists a countable
dense subset `t ⊆ s` such that `t` does not contain bottom/top elements of `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6158d1cc81003eb1ac571469b7ac645e2e7b31f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
