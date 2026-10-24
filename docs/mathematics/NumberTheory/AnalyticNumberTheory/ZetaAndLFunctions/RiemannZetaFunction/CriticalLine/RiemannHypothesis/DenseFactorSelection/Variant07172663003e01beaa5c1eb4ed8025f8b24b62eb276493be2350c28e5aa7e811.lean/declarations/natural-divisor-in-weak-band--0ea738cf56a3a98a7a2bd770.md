# natural_divisor_in_weak_band

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e60e3c11-26c8-ed1e-9e48-4431c3608361",
  "kind": "theorem",
  "lexical_name": "natural_divisor_in_weak_band",
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
  "slug": "natural-divisor-in-weak-band--0ea738cf56a3a98a7a2bd770",
  "source": {
    "blob": "ab7778bcab7ead613201c46c42fddac3b37f7981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea738cf56a3a98a7a2bd77091de2300fb208531f6aba07de854b4b48f9a5b53",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e60e3c11-26c8-ed1e-9e48-4431c3608361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natural_divisor_in_weak_band (xs : List ℕ) {Y R : ℝ} (hY : 1 ≤ Y)
    (hf : ∀ a ∈ xs, 0 < a ∧ (a : ℝ) ≤ Y) (hR : 1 ≤ R) (hfull : R ≤ (xs.prod : ℝ)) :
    ∃ d : ℕ, d ∣ xs.prod ∧ R / Y ≤ d ∧ (d : ℝ) ≤ R := by
  have hfreal : ∀ a ∈ xs.map (fun n : ℕ => (n : ℝ)), 0 < a ∧ a ≤ Y := by
    intro a ha
    obtain ⟨n, hn, rfl⟩ := List.mem_map.mp ha
    exact ⟨by exact_mod_cast (hf n hn).1, (hf n hn).2⟩
  have hprod : (xs.map (fun n : ℕ => (n : ℝ))).prod = (xs.prod : ℝ) := by norm_cast
  obtain ⟨k, _hk, hlo, hhi⟩ := real_prefix_in_weak_band
    (xs.map (fun n : ℕ => (n : ℝ))) hY hfreal hR (by simpa only [hprod] using hfull)
  have htake : ((xs.take k).map (fun n : ℕ => (n : ℝ))).prod = ((xs.take k).prod : ℝ) :=
    by norm_cast
  refine ⟨(xs.take k).prod, natural_prefix_divides xs k, ?_, ?_⟩
  · simpa only [← List.map_take, htake] using hlo
  · simpa only [← List.map_take, htake] using hhi

end
end GRWTSK.RiemannHypothesis.Conversation.DenseFactorSelection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DenseFactorSelection/Variant07172663003e01beaa5c1eb4ed8025f8b24b62eb276493be2350c28e5aa7e811.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab7778bcab7ead613201c46c42fddac3b37f7981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
