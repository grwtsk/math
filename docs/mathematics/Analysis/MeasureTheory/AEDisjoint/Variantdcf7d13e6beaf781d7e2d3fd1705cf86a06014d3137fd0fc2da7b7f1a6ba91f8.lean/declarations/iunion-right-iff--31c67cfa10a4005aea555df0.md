# iUnion_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f30c978-b0f3-7b15-f574-147449fb1604",
  "kind": "theorem",
  "lexical_name": "iUnion_right_iff",
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
  "slug": "iunion-right-iff--31c67cfa10a4005aea555df0",
  "source": {
    "blob": "db3662ff9c0c065a326d50fb95489644bdedd6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 93,
    "path": "GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31c67cfa10a4005aea555df0cde9ec08b8e5df6675f4f5e37c7e44580e3edb64",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f30c978-b0f3-7b15-f574-147449fb1604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_right_iff {ι : Sort*} [Countable ι] {t : ι → Set α} :
    AEDisjoint μ s (⋃ i, t i) ↔ ∀ i, AEDisjoint μ s (t i) := by
  simp only [AEDisjoint, inter_iUnion, measure_iUnion_null_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variantdcf7d13e6beaf781d7e2d3fd1705cf86a06014d3137fd0fc2da7b7f1a6ba91f8.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db3662ff9c0c065a326d50fb95489644bdedd6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
