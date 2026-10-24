# instIsLeftAdjointSubtypeMemSubgroupCoindFunctorSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30fe13f399ecccb49c5692dca7c420d0030b9cc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac4755dc-2f6b-9300-4690-70471c0bb4d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4877a53f-3713-d7bb-d04d-d3e8ede0b5da",
  "kind": "theorem",
  "lexical_name": "instIsLeftAdjointSubtypeMemSubgroupCoindFunctorSubtype",
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
  "slug": "instisleftadjointsubtypememsubgroupcoindfunctorsubtype--353a388b3937f51249d69379",
  "source": {
    "blob": "30fe13f399ecccb49c5692dca7c420d0030b9cc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 245,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:353a388b3937f51249d6937980f423e095c85485074329460a993d03c15c4db9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4877a53f-3713-d7bb-d04d-d3e8ede0b5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem instIsLeftAdjointSubtypeMemSubgroupCoindFunctorSubtype :
    (coindFunctor.{max w u v} k S.subtype).IsLeftAdjoint :=
  open scoped Classical in (coindResAdjunction k S).isLeftAdjoint

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30fe13f399ecccb49c5692dca7c420d0030b9cc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
