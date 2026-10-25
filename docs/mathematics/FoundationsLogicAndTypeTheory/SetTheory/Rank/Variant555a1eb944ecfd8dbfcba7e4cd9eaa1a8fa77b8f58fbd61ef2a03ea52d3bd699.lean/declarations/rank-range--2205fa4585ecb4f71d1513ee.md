# rank_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72d6964e-b1fc-ef85-0feb-65fb45528eab",
  "kind": "theorem",
  "lexical_name": "rank_range",
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
  "slug": "rank-range--2205fa4585ecb4f71d1513ee",
  "source": {
    "blob": "682c95a6f443d7e949b76252a794985806cc764c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2205fa4585ecb4f71d1513ee2b45cb4eeeff38859789dcdc440817cfa127ae72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72d6964e-b1fc-ef85-0feb-65fb45528eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_range {α : Type*} [Small.{u} α] (f : α → ZFSet.{u}) :
    rank (range f) = ⨆ i, succ (rank (f i)) := by
  apply (Ordinal.iSup_le _).antisymm'
  · simpa [rank_le_iff, ← add_one_le_iff] using Ordinal.le_iSup _
  · simp [rank_lt_of_mem]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682c95a6f443d7e949b76252a794985806cc764c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
