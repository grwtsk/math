# TargetSeparationCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac5564349caf838567d40c90819e9b4fb192490954b4dc5cead3e258444eaeed",
  "kind": "def",
  "lexical_name": "TargetSeparationCost",
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
  "slug": "targetseparationcost--4bf4e2f0857db49cb530c4fd",
  "source": {
    "blob": "9eef247180e49ca1606dd23e39bd179abf2a0b52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bf4e2f0857db49cb530c4fd5adcd502a8a980f9e046ffc5cc21a8dde44733bf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac5564349caf838567d40c90819e9b4fb192490954b4dc5cead3e258444eaeed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TargetSeparationCost [LinearOrder Cost] [AddCommMonoid Cost]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result)
    (cost : Test → Cost) : WithTop Cost :=
  ((sufficientObservationFamilies obs admitted target).image
    (fun selected => ∑ test ∈ selected, cost test)).min

/-- Counting observations is the special case of assigning unit natural-number cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eef247180e49ca1606dd23e39bd179abf2a0b52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
