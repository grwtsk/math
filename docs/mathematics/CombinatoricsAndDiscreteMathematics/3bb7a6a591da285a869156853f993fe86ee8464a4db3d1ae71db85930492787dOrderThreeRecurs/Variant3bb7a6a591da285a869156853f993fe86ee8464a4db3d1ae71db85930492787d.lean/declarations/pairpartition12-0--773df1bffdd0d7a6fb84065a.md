# pairPartition12_0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed3ab27be3d38d2dd8127696d03fc46aad535855802b97f8ec6e0f4aca49f3c8",
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
  "slug": "pairpartition12-0--773df1bffdd0d7a6fb84065a",
  "source": {
    "blob": "0211d45af56e4d0fbd2497fa0055611f2c45aa7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:773df1bffdd0d7a6fb84065a4c02a5c8bdbeae67fbe948f76c7925602708a875",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed3ab27be3d38d2dd8127696d03fc46aad535855802b97f8ec6e0f4aca49f3c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pairPartition12_0 : DirectionPartition 3 := by
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks12_0
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [ExistsUnique, blocks12_0]
  · decide

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0211d45af56e4d0fbd2497fa0055611f2c45aa7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
