# poleRemovedLFunction_zero_iff_LFunction_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377eab4d5de0f5d158b9c3d8f2fec3b50f10c967",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfdbbf4b-c740-a8b8-636f-c596c4821886",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3af40711-14c9-d92b-d0d4-71704436d36f",
  "kind": "theorem",
  "lexical_name": "poleRemovedLFunction_zero_iff_LFunction_zero",
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
  "slug": "poleremovedlfunction-zero-iff-lfunction-zero--70a5aa73d06782983f2956a5",
  "source": {
    "blob": "377eab4d5de0f5d158b9c3d8f2fec3b50f10c967",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a5aa73d06782983f2956a563faf56228b52183d5d728db60abf83607e5d05a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3af40711-14c9-d92b-d0d4-71704436d36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleRemovedLFunction_zero_iff_LFunction_zero
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) {s : ℂ}
    (hs : s ≠ 1) :
    poleRemovedLFunction chi s = 0 ↔
      DirichletCharacter.LFunction chi s = 0 := by
  classical
  by_cases hchi : chi = 1
  · subst chi
    rw [poleRemovedLFunction_one]
    simp only [DirichletCharacter.LFunctionTrivChar₁,
      Function.update_of_ne hs]
    rw [mul_eq_zero]
    exact or_iff_right (sub_ne_zero.mpr hs)
  · rw [poleRemovedLFunction_eq_LFunction_of_ne_one hchi]

/-- The Euler-product nonvanishing region also supplies a base point for the
pole-removed function. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377eab4d5de0f5d158b9c3d8f2fec3b50f10c967` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
