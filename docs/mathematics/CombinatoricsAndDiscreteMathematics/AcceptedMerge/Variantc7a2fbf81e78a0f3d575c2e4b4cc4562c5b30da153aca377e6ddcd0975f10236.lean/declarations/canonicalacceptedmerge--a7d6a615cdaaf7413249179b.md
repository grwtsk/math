# canonicalAcceptedMerge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b22be4757a47a660c99c00b034ae8e855ec21ab972f86843d989a11a9346f2e2",
  "kind": "def",
  "lexical_name": "canonicalAcceptedMerge",
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
  "slug": "canonicalacceptedmerge--a7d6a615cdaaf7413249179b",
  "source": {
    "blob": "797847b90d137cb2b743ef3ea42d47382109ea10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variantc7a2fbf81e78a0f3d575c2e4b4cc4562c5b30da153aca377e6ddcd0975f10236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7d6a615cdaaf7413249179be7b9de070a49b89da7bff8fd46b4d369f92a1b21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variantc7a2fbf81e78a0f3d575c2e4b4cc4562c5b30da153aca377e6ddcd0975f10236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b22be4757a47a660c99c00b034ae8e855ec21ab972f86843d989a11a9346f2e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalAcceptedMerge
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (family : List (AcceptedArtifact ArtifactId Fact)) :
    Finset Fact :=
  familyFacts family

end Mathematics.Operational
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variantc7a2fbf81e78a0f3d575c2e4b4cc4562c5b30da153aca377e6ddcd0975f10236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AcceptedMerge/Variantc7a2fbf81e78a0f3d575c2e4b4cc4562c5b30da153aca377e6ddcd0975f10236.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `797847b90d137cb2b743ef3ea42d47382109ea10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
