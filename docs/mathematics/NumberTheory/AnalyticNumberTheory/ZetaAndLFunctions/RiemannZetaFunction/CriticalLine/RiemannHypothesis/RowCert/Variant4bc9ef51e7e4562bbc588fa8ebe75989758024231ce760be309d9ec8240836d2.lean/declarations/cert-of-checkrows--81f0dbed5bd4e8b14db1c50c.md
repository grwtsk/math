# cert_of_checkRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14e0cdf58aef84f0eee74e4f54275339f5fd3d30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39f7a7ee-73fc-9d7d-72d8-5750be07d402",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eff10260-3ad0-8398-e486-d59b6727d497",
  "kind": "theorem",
  "lexical_name": "cert_of_checkRows",
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
  "slug": "cert-of-checkrows--81f0dbed5bd4e8b14db1c50c",
  "source": {
    "blob": "14e0cdf58aef84f0eee74e4f54275339f5fd3d30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81f0dbed5bd4e8b14db1c50c173d85d14b0e0f948bf6346bf92029663defdd07",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff10260-3ad0-8398-e486-d59b6727d497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cert_of_checkRows (d : RowCertData) (hc : checkRows d = true) (S : ℕ → ℝ) (hS : EnclOK d.K S 0 d.encl) :
    0 < d.N ∧ NearCUE S d.N ((d.tn : ℝ) / d.td) ∧ |Dfun (massOf S d.N) d.N 1| ≤ (d.dn : ℝ) / d.dd := by
  simp only [checkRows, Bool.and_eq_true, decide_eq_true_eq] at hc
  obtain ⟨⟨⟨⟨⟨⟨⟨hN, hK⟩, htd⟩, hdd⟩, hlen⟩, hrows⟩, hD1lo⟩, hD1hi⟩ := hc
  refine ⟨hN, ?_, ?_⟩
  · intro j hj1 hjN
    exact rows_sound hK htd d.encl 0 hrows hS j (by omega) (by rw [hlen]; omega) hjN
  · have hNr : (0 : ℝ) < d.N := by exact_mod_cast hN
    have hKr : (0 : ℝ) < d.K := by exact_mod_cast hK
    have hddr : (0 : ℝ) < d.dd := by exact_mod_cast hdd
    obtain ⟨hlo, hhi⟩ := sums_sound d.encl 0 hS
    rw [hlen] at hlo hhi
    have eT : ∑ i ∈ Finset.range d.N, S (0 + i + 1) = T S d.N := by simp [T]
    rw [eT] at hlo hhi
    rw [Dfun_one hN, Csum_massOf]
    have hD1lo' : |2 * (sumLo d.encl : ℝ) - (d.K : ℝ) * d.N| * d.dd ≤ d.dn * (2 * (d.K : ℝ) * d.N) := by exact_mod_cast hD1lo
    have hD1hi' : |2 * (sumHi d.encl : ℝ) - (d.K : ℝ) * d.N| * d.dd ≤ d.dn * (2 * (d.K : ℝ) * d.N) := by exact_mod_cast hD1hi
    have e1 : T S d.N / d.N - 1 / 2 = (2 * (d.K : ℝ) * T S d.N - d.K * d.N) / (2 * (d.K : ℝ) * d.N) := by
      field_simp
    rw [e1, abs_div, abs_of_pos (by positivity : (0:ℝ) < 2 * (d.K : ℝ) * d.N), div_le_div_iff₀ (by positivity) hddr]
    have hm : |2 * (d.K : ℝ) * T S d.N - d.K * d.N|
        ≤ max |2 * (sumLo d.encl : ℝ) - (d.K : ℝ) * d.N| |2 * (sumHi d.encl : ℝ) - (d.K : ℝ) * d.N| :=
      abs_le_max_abs_abs (by linarith) (by linarith)
    calc |2 * (d.K : ℝ) * T S d.N - d.K * d.N| * d.dd
        ≤ max |2 * (sumLo d.encl : ℝ) - (d.K : ℝ) * d.N| |2 * (sumHi d.encl : ℝ) - (d.K : ℝ) * d.N| * d.dd := by gcongr
      _ ≤ d.dn * (2 * (d.K : ℝ) * d.N) := by
          rw [max_mul_of_nonneg _ _ hddr.le]; exact max_le hD1lo' hD1hi'

end Sound

end PairCeiling
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RowCert/Variant4bc9ef51e7e4562bbc588fa8ebe75989758024231ce760be309d9ec8240836d2.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14e0cdf58aef84f0eee74e4f54275339f5fd3d30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
