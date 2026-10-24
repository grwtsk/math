# LFunction_zero_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feef12b128697985fc70940b867fa510d02562ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07629c2c-5779-cdfd-acf0-41a215131eac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:553b7faf-7565-b6bd-e112-66cd7a2a9659",
  "kind": "theorem",
  "lexical_name": "LFunction_zero_reflect",
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
  "slug": "lfunction-zero-reflect--f12bf54b48180da756a37238",
  "source": {
    "blob": "feef12b128697985fc70940b867fa510d02562ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f12bf54b48180da756a372383c72f3b0abca053ac566e3b85b605a1481972a3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:553b7faf-7565-b6bd-e112-66cd7a2a9659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LFunction_zero_reflect
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    {s : ℂ} (hs0 : 0 < s.re) (hs1 : s.re < 1)
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ⁻¹ (1 - s) = 0 := by
  have hCompletedZero : canonicalCompletedLFunction χ s = 0 :=
    (canonicalCompletedLFunction_zero_iff_LFunction_zero χ hs0).2 hsZero
  have hFE := canonicalCompletedLFunction_one_sub hPrimitive (1 - s)
  have hProduct :
      (q : ℂ) ^ ((1 - s) - 1 / 2) *
          DirichletCharacter.rootNumber χ *
            canonicalCompletedLFunction χ⁻¹ (1 - s) = 0 := by
    rw [show 1 - (1 - s) = s by ring, hCompletedZero] at hFE
    exact hFE.symm
  have hConductor :
      (q : ℂ) ^ ((1 - s) - 1 / 2) ≠ 0 :=
    Complex.cpow_ne_zero_iff.mpr
      (.inl (Nat.cast_ne_zero.mpr (NeZero.ne q)))
  have hInverseCompleted :
      canonicalCompletedLFunction χ⁻¹ (1 - s) = 0 :=
    (mul_eq_zero.mp hProduct).resolve_left
      (mul_ne_zero hConductor
        (primitive_rootNumber_ne_zero hPrimitive))
  have hOneSubRe : 0 < (1 - s).re := by
    simp only [sub_re, one_re]
    linarith
  exact (canonicalCompletedLFunction_zero_iff_LFunction_zero χ⁻¹
    hOneSubRe).1 hInverseCompleted

/-- The inverse-character reflection is reversible throughout the open
critical strip. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feef12b128697985fc70940b867fa510d02562ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
