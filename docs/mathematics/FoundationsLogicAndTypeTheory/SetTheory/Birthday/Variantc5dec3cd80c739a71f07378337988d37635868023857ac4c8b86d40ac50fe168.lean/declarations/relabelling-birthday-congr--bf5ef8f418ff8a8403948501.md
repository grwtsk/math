# Relabelling.birthday_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb057afddd5cdd4e8841a02f56457f9268f9fadb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec545999-9a24-8bc9-17d7-f2f84ed40bb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4527af8-5fa8-13e6-5fd2-64370c9e701b",
  "kind": "theorem",
  "lexical_name": "Relabelling.birthday_congr",
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
  "slug": "relabelling-birthday-congr--bf5ef8f418ff8a8403948501",
  "source": {
    "blob": "fb057afddd5cdd4e8841a02f56457f9268f9fadb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf5ef8f418ff8a84039485011c784dfb1d439f1952ef4fb84be7055a9f7332e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4527af8-5fa8-13e6-5fd2-64370c9e701b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Relabelling.birthday_congr : ∀ {x y : PGame.{u}}, x ≡r y → birthday x = birthday y
  | ⟨xl, xr, xL, xR⟩, ⟨yl, yr, yL, yR⟩, r => by
    unfold birthday
    congr 1
    all_goals
      apply lsub_eq_of_range_eq.{u, u, u}
      ext i; constructor
    all_goals rintro ⟨j, rfl⟩
    · exact ⟨_, (r.moveLeft j).birthday_congr.symm⟩
    · exact ⟨_, (r.moveLeftSymm j).birthday_congr⟩
    · exact ⟨_, (r.moveRight j).birthday_congr.symm⟩
    · exact ⟨_, (r.moveRightSymm j).birthday_congr⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb057afddd5cdd4e8841a02f56457f9268f9fadb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
