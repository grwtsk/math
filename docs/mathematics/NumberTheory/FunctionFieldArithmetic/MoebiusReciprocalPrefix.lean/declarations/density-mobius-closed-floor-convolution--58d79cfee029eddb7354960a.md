# density_mobius_closed_floor_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c33d3857-856b-3a37-c3e1-0085a11d854e",
  "kind": "theorem",
  "lexical_name": "density_mobius_closed_floor_convolution",
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
  "slug": "density-mobius-closed-floor-convolution--58d79cfee029eddb7354960a",
  "source": {
    "blob": "0ec442b10b1903350226742519bf17305d658ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 30,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58d79cfee029eddb7354960a3999a1faaa48a803ecb123fd72a096c2114b8caa",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c33d3857-856b-3a37-c3e1-0085a11d854e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_mobius_closed_floor_convolution {x : ℝ} (hx : 1 ≤ x) :
    (∑ n ∈ densityClosedInventory (Real.log x),
      moebiusReal n * (⌊x / (n : ℝ)⌋₊ : ℝ)) = 1 := by
  classical
  have hx0 : 0 < x := by linarith
  have hxlog : 0 ≤ Real.log x := Real.log_nonneg hx
  have h1 := density_closed_inventory_one_of_nonneg hxlog
  have H := density_closed_convolution_regroup (fun k _ ↦ moebiusReal k) (Real.log x)
  have hleft : (∑ q ∈ densityClosedInventory (Real.log x),
      ∑ k ∈ q.divisors, moebiusReal k) = 1 := by
    simp_rw [density_moebius_divisor_sum]
    simp [h1]
  rw [hleft] at H
  rw [H]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (Finset.mem_Icc.mp hn).1
  have he : Real.exp (Real.log x - Real.log n) = x / n := by
    rw [Real.exp_sub, Real.exp_log hx0, Real.exp_log hnpos]
  simp [densityClosedInventory, he, Nat.card_Icc, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec442b10b1903350226742519bf17305d658ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
