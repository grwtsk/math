# primeTail_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aba3b8bb-ccc0-61a7-21d7-d9c62154a699",
  "kind": "theorem",
  "lexical_name": "primeTail_square_integrable",
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
  "slug": "primetail-square-integrable--6aa742e87a59319165b4740b",
  "source": {
    "blob": "bcb85000e7df8de54282661104b760a60b626e73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa742e87a59319165b4740b6eaa4374937e5133d147595ce6db93b2af0e1cee",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aba3b8bb-ccc0-61a7-21d7-d9c62154a699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeTail_square_integrable (X : ℕ) :
    Integrable (fun t ↦ (primeTail X t)^2) unitVolume := by
  have hT : MemLp (tailSource X) 2 unitVolume := by
    apply (memLp_two_iff_integrable_sq_norm (tailSource_integrable X).aestronglyMeasurable).2
    simpa only [Real.norm_eq_abs,sq_abs] using tailSource_square_integrable X
  have hP : MemLp (removedTail X) 2 unitVolume := by
    apply (memLp_two_iff_integrable_sq_norm (removedTail_integrable X).aestronglyMeasurable).2
    simpa only [Real.norm_eq_abs,sq_abs] using removedTail_square_integrable X
  have h := hT.sub hP
  have hh := (memLp_two_iff_integrable_sq_norm h.aestronglyMeasurable).1 h
  simpa only [primeTail,Real.norm_eq_abs,sq_abs,Pi.sub_apply] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb85000e7df8de54282661104b760a60b626e73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
