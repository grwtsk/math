# primeIntervalLogMass_le_length_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a15f9f1-720c-e039-c413-248862cc2a3d",
  "kind": "theorem",
  "lexical_name": "primeIntervalLogMass_le_length_mul_log",
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
  "slug": "primeintervallogmass-le-length-mul-log--b3dba33825b2fd98a6bd56f7",
  "source": {
    "blob": "9cbc88796c5d11a9df21ad3e5b2590a3859d040e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 22,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3dba33825b2fd98a6bd56f7fdb5c205ec465277977d6adc638a8cce3804f8a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a15f9f1-720c-e039-c413-248862cc2a3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeIntervalLogMass_le_length_mul_log
    {A B M : ℕ}
    (hAB : A ≤ B)
    (hBM : B ≤ M)
    (hM : 0 < M) :
    primeIntervalLogMass A B ≤
      ((B - A : ℕ) : ℝ) * Real.log (M : ℝ) := by
  let s : Finset ℕ := (Finset.Ioc A B).filter Nat.Prime
  have hterm :
      ∀ p ∈ s, Real.log p ≤ Real.log (M : ℝ) := by
    intro p hp
    have hpf := Finset.mem_filter.mp hp
    have hpPrime : p.Prime := hpf.2
    have hpB : p ≤ B := (Finset.mem_Ioc.mp hpf.1).2
    have hpM : p ≤ M := hpB.trans hBM
    exact Real.log_le_log
      (by exact_mod_cast hpPrime.pos)
      (by exact_mod_cast hpM)
  have hsum :
      (∑ p ∈ s, Real.log p) ≤
        s.card • Real.log (M : ℝ) :=
    Finset.sum_le_card_nsmul s (fun p => Real.log p)
      (Real.log (M : ℝ)) hterm
  have hcardNat :
      s.card ≤ B - A := by
    have hsubset :
        s ⊆ Finset.Ioc A B := by
      intro p hp
      exact (Finset.mem_filter.mp hp).1
    have hc := Finset.card_le_card hsubset
    simpa [s, Nat.card_Ioc] using hc
  have hcard :
      (s.card : ℝ) ≤ ((B - A : ℕ) : ℝ) := by
    exact_mod_cast hcardNat
  have hlog0 :
      0 ≤ Real.log (M : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hM))
  unfold primeIntervalLogMass
  change (∑ p ∈ s, Real.log p) ≤ _
  calc
    (∑ p ∈ s, Real.log p)
        ≤ s.card • Real.log (M : ℝ) := hsum
    _ = (s.card : ℝ) * Real.log (M : ℝ) := by
      rw [nsmul_eq_mul]
    _ ≤ ((B - A : ℕ) : ℝ) * Real.log (M : ℝ) :=
      mul_le_mul_of_nonneg_right hcard hlog0

/-- If an interval lies below 4X and has length at most H, then its
logarithmic prime mass is at most H log(4X). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cbc88796c5d11a9df21ad3e5b2590a3859d040e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
