# normalized_bounds_of_Eψ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c4b7e0-d0cf-78f1-f232-9da05d64a00c",
  "kind": "lemma",
  "lexical_name": "normalized_bounds_of_Eψ",
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
  "slug": "normalized-bounds-of-e--d2a4b9e08dcc5bd0f5246889",
  "source": {
    "blob": "d46da42816612559ae96b5220d4acee7d2e1f8bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 213,
    "path": "GRWTSK/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a4b9e08dcc5bd0f5246889fc85d582ecbda8d07b577c354bd9ff1ddec1425a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c4b7e0-d0cf-78f1-f232-9da05d64a00c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma normalized_bounds_of_Eψ {t K : ℝ} (ht : 0 < t)
    (h : Eψ t ≤ K / sqrt t) :
    -K ≤ (t - ψ t) / sqrt t ∧ (t - ψ t) / sqrt t ≤ K := by
  have hsqrt_pos : 0 < sqrt t := Real.sqrt_pos.mpr ht
  have hdiv_sqrt : t / sqrt t = sqrt t := by
    rw [div_eq_iff hsqrt_pos.ne']
    rw [← sq, Real.sq_sqrt ht.le]
  have h_abs : |ψ t - t| ≤ K * sqrt t := by
    change |ψ t - t| / t ≤ K / sqrt t at h
    have hmul := (div_le_iff₀ ht).mp h
    calc
      |ψ t - t| ≤ (K / sqrt t) * t := hmul
      _ = K * sqrt t := by
        calc
          (K / sqrt t) * t = K * (t / sqrt t) := by ring
          _ = K * sqrt t := by rw [hdiv_sqrt]
  have h_abs' : |t - ψ t| ≤ K * sqrt t := by
    simpa [abs_sub_comm] using h_abs
  constructor
  · rw [le_div_iff₀ hsqrt_pos]
    nlinarith [(abs_le.mp h_abs').1]
  · rw [div_le_iff₀ hsqrt_pos]
    nlinarith [(abs_le.mp h_abs').2]

@[blueprint
  "buthe-theorem-2a-normalized"
  (title := "Buthe Theorem 2(a), normalized form")
  (statement := /-- Büthe, arXiv:1511.02032v2, Theorem 2(a), implies
    $-0.94 \leq (t-\psi(t))/\sqrt{t} \leq 0.94$ for
    $100 \leq t \leq 10^{19}$. -/)
  (proof := /-- Convert the absolute-error form in
    Theorem \ref{buthe-theorem-2a} to two-sided normalized bounds. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46da42816612559ae96b5220d4acee7d2e1f8bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
