# tendsto_interval_FlineChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2b8da4f4226a668cb8a6102ad529304e7ba7452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af1452cf-a00f-6ddc-299c-bcd8856c3130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3965ff44-8225-f993-fcd6-8f31062d73a5",
  "kind": "theorem",
  "lexical_name": "tendsto_interval_FlineChi",
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
  "slug": "tendsto-interval-flinechi--e3bf2bd594c695ec5817b888",
  "source": {
    "blob": "d2b8da4f4226a668cb8a6102ad529304e7ba7452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3bf2bd594c695ec5817b888b1872ef34dc6f3f71fb6a8dc5f3700e6cf025354",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3965ff44-8225-f993-fcd6-8f31062d73a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_interval_FlineChi (hq : 1 < q) (hprim : χ.IsPrimitive) {k : ℝ → ℂ}
    (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3 / 2)
    {R : ℕ → ℝ} (hR : ∀ j : ℕ, (j : ℝ) ≤ R j) :
    Tendsto (fun j : ℕ => ∫ t in (-R j)..R j, FlineChi χ k c t) atTop
      (𝓝 (∫ t, FlineChi χ k c t)) := by
  have hRtop : Tendsto R atTop atTop := tendsto_atTop_mono hR tendsto_natCast_atTop_atTop
  exact intervalIntegral_tendsto_integral (integrable_FlineChi hq hprim hk hkc hc1 hc2)
    (tendsto_neg_atTop_atBot.comp hRtop) hRtop

/-! ## The assembly -/

/-- **Full-line identity for L(s,χ)** (two-character form). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b8da4f4226a668cb8a6102ad529304e7ba7452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
