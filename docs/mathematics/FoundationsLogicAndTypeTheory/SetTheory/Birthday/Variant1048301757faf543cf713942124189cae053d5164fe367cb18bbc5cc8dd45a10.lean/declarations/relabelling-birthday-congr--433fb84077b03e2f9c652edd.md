# Relabelling.birthday_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89943af2-c763-08d6-23f8-78696c8863f3",
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
  "slug": "relabelling-birthday-congr--433fb84077b03e2f9c652edd",
  "source": {
    "blob": "22058a51d76ae73bde1c9752169418661b1751f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433fb84077b03e2f9c652eddbb7b0840e89e5f9cdb658a15781ada11451bd194",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89943af2-c763-08d6-23f8-78696c8863f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22058a51d76ae73bde1c9752169418661b1751f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
