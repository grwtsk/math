# perronTerm_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b69a3634-a0a0-2107-aa60-94cec31eef59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3aee3ab1-d5ed-f848-1add-5f9cc8d61994",
  "kind": "theorem",
  "lexical_name": "perronTerm_integral",
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
  "slug": "perronterm-integral--a8cd42cf9dedbcd42748a657",
  "source": {
    "blob": "ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8cd42cf9dedbcd42748a6570bba3c1ad2552b1b544ea6c0034b3ba722f9b058",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aee3ab1-d5ed-f848-1add-5f9cc8d61994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perronTerm_integral (c x : ℝ) (hc : 0 < c) (hx : 0 < x)
    (n : ℕ) (hn : 0 < n) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronTerm c x n t) =
      if (n : ℝ) < x then
        ((ArithmeticFunction.moebius n : ℂ) / (n : ℂ)) * (Real.log (x / (n : ℝ)) : ℂ)
      else 0 := by
  simp only [perronTerm_ratio c x hx n hn, integral_const_mul, ← mul_smul_comm]
  rw [elementary_perron_ratio c x (n : ℝ) hc hx (Nat.cast_pos.mpr hn)]
  split_ifs <;> simp

/-- The genuinely convergent initial-line Perron integral equals the original closed-right
logarithmic Möbius normalization; the endpoint coefficient vanishes exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
