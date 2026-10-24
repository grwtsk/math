# hardyW_simple_on_line_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 489,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11996b32-1b01-1c85-9132-fef00924072e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3123665a-02f8-b018-0c4b-46845c7b78ca",
  "kind": "theorem",
  "lexical_name": "hardyW_simple_on_line_flat",
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
  "slug": "hardyw-simple-on-line-flat--c6e81e28712a672f07d277ce",
  "source": {
    "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 489,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6e81e28712a672f07d277cef78f66a4ea5cbfad9f3949bf78875f5d74d98fef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3123665a-02f8-b018-0c4b-46845c7b78ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_simple_on_line_flat :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (0.85838 : ℝ) * (NcountW T (2 * T) : ℝ) ≤ (N0simpleW T (2 * T) : ℝ) ∧
      (0.92919 : ℝ) * (NcountW T (2 * T) : ℝ) ≤ (NdistW T (2 * T) : ℝ) := by
  obtain ⟨lam, hl1, hl2, hc, hcd⟩ := certFlat
  have hl0 : 0 < lam := by linarith
  exact headline_of_strict (N := fun T => (NcountW T (2 * T) : ℝ))
    (lowS := fun T => (N0simpleW T (2 * T) : ℝ)) (lowD := fun T => (NdistW T (2 * T) : ℝ))
    (fun _ => Nat.cast_nonneg _) hc hcd
    (fixedLam_family_W wZerosInStrip_wStripHeight wSeam_wStripHeight wZeros₀_rvm hϱ hl0 hl2
      (windowZeroSide_flat wZeros₀ wZeros₀_rvm (paramsOf ϱ lam) (paramsOf_valid hϱ hl0 hl2.le))
      (coeffMoments_flat_w _ wZeros₀_rvm hϱ hl0 hl2 wCoeffFamily_hyps)
      (traceTransfer_flat_w _ wZeros₀_rvm hϱ hl0 hl2 (wEF_flat hϱ hl0 hl2)))

include hϱ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e977c23ce5839e0cbd49741cf48f80606e3e8071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
