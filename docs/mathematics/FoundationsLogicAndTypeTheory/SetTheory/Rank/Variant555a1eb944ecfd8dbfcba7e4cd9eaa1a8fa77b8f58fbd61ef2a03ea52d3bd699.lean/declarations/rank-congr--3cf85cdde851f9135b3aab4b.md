# rank_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4425d2fd-b0cc-46f9-eea1-101ca40cd545",
  "kind": "theorem",
  "lexical_name": "rank_congr",
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
  "slug": "rank-congr--3cf85cdde851f9135b3aab4b",
  "source": {
    "blob": "682c95a6f443d7e949b76252a794985806cc764c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cf85cdde851f9135b3aab4bfe810361cffab6018a767bc86960676329189a8e",
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

Occurrence: `result:4425d2fd-b0cc-46f9-eea1-101ca40cd545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_congr : ∀ {x y : PSet}, Equiv x y → rank x = rank y
  | ⟨_, _⟩, ⟨_, _⟩, ⟨αβ, βα⟩ => by
    apply congr_arg sSup
    ext
    constructor <;> simp only [Set.mem_range, forall_exists_index] <;> intro a h
    · obtain ⟨b, h'⟩ := αβ a
      exists b
      rw [← h, rank_congr h']
    · obtain ⟨b, h'⟩ := βα a
      exists b
      rw [← h, rank_congr h']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant555a1eb944ecfd8dbfcba7e4cd9eaa1a8fa77b8f58fbd61ef2a03ea52d3bd699.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `682c95a6f443d7e949b76252a794985806cc764c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
