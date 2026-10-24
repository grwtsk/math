# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44b3f8d4e920a88dbdffbe69be3ef2df4ad8166bc7de80b4b7208d8d80703d65",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--3b8c94ab3f5ff20cec59a180",
  "source": {
    "blob": "d33e9ec8803ae243195d481e9d7170763f6394c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/5316b33b99dce95a35e91b076b8b92c4c64e9536eeb85c528312f2fc989f2c41ZeroCheck/Variant38c946c16c8e0e460ac8421651cde42fb000b89be475173b4c42f171dbba8f76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b8c94ab3f5ff20cec59a180c456ceb60c6db1013fbed1dd5e42acd633687fb5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/5316b33b99dce95a35e91b076b8b92c4c64e9536eeb85c528312f2fc989f2c41ZeroCheck/Variant38c946c16c8e0e460ac8421651cde42fb000b89be475173b4c42f171dbba8f76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44b3f8d4e920a88dbdffbe69be3ef2df4ad8166bc7de80b4b7208d8d80703d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a : WithTop ℕ) (h : a ≤ ((0 : ℕ) : WithTop ℕ)) : a = 0 := by
  exact le_antisymm h (WithTop.coe_le_coe.mpr (Nat.zero_le _))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/5316b33b99dce95a35e91b076b8b92c4c64e9536eeb85c528312f2fc989f2c41ZeroCheck/Variant38c946c16c8e0e460ac8421651cde42fb000b89be475173b4c42f171dbba8f76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/5316b33b99dce95a35e91b076b8b92c4c64e9536eeb85c528312f2fc989f2c41ZeroCheck/Variant38c946c16c8e0e460ac8421651cde42fb000b89be475173b4c42f171dbba8f76.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d33e9ec8803ae243195d481e9d7170763f6394c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
