# Integrable.measure_ge_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ad180afca8fb23408d5408050a8965089375ae5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 700,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94a00f78-74ac-8f4a-69d4-3d821f482efc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b6d5abd-f9a4-cbb5-e701-d81d2c2fc2c5",
  "kind": "lemma",
  "lexical_name": "Integrable.measure_ge_lt_top",
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
  "slug": "integrable-measure-ge-lt-top--f0ebb1c65d427262726776f4",
  "source": {
    "blob": "2ad180afca8fb23408d5408050a8965089375ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 700,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0ebb1c65d427262726776f4d2ad9125ed8cbe5bf74ee3f41a256f07e11b2351",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6d5abd-f9a4-cbb5-e701-d81d2c2fc2c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Integrable.measure_ge_lt_top {f : α → β} [Lattice β] [HasSolidNorm β] [AddLeftMono β]
    (hf : Integrable f μ) {ε : β} (ε_pos : 0 < ε) :
    μ {a : α | ε ≤ f a} < ∞ :=
  lt_of_le_of_lt (measure_mono fun x hx => norm_le_norm_of_abs_le_abs <|
    (abs_of_nonneg ε_pos.le).symm ▸ hx.trans (le_abs_self (f x)))
    (hf.measure_norm_ge_lt_top (by positivity [ε_pos.ne']))

/-- If `f` is integrable, then for any `c < 0` the set `{x | f x ≤ c}` has finite
measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad180afca8fb23408d5408050a8965089375ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
