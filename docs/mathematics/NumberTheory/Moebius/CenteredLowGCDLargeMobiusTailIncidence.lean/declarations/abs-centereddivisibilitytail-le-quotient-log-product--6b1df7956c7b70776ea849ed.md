# abs_centeredDivisibilityTail_le_quotient_log_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d68cb023-cebb-d41a-7442-85151c9bb00f",
  "kind": "theorem",
  "lexical_name": "abs_centeredDivisibilityTail_le_quotient_log_product",
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
  "slug": "abs-centereddivisibilitytail-le-quotient-log-product--6b1df7956c7b70776ea849ed",
  "source": {
    "blob": "8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 246,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1df7956c7b70776ea849ed7dfbd7e41d5e0a6385486de8b22524b72fa07660",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d68cb023-cebb-d41a-7442-85151c9bb00f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_centeredDivisibilityTail_le_quotient_log_product
    {X r : ℕ}
    (hX : 1 ≤ X)
    (hrmem : r ∈ modulusIndexSet X)
    (hr : 1 < r)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    |centeredDivisibilityTail X w r| ≤
      ((4 * X / r : ℕ) : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) := by
  let K : ℕ := 4 * X / r
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  have hrI := Finset.mem_Icc.mp hrmem
  have hrpos : 0 < r := lt_trans Nat.zero_lt_one hr
  have hK : 1 ≤ K := by
    unfold K
    exact (Nat.one_le_div_iff hrpos).2 hrI.2
  have hKle : K ≤ 4 * X := by
    unfold K
    exact Nat.div_le_self _ _
  have hlogKnonneg : 0 ≤ Real.log (K : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hK)
  have hlogKle : Real.log (K : ℝ) ≤ L := by
    unfold L
    exact Real.log_le_log
      (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hK))
      (by exact_mod_cast hKle)
  have hLnonneg : 0 ≤ L := by
    unfold L
    exact Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hmass :=
    positiveDivisorIncidenceMass_le (B := K) hK
  calc
    |centeredDivisibilityTail X w r| ≤
        positiveDivisorIncidenceMass K * L := by
      simpa [K, L] using
        abs_centeredDivisibilityTail_le_incidenceMass_mul_log
          hX hr hw
    _ ≤ ((K : ℝ) * (1 + Real.log (K : ℝ))) * L := by
      exact mul_le_mul_of_nonneg_right hmass hLnonneg
    _ ≤ ((K : ℝ) * (1 + L)) * L := by
      gcongr
    _ = ((4 * X / r : ℕ) : ℝ) * (1 + L) * L := by
      simp [K]
    _ = ((4 * X / r : ℕ) : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) := by
      rfl

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
