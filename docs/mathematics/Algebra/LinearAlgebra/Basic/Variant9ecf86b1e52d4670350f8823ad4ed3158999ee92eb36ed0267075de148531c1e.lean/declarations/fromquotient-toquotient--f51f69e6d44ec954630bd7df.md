# fromQuotient_toQuotient

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
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0aa79c70-afa6-bf49-1590-e8d829d327ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be79b4c3-a2f7-e55a-9846-c73a82c32e8d",
  "kind": "lemma",
  "lexical_name": "fromQuotient_toQuotient",
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
  "slug": "fromquotient-toquotient--f51f69e6d44ec954630bd7df",
  "source": {
    "blob": "4866e60c459db675b46fd19206d50c52533a4916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 180,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f51f69e6d44ec954630bd7dfe8558db16af7161fa5a7a22e0752eabf37eabe6f",
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

Occurrence: `result:be79b4c3-a2f7-e55a-9846-c73a82c32e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromQuotient_toQuotient (x : relations.G →₀ A) :
    solution.fromQuotient (relations.toQuotient x) = solution.π x := rfl

variable {N : Type v'} [AddCommGroup N] [Module A N] (f : M →ₗ[A] N)

/-- The image of a solution to `relations : Relation A` by a linear map `M →ₗ[A] N`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9ecf86b1e52d4670350f8823ad4ed3158999ee92eb36ed0267075de148531c1e.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4866e60c459db675b46fd19206d50c52533a4916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
