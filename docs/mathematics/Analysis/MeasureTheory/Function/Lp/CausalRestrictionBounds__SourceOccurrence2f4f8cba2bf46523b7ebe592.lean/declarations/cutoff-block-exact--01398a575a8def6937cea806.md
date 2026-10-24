# cutoff_block_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c83c17b74b01115b239801fcb180c5c5b5ab42d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e91c1310-5a47-3b70-af0a-0926c1670641",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "8c83c17b74b01115b239801fcb180c5c5b5ab42d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc315de6-d414-52e8-e227-2e6fb8ac6bf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a6ff03c-e061-800d-8ff9-883e96946f5f",
  "kind": "theorem",
  "lexical_name": "cutoff_block_exact",
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
  "slug": "cutoff-block-exact--01398a575a8def6937cea806",
  "source": {
    "blob": "8c83c17b74b01115b239801fcb180c5c5b5ab42d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01398a575a8def6937cea806421f42c760647a445f2d9bb5717434be0b195961",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a6ff03c-e061-800d-8ff9-883e96946f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoff_block_exact (P B : Finset ℕ) (T : ℝ) (hB : ∀ p ∈ B, Nat.Prime p) :
    PPNCP04.restrict T (blockAction B (PPNCP04.restrict T (PPNCP04.primeState P))) =
      PPNCP04.restrict T (blockAction B (PPNCP04.primeState P)) := by
  have hd : ∀ p ∈ B.toList, 0 ≤ ASBNP04.FiniteProduct.primeDelay p := by
    intro p hp
    exact ASBNP04.FiniteProduct.primeDelay_nonneg (hB p (Finset.mem_toList.mp hp))
  exact ASBNP04.FiniteProduct.restrict_cascade T _ _ B.toList hd (PPNCP04.primeState P)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrence2f4f8cba2bf46523b7ebe592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c83c17b74b01115b239801fcb180c5c5b5ab42d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
