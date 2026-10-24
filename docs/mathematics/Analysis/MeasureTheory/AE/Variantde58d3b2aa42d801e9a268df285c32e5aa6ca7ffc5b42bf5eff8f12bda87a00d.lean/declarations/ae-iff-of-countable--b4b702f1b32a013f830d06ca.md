# ae_iff_of_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1802fcab91bae1a8537d57413d45b28628d6d5b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8be2230b-f88a-7f5d-0230-0d81a876d68e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dea33dac-15aa-b18d-1656-1afd1162c3c3",
  "kind": "lemma",
  "lexical_name": "ae_iff_of_countable",
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
  "slug": "ae-iff-of-countable--b4b702f1b32a013f830d06ca",
  "source": {
    "blob": "1802fcab91bae1a8537d57413d45b28628d6d5b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 160,
    "path": "GRWTSK/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4b702f1b32a013f830d06ca6fb2dd579b3497bdc6e3eadfa5be0b40f215061e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea33dac-15aa-b18d-1656-1afd1162c3c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_iff_of_countable [Countable α] {p : α → Prop} : (∀ᵐ x ∂μ, p x) ↔ ∀ x, μ {x} ≠ 0 → p x := by
  rw [ae_iff, measure_null_iff_singleton]
  exacts [forall_congr' fun _ ↦ not_imp_comm, Set.to_countable _]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1802fcab91bae1a8537d57413d45b28628d6d5b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
