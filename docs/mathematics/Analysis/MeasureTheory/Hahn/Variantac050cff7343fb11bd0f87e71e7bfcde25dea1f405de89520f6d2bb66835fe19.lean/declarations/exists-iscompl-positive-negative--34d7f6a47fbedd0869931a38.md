# exists_isCompl_positive_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "927d111e53492a40ba554a23b656cc771ec2228b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df10c0fb-983d-df2f-fc67-7953ef83c98e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d57b947-bf6c-003f-4895-a2af5e71eadf",
  "kind": "theorem",
  "lexical_name": "exists_isCompl_positive_negative",
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
  "slug": "exists-iscompl-positive-negative--34d7f6a47fbedd0869931a38",
  "source": {
    "blob": "927d111e53492a40ba554a23b656cc771ec2228b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 409,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34d7f6a47fbedd0869931a380532abe3767f4df3cfcc29337a9e1d52a419edd3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d57b947-bf6c-003f-4895-a2af5e71eadf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isCompl_positive_negative (s : SignedMeasure α) :
    ∃ i j : Set α, MeasurableSet i ∧ 0 ≤[i] s ∧ MeasurableSet j ∧ s ≤[j] 0 ∧ IsCompl i j :=
  let ⟨i, hi₁, hi₂, hi₃⟩ := exists_compl_positive_negative s
  ⟨i, iᶜ, hi₁, hi₂, hi₁.compl, hi₃, isCompl_compl⟩

open scoped symmDiff in
/-- The symmetric difference of two Hahn decompositions has measure zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `927d111e53492a40ba554a23b656cc771ec2228b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
