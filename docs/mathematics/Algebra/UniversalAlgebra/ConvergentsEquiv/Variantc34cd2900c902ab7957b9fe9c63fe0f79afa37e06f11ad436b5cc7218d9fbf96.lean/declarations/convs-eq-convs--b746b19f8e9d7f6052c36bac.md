# convs_eq_convs'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b7e294c26b98cb48b99b91866efd6b9a495a965",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e958e57a-9467-8795-bc6c-537374de7e21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cf827f4-c5ff-7b77-34e0-f541f3afab2f",
  "kind": "theorem",
  "lexical_name": "convs_eq_convs'",
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
  "slug": "convs-eq-convs--b746b19f8e9d7f6052c36bac",
  "source": {
    "blob": "7b7e294c26b98cb48b99b91866efd6b9a495a965",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 377,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b746b19f8e9d7f6052c36bac18d24b2b06d97d4c8ba29e6e8ef0f2a615b229af",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf827f4-c5ff-7b77-34e0-f541f3afab2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convs_eq_convs' [Field K] [LinearOrder K] [IsStrictOrderedRing K]
    {c : ContFract K} :
    (↑c : GenContFract K).convs = (↑c : GenContFract K).convs' := by
  ext n
  apply GenContFract.convs_eq_convs'
  intro gp m _ s_nth_eq
  exact ⟨zero_lt_one.trans_le ((c : SimpContFract K).property m gp.a
    (partNum_eq_s_a s_nth_eq)).symm.le, c.property m gp.b <| partDen_eq_s_b s_nth_eq⟩

end ContFract
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variantc34cd2900c902ab7957b9fe9c63fe0f79afa37e06f11ad436b5cc7218d9fbf96.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7e294c26b98cb48b99b91866efd6b9a495a965` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
