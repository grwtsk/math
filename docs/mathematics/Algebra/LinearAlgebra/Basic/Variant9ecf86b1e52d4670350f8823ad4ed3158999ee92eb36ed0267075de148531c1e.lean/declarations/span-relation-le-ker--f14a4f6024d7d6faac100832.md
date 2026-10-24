# span_relation_le_ker_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4866e60c459db675b46fd19206d50c52533a4916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b213f807-a4c2-d3fe-effc-9596fd6431e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:820df850-d15a-62ae-ac34-c4fb93d7f394",
  "kind": "lemma",
  "lexical_name": "span_relation_le_ker_π",
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
  "slug": "span-relation-le-ker--f14a4f6024d7d6faac100832",
  "source": {
    "blob": "4866e60c459db675b46fd19206d50c52533a4916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f14a4f6024d7d6faac1008324ae7e34d1a2cf908549afc879afd78a92663cd5b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:820df850-d15a-62ae-ac34-c4fb93d7f394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_relation_le_ker_π :
    Submodule.span A (Set.range relations.relation) ≤ LinearMap.ker solution.π := by
  rw [Submodule.span_le]
  rintro _ ⟨r, rfl⟩
  simp only [SetLike.mem_coe, LinearMap.mem_ker, π_relation]

/-- Given `relations : Relations A` and `solution : relations.Solution M`, this is
the canonical linear map `relations.Quotient →ₗ[A] M` from the module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4866e60c459db675b46fd19206d50c52533a4916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
