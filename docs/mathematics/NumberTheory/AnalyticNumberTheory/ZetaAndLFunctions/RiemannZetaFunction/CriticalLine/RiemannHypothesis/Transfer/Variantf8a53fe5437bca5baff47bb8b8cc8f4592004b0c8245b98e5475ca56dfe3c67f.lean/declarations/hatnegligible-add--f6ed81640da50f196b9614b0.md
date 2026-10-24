# HatNegligible.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2408de95-4c18-8dc5-be82-f61d8f22b17a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9092dc2d-13a3-d4c2-b86f-585a2ce758ae",
  "kind": "theorem",
  "lexical_name": "HatNegligible.add",
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
  "slug": "hatnegligible-add--f6ed81640da50f196b9614b0",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ed81640da50f196b9614b06c3f8a15a76bda8fba741af57ca550aff0e649fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9092dc2d-13a3-d4c2-b86f-585a2ce758ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HatNegligible.add {Z : ZeroConfig} {Pf : ℝ → Params}
    {A B : (T : ℝ) → Matrix (Fin ((Pf T).d T)) (Fin ((Pf T).d T)) ℂ}
    (hA : HatNegligible Z Pf A) (hB : HatNegligible Z Pf B) :
    HatNegligible Z Pf (fun T => A T + B T) := by
  intro η hη
  filter_upwards [hA (η / 2) (by positivity), hB (η / 2) (by positivity)] with T hAT hBT
  have hN : (0:ℝ) ≤ (Z.N T (2 * T) : ℝ) := Nat.cast_nonneg _
  rw [hat_add']
  constructor
  · rw [rtrace_add]
    calc |rtrace ((Pf T).hat T (A T)) + rtrace ((Pf T).hat T (B T))|
        ≤ |rtrace ((Pf T).hat T (A T))| + |rtrace ((Pf T).hat T (B T))| := abs_add_le _ _
      _ ≤ η / 2 * (Z.N T (2 * T) : ℝ) + η / 2 * (Z.N T (2 * T) : ℝ) := add_le_add hAT.1 hBT.1
      _ = η * (Z.N T (2 * T) : ℝ) := by ring
  · have hsN := Real.sqrt_nonneg (Z.N T (2 * T) : ℝ)
    have ha : ‖(Pf T).hat T (A T)‖ ≤ η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
      rw [Assembly.norm_eq_sqrt_frobSq]
      calc Real.sqrt (frobSq ((Pf T).hat T (A T))) ≤ Real.sqrt ((η / 2) ^ 2 * (Z.N T (2 * T) : ℝ)) :=
            Real.sqrt_le_sqrt hAT.2
        _ = η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
            rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]
    have hb : ‖(Pf T).hat T (B T)‖ ≤ η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
      rw [Assembly.norm_eq_sqrt_frobSq]
      calc Real.sqrt (frobSq ((Pf T).hat T (B T))) ≤ Real.sqrt ((η / 2) ^ 2 * (Z.N T (2 * T) : ℝ)) :=
            Real.sqrt_le_sqrt hBT.2
        _ = η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) := by
            rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]
    rw [Assembly.frobSq_eq_norm_sq]
    calc ‖(Pf T).hat T (A T) + (Pf T).hat T (B T)‖ ^ 2
        ≤ (η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) + η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ)) ^ 2 := by
          apply pow_le_pow_left₀ (norm_nonneg _)
          exact (norm_add_le _ _).trans (add_le_add ha hb)
      _ = η ^ 2 * (Z.N T (2 * T) : ℝ) := by
          rw [show η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ) + η / 2 * Real.sqrt (Z.N T (2 * T) : ℝ)
              = η * Real.sqrt (Z.N T (2 * T) : ℝ) by ring, mul_pow, Real.sq_sqrt hN]

/-- a family congruent to a HatNegligible one is HatNegligible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
