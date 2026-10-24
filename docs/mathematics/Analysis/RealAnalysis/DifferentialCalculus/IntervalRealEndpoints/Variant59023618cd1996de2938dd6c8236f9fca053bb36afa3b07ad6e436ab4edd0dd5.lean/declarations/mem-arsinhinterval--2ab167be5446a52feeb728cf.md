# mem_arsinhInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28b572b0cc4a3448c2243660b9aca79c59b34ff8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80b823bb-58e4-59c4-fecc-abfb22ccb404",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61f7c642-8616-dd5e-0164-e9badb44352e",
  "kind": "theorem",
  "lexical_name": "mem_arsinhInterval",
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
  "slug": "mem-arsinhinterval--2ab167be5446a52feeb728cf",
  "source": {
    "blob": "28b572b0cc4a3448c2243660b9aca79c59b34ff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 285,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab167be5446a52feeb728cfd0a1224668760bb38ed7bb3bbae622adaf41842b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f7c642-8616-dd5e-0164-e9badb44352e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_arsinhInterval {x : ℝ} {I : IntervalReal} (hx : x ∈ I) :
    Real.arsinh x ∈ arsinhInterval I := by
  unfold arsinhInterval
  simp only [mem_def]
  have habs : |Real.arsinh x| ≤ max (|I.lo|) (|I.hi|) + 1 := by
    have h1 : |Real.arsinh x| ≤ |x| := abs_arsinh_le_abs x
    have h2 : |x| ≤ max (|I.lo|) (|I.hi|) := by
      simp only [IntervalReal.mem_def] at hx
      rcases le_or_gt x 0 with hxneg | hxpos
      · rw [abs_of_nonpos hxneg]
        calc -x ≤ -I.lo := by linarith [hx.1]
          _ ≤ |I.lo| := neg_le_abs I.lo
          _ ≤ max (|I.lo|) (|I.hi|) := le_max_left _ _
      · rw [abs_of_pos hxpos]
        calc x ≤ I.hi := hx.2
          _ ≤ |I.hi| := le_abs_self I.hi
          _ ≤ max (|I.lo|) (|I.hi|) := le_max_right _ _
    linarith
  constructor
  · have := neg_abs_le (Real.arsinh x)
    linarith
  · have := le_abs_self (Real.arsinh x)
    linarith

/-! ### Hyperbolic function intervals -/

/-- Interval bound for sinh.
    Since sinh is strictly monotonic increasing, sinh([a,b]) = [sinh(a), sinh(b)]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b572b0cc4a3448c2243660b9aca79c59b34ff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
