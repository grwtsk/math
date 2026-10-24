# canonicalCompletedLFunction_zero_iff_LFunction_zero

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
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:369b8e06-93f5-036a-23c4-6ddcce27fdf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19a00778-aea9-43bb-d5fe-a92da0a3ed69",
  "kind": "theorem",
  "lexical_name": "canonicalCompletedLFunction_zero_iff_LFunction_zero",
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
  "slug": "canonicalcompletedlfunction-zero-iff-lfunction-zero--dbd6d13bdb43b729b0981f6a",
  "source": {
    "blob": "377eab4d5de0f5d158b9c3d8f2fec3b50f10c967",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd6d13bdb43b729b0981f6af7d36d34abd885ff92b8c90a3a68b13c3e7cefcd",
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

Occurrence: `result:19a00778-aea9-43bb-d5fe-a92da0a3ed69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalCompletedLFunction_zero_iff_LFunction_zero
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) {s : ℂ}
    (hs : 0 < s.re) :
    canonicalCompletedLFunction chi s = 0 ↔
      DirichletCharacter.LFunction chi s = 0 := by
  have hs0 : s ≠ 0 := by
    intro h
    subst s
    norm_num at hs
  have hGamma := gammaFactor_ne_zero_of_re_pos chi hs
  rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor
    chi s (Or.inl hs0)]
  simp [hGamma]

/-- The pole-removed L-function uses mathlib's entire trivial-character
regularization and otherwise leaves the analytically continued L-function
unchanged. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377eab4d5de0f5d158b9c3d8f2fec3b50f10c967` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
