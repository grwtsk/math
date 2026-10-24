# eGen_block_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:821869a8-bab4-704b-d5ba-d9bf2a7f5947",
  "kind": "lemma",
  "lexical_name": "eGen_block_eq",
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
  "slug": "egen-block-eq--bfc9213a8028429dfc7002d7",
  "source": {
    "blob": "c44add26a7f407e151ee79ab0dff13008593abc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfc9213a8028429dfc7002d759632063523a987d43329b9e44806e121bf9cb22",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:821869a8-bab4-704b-d5ba-d9bf2a7f5947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eGen_block_eq (T δ : ℝ) (N n : ℕ) :
    ∑ j ∈ Finset.range (Ω N), ((Lb T)⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ)
        * ((((n + j).choose j : ℕ) : ℂ) * (-(δ : ℂ) / Lb T) ^ n)
      = eGen Lb T n N * (δ : ℂ) ^ n := by
  unfold eGen
  rw [Finset.sum_mul]
  refine Finset.sum_congr rfl fun j _ => ?_
  have hr : (-(δ : ℂ) / Lb T) ^ n = (-1) ^ n * (δ : ℂ) ^ n * ((Lb T)⁻¹) ^ n := by
    rw [show (-(δ : ℂ) / Lb T) = (-1) * ((δ : ℂ) * (Lb T)⁻¹) by ring, mul_pow, mul_pow, mul_assoc]
  rw [hr]
  ring

/-- **the δ-expansion**: for l(T) ≥ 2 and 0 ≤ δ ≤ 1/2,
C(N; L_T + δ) − C(N; L_T) = Σ_{r≥1} e_r(N) δ^r. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44add26a7f407e151ee79ab0dff13008593abc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
