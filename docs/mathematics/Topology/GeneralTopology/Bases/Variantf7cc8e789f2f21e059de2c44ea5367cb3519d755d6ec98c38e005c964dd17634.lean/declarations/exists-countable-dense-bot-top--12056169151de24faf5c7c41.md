# exists_countable_dense_bot_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddc7f0b27974f7aa68cec5098b525682b845de82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 582,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f40e9a2-2735-72d4-528b-9c8aa90ba8fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f3301f5-6992-5102-6672-18323fa9db5a",
  "kind": "theorem",
  "lexical_name": "exists_countable_dense_bot_top",
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
  "slug": "exists-countable-dense-bot-top--12056169151de24faf5c7c41",
  "source": {
    "blob": "ddc7f0b27974f7aa68cec5098b525682b845de82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 582,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12056169151de24faf5c7c41e57675ab58bd7326b2e8a0d564cd93728134c5dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3301f5-6992-5102-6672-18323fa9db5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_countable_dense_bot_top (α : Type*) [TopologicalSpace α] [SeparableSpace α]
    [PartialOrder α] :
    ∃ s : Set α, s.Countable ∧ Dense s ∧ (∀ x, IsBot x → x ∈ s) ∧ ∀ x, IsTop x → x ∈ s := by
  simpa using dense_univ.exists_countable_dense_subset_bot_top
#align exists_countable_dense_bot_top exists_countable_dense_bot_top

namespace TopologicalSpace

universe u

variable (α : Type u) [t : TopologicalSpace α]

/-- A first-countable space is one in which every point has a
  countable neighborhood basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddc7f0b27974f7aa68cec5098b525682b845de82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
