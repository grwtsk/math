# PreservesSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3f8c9c62259b4c134eabcb54bf0197bc2e97232e1acb997d5d0ab491ddffd11",
  "kind": "def",
  "lexical_name": "PreservesSource",
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
  "slug": "preservessource--868cb10c483965bf5688f029",
  "source": {
    "blob": "1f9b3eb4eeeee9bafc99af1d8ef8e58557634d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 676,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:868cb10c483965bf5688f029e6929253c4c93eeaa94b8d55c11db2ed0059d16c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3f8c9c62259b4c134eabcb54bf0197bc2e97232e1acb997d5d0ab491ddffd11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PreservesSource
    (source : ProgressiveEvidence)
    (status : ClaimStatus) : CubicalFaceCheck → Prop
  | .compatible witness => source.identity ∈ witness.evidence
  | .obstructed obstruction =>
      source.identity ∈ obstruction.evidence.derivesFrom ∧
        obstruction.evidence.authority = source.authority ∧
        obstruction.evidence.level = source.level ∧
        obstruction.status = status
  | .unresolved obligation =>
      source.identity ∈ obligation.evidence.derivesFrom ∧
        obligation.evidence.authority = source.authority ∧
        obligation.evidence.level = source.level

end CubicalFaceCheck

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9b3eb4eeeee9bafc99af1d8ef8e58557634d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
