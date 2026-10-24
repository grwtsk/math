# exists_unique_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fd37bbf-bbc6-ef1d-b057-5f90d100abc7",
  "kind": "theorem",
  "lexical_name": "exists_unique_zero",
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
  "slug": "exists-unique-zero--ef547124d482872d00e3c9dd",
  "source": {
    "blob": "48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 49,
    "path": "GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef547124d482872d00e3c9dd70b7a4f5baea6972bff884cf45da06d6aaf0f3c1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd37bbf-bbc6-ef1d-b057-5f90d100abc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_zero (f : ℂ → ℂ) (A c : ℂ) (r q Y : ℝ)
    (hA : A ≠ 0) (hr : 0 < r) (hq0 : 0 ≤ q) (hq1 : q < 1)
    (hf : ∀ z ∈ closedBall c r, DifferentiableAt ℂ f z)
    (hdefect : ∀ z ∈ closedBall c r, ‖1 - A * deriv f z‖ ≤ q)
    (hres : ‖A * f c‖ ≤ Y) (hself : Y + q * r ≤ r) :
    ∃ z ∈ closedBall c r, f z = 0 ∧ ‖z - c‖ ≤ Y / (1 - q) ∧
      ∀ w ∈ closedBall c r, f w = 0 → w = z := by
  have hc : c ∈ closedBall c r := mem_closedBall_self hr.le
  have hlip := correction_lipschitz f A c r q hf hdefect
  have hcenter : ‖correction f A c - c‖ ≤ Y := by
    have he : correction f A c - c = -(A * f c) := by unfold correction; ring
    rw [he, norm_neg]
    exact hres
  have hmaps : MapsTo (correction f A) (closedBall c r) (closedBall c r) := by
    intro z hz
    rw [mem_closedBall, dist_eq_norm]
    have hzR : ‖z - c‖ ≤ r := by simpa [mem_closedBall, dist_eq_norm] using hz
    calc
      _ ≤ ‖correction f A z - correction f A c‖ + ‖correction f A c - c‖ :=
        norm_sub_le_norm_sub_add_norm_sub _ _ _
      _ ≤ q * ‖z - c‖ + Y := add_le_add (hlip z hz c hc) hcenter
      _ ≤ q * r + Y := add_le_add_left (mul_le_mul_of_nonneg_left hzR hq0) Y
      _ ≤ r := by linarith
  have hcontract : ContractingWith (⟨q, hq0⟩ : NNReal)
      (hmaps.restrict (correction f A) (closedBall c r) (closedBall c r)) := by
    refine ⟨hq1, LipschitzWith.of_dist_le_mul ?_⟩
    intro z w
    change dist (correction f A z.1) (correction f A w.1) ≤ q * dist z.1 w.1
    simpa only [dist_eq_norm] using hlip z.1 z.2 w.1 w.2
  obtain ⟨z, hz, hfix, _, _⟩ := hcontract.exists_fixedPoint'
    (isClosed_closedBall.isComplete) hmaps hc (edist_ne_top c (correction f A c))
  have hfixeq : correction f A z = z := hfix
  have hprod : A * f z = 0 := by
    dsimp [correction] at hfixeq
    linear_combination -hfixeq
  have hzero : f z = 0 := (mul_eq_zero.mp hprod).resolve_left hA
  have hloc : ‖z - c‖ ≤ Y / (1 - q) := by
    apply (le_div_iff₀ (by linarith : 0 < 1 - q)).mpr
    have htriangle := norm_sub_le_norm_sub_add_norm_sub (correction f A z) (correction f A c) c
    have hd := hlip z hz c hc
    rw [hfixeq] at htriangle hd
    nlinarith
  refine ⟨z, hz, hzero, hloc, ?_⟩
  intro w hw hwzero
  have hwfix : correction f A w = w := by simp [correction, hwzero]
  have h := hlip w hw z hz
  rw [hwfix, hfixeq] at h
  have hn : ‖w - z‖ = 0 := by
    apply le_antisymm _ (norm_nonneg (w - z))
    by_contra hnpos
    have hp : 0 < ‖w - z‖ := lt_of_not_ge hnpos
    have hstrict := mul_lt_mul_of_pos_right hq1 hp
    linarith
  exact sub_eq_zero.mp (norm_eq_zero.mp hn)

/-- A strict defect bound also excludes a vanishing derivative on the disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
