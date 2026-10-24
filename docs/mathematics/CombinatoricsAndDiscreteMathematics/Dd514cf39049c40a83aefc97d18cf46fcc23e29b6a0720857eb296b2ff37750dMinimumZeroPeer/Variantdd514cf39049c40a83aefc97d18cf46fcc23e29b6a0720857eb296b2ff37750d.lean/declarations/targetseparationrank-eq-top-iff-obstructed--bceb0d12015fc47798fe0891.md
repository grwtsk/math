# targetSeparationRank_eq_top_iff_obstructed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9eef247180e49ca1606dd23e39bd179abf2a0b52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddcefd20-c44e-368b-80f8-e724116498ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93a2e06c-f0f1-01d6-984c-dd1e0d9535b8",
  "kind": "theorem",
  "lexical_name": "targetSeparationRank_eq_top_iff_obstructed",
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
  "slug": "targetseparationrank-eq-top-iff-obstructed--bceb0d12015fc47798fe0891",
  "source": {
    "blob": "9eef247180e49ca1606dd23e39bd179abf2a0b52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bceb0d12015fc47798fe089122b1cfa0dd434641a7f5e1d36906cb5026f0f477",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93a2e06c-f0f1-01d6-984c-dd1e0d9535b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetSeparationRank_eq_top_iff_obstructed (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔
      Nonempty (DescentObstruction (observationCarrier obs admitted) target) := by
  rw [targetSeparationRank_eq_top_iff_collision]
  constructor
  · rintro ⟨x, y, different, equal⟩
    exact ⟨⟨x, y, equal, different⟩⟩
  · rintro ⟨obstruction⟩
    exact ⟨obstruction.left, obstruction.right, obstruction.targetSeparated,
      obstruction.sameCarrier⟩

/-- Rank zero means precisely that the target is constant on its domain, including the empty domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eef247180e49ca1606dd23e39bd179abf2a0b52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
