# thmD_dist_abstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f4c561d05d5e2c091254ac15d92baf18b0ab628",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69eb795d5002fe4a2764901d5867a4eb0b84750703888d8e87f7d975351c9b43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f60ed95e-c1db-90b5-936f-252b777c108e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53ba8a20-600e-f1d8-cf76-165e1cf9b1a4",
  "kind": "theorem",
  "lexical_name": "thmD_dist_abstract",
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
  "slug": "thmd-dist-abstract--b6356bf46c726dc984c2cea5",
  "source": {
    "blob": "1f4c561d05d5e2c091254ac15d92baf18b0ab628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 405,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant69eb795d5002fe4a2764901d5867a4eb0b84750703888d8e87f7d975351c9b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6356bf46c726dc984c2cea50d1b21d91f7ef706b3a93a31a3f3575ee46bf48a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant69eb795d5002fe4a2764901d5867a4eb0b84750703888d8e87f7d975351c9b43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53ba8a20-600e-f1d8-cf76-165e1cf9b1a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmD_dist_abstract (Z : ZeroConfig) (H : PaperInputs Z) (P : Params) (hP : P.Valid)
    (hlam : P.lam < 1)
    (aT bT JT trG trG2 : ℝ → ℝ)
    (hTr : TracesBoundsD P aT bT JT trG trG2 (fun T => (Z.N T (2 * T) : ℝ)))
    {c : ℝ} (hc0 : 0 < c)
    (hc : Tendsto (fun T => cRatio (P.lam1 T) (aT T) (bT T) (JT T)) atTop (𝓝 c))
    (ha : ∀ᶠ T in atTop, 1 / 2 ≤ aT T ∧ aT T ≤ 1)
    (hBlock : ∀ᶠ T in atTop, BlockInputs Z (P.atD T) T)
    (θ₀ : ℝ → ℝ) (hTail : ∀ᶠ T in atTop, TailInputs Z (P.atD T) T (θ₀ T))
    (hθ₀ : ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1))
    (hNII : ∃ C : ℝ, ∀ᶠ T in atTop, (NII Z T : ℝ) ≤ C * Real.sqrt T * l T)
    (hGzGp : ∀ᶠ T in atTop, Z.Gz (P.atD T) T = (P.atD T).Gp T)
    (hId : ∀ᶠ T in atTop, (P.atD T).trGtilde T = trG T ∧ (P.atD T).trGtildeSq T = trG2 T ∧
      (P.atD T).a T = aT T) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (c - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.Nd T (2 * T) := by
  obtain ⟨R, hR, hev⟩ := thmD_BC_core Z H P hP hlam aT bT JT trG trG2 hTr hc0 hc ha hBlock θ₀
    hTail hθ₀ hNII hGzGp hId
  exact eps_form_of_isLittleO (err := R) (hev.mono fun T h => h.2)
    (Eventually.of_forall fun T => Nat.cast_nonneg _) hR

end BC

end ThmD
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant69eb795d5002fe4a2764901d5867a4eb0b84750703888d8e87f7d975351c9b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variant69eb795d5002fe4a2764901d5867a4eb0b84750703888d8e87f7d975351c9b43.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f4c561d05d5e2c091254ac15d92baf18b0ab628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
