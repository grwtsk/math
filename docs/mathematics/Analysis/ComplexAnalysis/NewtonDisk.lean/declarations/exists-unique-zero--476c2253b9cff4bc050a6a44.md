# exists_unique_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01a79261-c299-8114-39d8-9c6a022fc77a",
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
  "slug": "exists-unique-zero--476c2253b9cff4bc050a6a44",
  "source": {
    "blob": "96a4a162853b3bcd52adf92bec586be30c54c723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 79,
    "path": "GRWTSK/Analysis/Complex/NewtonDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:476c2253b9cff4bc050a6a447a462b8f635665443ee13a7f9755c15db0b3e70f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01a79261-c299-8114-39d8-9c6a022fc77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_zero {f g : ℂ → ℂ} {c A : ℂ} {R κ η : ℝ}
    (hR : 0 ≤ R) (hk0 : 0 ≤ κ) (hk1 : κ < 1)
    (hf : ∀ z ∈ closedBall c R, HasDerivAt f (g z) z)
    (hb : ∀ z ∈ closedBall c R, ‖1 - A * g z‖ ≤ κ)
    (hres : ‖A * f c‖ ≤ η) (hm : η + κ * R ≤ R) :
    ∃ z ∈ closedBall c R, f z = 0 ∧ g z ≠ 0 ∧
      ∀ v ∈ closedBall c R, f v = 0 → v = z := by
  have hc : c ∈ closedBall c R := by simpa using hR
  have hA : A ≠ 0 := preconditioner_ne_zero hk1 (hb c hc)
  have hmap := step_mapsTo hR hk0 hf hb hres hm
  let K : ℝ≥0 := ⟨κ, hk0⟩
  have hcontract : ContractingWith K (hmap.restrict (step f A) _ _) := by
    refine ⟨hk1, (lipschitzWith_iff_dist_le_mul).mpr ?_⟩
    intro u v
    change dist (step f A u.1) (step f A v.1) ≤ κ * dist u.1 v.1
    simpa only [dist_eq_norm] using step_lipschitz hf hb v.2 u.2
  obtain ⟨z, hz, hfix, _, _⟩ := hcontract.exists_fixedPoint'
    isClosed_closedBall.isComplete hmap hc (edist_ne_top _ _)
  have hfz : f z = 0 := by
    have he : z - A * f z = z := hfix
    exact (mul_eq_zero.mp (sub_eq_self.mp he)).resolve_left hA
  refine ⟨z, hz, hfz, derivative_ne_zero hk1 (hb z hz), ?_⟩
  intro v hv hfv
  have hl := step_lipschitz hf hb hz hv
  simp only [step, hfz, hfv, mul_zero, sub_zero] at hl
  have hn : ‖v - z‖ = 0 := by nlinarith [norm_nonneg (v - z)]
  exact sub_eq_zero.mp (norm_eq_zero.mp hn)

/-- A posteriori position bound; it need not equal the actual distance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NewtonDisk.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a4a162853b3bcd52adf92bec586be30c54c723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
