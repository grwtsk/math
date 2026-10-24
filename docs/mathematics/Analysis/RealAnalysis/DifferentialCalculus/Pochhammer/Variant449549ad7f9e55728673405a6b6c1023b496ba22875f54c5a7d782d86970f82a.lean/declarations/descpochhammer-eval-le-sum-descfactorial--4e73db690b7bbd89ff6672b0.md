# descPochhammer_eval_le_sum_descFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:733909cf-c796-f5b7-2f7b-4cd03cbc854e",
  "kind": "theorem",
  "lexical_name": "descPochhammer_eval_le_sum_descFactorial",
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
  "slug": "descpochhammer-eval-le-sum-descfactorial--4e73db690b7bbd89ff6672b0",
  "source": {
    "blob": "f7488a457bd6318671c784147c94501fb74ace81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e73db690b7bbd89ff6672b0ab4d5c2a310013306b89d86fa9b54aecf561a4ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:733909cf-c796-f5b7-2f7b-4cd03cbc854e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descPochhammer_eval_le_sum_descFactorial
    (hn : n ≠ 0) {ι : Type*} {t : Finset ι} (p : ι → ℕ) (w : ι → ℝ)
    (h₀ : ∀ i ∈ t, 0 ≤ w i) (h₁ : ∑ i ∈ t, w i = 1) (h_avg : n - 1 ≤ ∑ i ∈ t, w i * p i) :
    (descPochhammer ℝ n).eval (∑ i ∈ t, w i * p i)
      ≤ ∑ i ∈ t, w i * (p i).descFactorial n := by
  let f : ℝ → ℝ := (Set.Ici (n - 1 : ℝ)).piecewise (descPochhammer ℝ n).eval 0
  suffices h_jensen : f (∑ i ∈ t, w i • p i) ≤ ∑ i ∈ t, w i • f (p i) by
    simpa only [smul_eq_mul, f, Set.piecewise_eq_of_mem (Set.Ici (n - 1 : ℝ)) _ _ h_avg,
      piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial] using h_jensen
  exact ConvexOn.map_sum_le (convexOn_piecewise_Ici_descPochhammer_eval_zero hn) h₀ h₁ (by simp)

/-- Special case of **Jensen's inequality** for `Nat.choose`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7488a457bd6318671c784147c94501fb74ace81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
