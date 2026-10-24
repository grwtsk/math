# fejer_kernel_uniform_limit_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80cd48e4-3177-79c7-b654-cabbc8014f75",
  "kind": "theorem",
  "lexical_name": "fejer_kernel_uniform_limit_zero",
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
  "slug": "fejer-kernel-uniform-limit-zero--8e34b571433cabd154a99572",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 462,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e34b571433cabd154a99572da68000c5547efe957fe38ef4aeb4ad74a75a718",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80cd48e4-3177-79c7-b654-cabbc8014f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_kernel_uniform_limit_zero (δ : ℝ) (hδ_pos : 0 < δ) (hδ_le : δ ≤ Real.pi) :
    Filter.Tendsto (fun n => ⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t) Filter.atTop (nhds 0) := by
      -- By Lemma~\ref{lem:A.37}, we have the bound $K_n(t) \le \frac{\pi^2}{2(n+1)t^2}$ for $0 < t \le \pi$.
      have h_bound : ∀ n t, 0 < t → t ≤ Real.pi → (fejer_kernel n t) ≤ (Real.pi^2) / (2 * (n + 1) * t^2) := by
        exact?;
      -- For $t \in [\delta, \pi]$, we have $t \ge \delta$, so $t^2 \ge \delta^2$, and thus $\frac{1}{t^2} \le \frac{1}{\delta^2}$.
      have h_bound_delta : ∀ n, ⨆ t ∈ Set.Icc δ Real.pi, fejer_kernel n t ≤ (Real.pi^2) / (2 * (n + 1) * δ^2) := by
        intro n
        have h_sup_le : ∀ t ∈ Set.Icc δ Real.pi, fejer_kernel n t ≤ (Real.pi^2) / (2 * (n + 1) * δ^2) := by
          exact fun t ht => le_trans ( h_bound n t ( by linarith [ ht.1 ] ) ( by linarith [ ht.2 ] ) ) ( by gcongr ; linarith [ ht.1, ht.2 ] );
        field_simp;
        refine' le_trans ( mul_le_mul_of_nonneg_right ( mul_le_mul_of_nonneg_right ( mul_le_mul_of_nonneg_right ( ciSup_le fun t => _ ) zero_le_two ) ( by positivity ) ) ( by positivity ) ) _;
        exact Real.pi ^ 2 / ( 2 * ( n + 1 ) * δ ^ 2 );
        · field_simp;
          by_cases h : t ∈ Set.Icc δ Real.pi <;> simp_all +decide [ mul_assoc ];
          · exact le_trans ( mul_le_mul_of_nonneg_right ( h_sup_le t h.1 h.2 ) ( by positivity ) ) ( by rw [ div_mul_cancel₀ _ ( by positivity ) ] );
          · positivity;
        · field_simp;
          norm_num;
      exact squeeze_zero ( fun n => by exact Real.iSup_nonneg fun _ => Real.iSup_nonneg fun _ => fejer_kernel_nonneg _ _ ) h_bound_delta <| tendsto_const_nhds.div_atTop <| Filter.Tendsto.atTop_mul_const ( by positivity ) <| Filter.Tendsto.const_mul_atTop ( by positivity ) <| Filter.tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop;

/-
Lemma: Continuity on a compact interval implies uniform continuity with respect to small shifts.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
