# pairPartition12_0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6b8d859f8c70470bc9b0bd311766cbd711a350843ab469f3ffbc4f4a16d7369",
  "kind": "def",
  "lexical_name": "pairPartition12_0",
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
  "slug": "pairpartition12-0--60f8b26b23cf80973f3f479c",
  "source": {
    "blob": "94b95a097c49ba15fe7737101ef1fb3b949f5f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60f8b26b23cf80973f3f479ccd3f0025c6f665161526c81d75b3eca7919852e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6b8d859f8c70470bc9b0bd311766cbd711a350843ab469f3ffbc4f4a16d7369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pairPartition12_0 : DirectionPartition 3 := by
  classical
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks12_0
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [blocks12_0]
  · simp [blocks12_0]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant8d7da32f12d121ebaa3ad3fc6d5cefa3904d6c3401fddc7c5ed5ea27cfded8a6.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b95a097c49ba15fe7737101ef1fb3b949f5f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
