# CheckedGroundedResponse.clause_accepted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6885bfbf-31dc-4b60-cf92-bba1ba5a2cf4",
  "kind": "theorem",
  "lexical_name": "CheckedGroundedResponse.clause_accepted",
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
  "slug": "checkedgroundedresponse-clause-accepted--d1b98dc9fa8df1d35e019da0",
  "source": {
    "blob": "b95cdccf1ba80eea51e703ed7a62842a0a87619e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 316,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1b98dc9fa8df1d35e019da0e2cb57896e469261f3c02745100366c6489e7bc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6885bfbf-31dc-4b60-cf92-bba1ba5a2cf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CheckedGroundedResponse.clause_accepted
    {context : GroundingContext}
    {response : GroundedResponse}
    (checked : CheckedGroundedResponse context response)
    {clause : GroundedClause}
    (membership : clause ∈ response.clauses) :
    clause.Accepted context :=
  checked.clausesChecked.checked clause membership

/-- An accepted assertive clause cannot be supported by an embedding alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b95cdccf1ba80eea51e703ed7a62842a0a87619e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
