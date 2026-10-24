# closed_factor_cutoff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52dd2bac-5329-de89-2bd7-e2dea05e786b",
  "kind": "theorem",
  "lexical_name": "closed_factor_cutoff_eq",
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
  "slug": "closed-factor-cutoff-eq--d00f239e8e6b2407b174c79d",
  "source": {
    "blob": "de20f8ead3a0ccddd1d9f995dbf387315aabd11d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d00f239e8e6b2407b174c79d3f66cf6a2dff9b306ae3fc16b3ea3f8be8f406ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52dd2bac-5329-de89-2bd7-e2dea05e786b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_factor_cutoff_eq (x : ℝ) (d : ℕ) (hd : 1 ≤ d) :
    (Icc 1 ⌊x⌋₊).filter (fun m : ℕ ↦ d * m ∈ Icc 1 ⌊x⌋₊) = Icc 1 ⌊x / (d : ℝ)⌋₊ := by
  rw [Nat.floor_div_natCast]
  ext m
  simp only [mem_filter, mem_Icc]
  constructor
  · rintro ⟨⟨hm, _⟩, _, hprod⟩
    exact ⟨hm, (Nat.le_div_iff_mul_le (by omega : 0 < d)).mpr (by simpa [mul_comm] using hprod)⟩
  · rintro ⟨hm, hmd⟩
    have hprod : d * m ≤ ⌊x⌋₊ := by
      have h := (Nat.le_div_iff_mul_le (by omega : 0 < d)).mp hmd
      simpa [mul_comm] using h
    exact ⟨⟨hm, hmd.trans (Nat.div_le_self _ _)⟩, by nlinarith, hprod⟩

/-- The Möbius/log-square prefix retains both positive ranges and every exact real floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de20f8ead3a0ccddd1d9f995dbf387315aabd11d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
