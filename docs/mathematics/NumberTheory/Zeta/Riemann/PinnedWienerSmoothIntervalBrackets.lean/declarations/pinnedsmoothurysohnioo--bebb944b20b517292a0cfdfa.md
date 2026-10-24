# pinnedSmoothUrysohnIoo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c44ac8-b7a6-b626-5168-57cc3d957ee3",
  "kind": "theorem",
  "lexical_name": "pinnedSmoothUrysohnIoo",
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
  "slug": "pinnedsmoothurysohnioo--bebb944b20b517292a0cfdfa",
  "source": {
    "blob": "5830184b9c03d227551b941d0ba64962457ba6bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bebb944b20b517292a0cfdfa00b1e2850841818b737dcbb380a37d652f5aeda9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c44ac8-b7a6-b626-5168-57cc3d957ee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedSmoothUrysohnIoo
    {u v w z : ℝ} (huv : u < v) (hwz : w < z) :
    ∃ φ : ℝ → ℝ,
      ContDiff ℝ ∞ φ ∧
      HasCompactSupport φ ∧
      (∀ x, 0 ≤ φ x ∧ φ x ≤ 1) ∧
      (∀ x ∈ Set.Icc v w, φ x = 1) ∧
      Function.support φ = Set.Ioo u z := by
  have hclosed : IsClosed (Set.Iic u ∪ Set.Ici z) :=
    isClosed_Iic.union isClosed_Ici
  have ht : IsClosed (Set.Icc v w) := isClosed_Icc
  have hd : Disjoint (Set.Iic u ∪ Set.Ici z) (Set.Icc v w) := by
    apply Set.disjoint_left.mpr
    intro x hx hy
    rcases (Set.mem_union.mp hx) with hu | hz
    · have hux : x ≤ u := Set.mem_Iic.mp hu
      have hvx : v ≤ x := (Set.mem_Icc.mp hy).1
      linarith
    · have hzx : z ≤ x := Set.mem_Ici.mp hz
      have hxw : x ≤ w := (Set.mem_Icc.mp hy).2
      linarith
  obtain ⟨φ, hsmooth, hrange, hzero, hone⟩ :=
    exists_contMDiff_zero_iff_one_iff_of_isClosed
      (I := modelWithCornersSelf ℝ ℝ) (n := ∞)
      (s := Set.Iic u ∪ Set.Ici z)
      (t := Set.Icc v w) hclosed ht hd
  have hsupport : Function.support φ = Set.Ioo u z := by
    ext x
    change φ x ≠ 0 ↔ (u < x ∧ x < z)
    constructor
    · intro hne
      have hnot : ¬ x ∈ Set.Iic u ∪ Set.Ici z := by
        intro hx
        exact hne ((hzero x).mp hx)
      simp only [Set.mem_union, Set.mem_Iic, Set.mem_Ici,
        not_or, not_le] at hnot
      exact hnot
    · rintro ⟨hux, hxz⟩ heq
      have hx := (hzero x).mpr heq
      rcases (Set.mem_union.mp hx) with hu | hz
      · exact (not_le.mpr hux) (Set.mem_Iic.mp hu)
      · exact (not_le.mpr hxz) (Set.mem_Ici.mp hz)
  have hcompact : HasCompactSupport φ := by
    apply HasCompactSupport.of_support_subset_isCompact
      (K := Set.Icc u z) isCompact_Icc
    rw [hsupport]
    exact Set.Ioo_subset_Icc_self
  refine ⟨φ, hsmooth.contDiff, hcompact, ?_, ?_, hsupport⟩
  · intro x
    exact hrange ⟨x, rfl⟩
  · intro x hx
    exact (hone x).mp hx

/-- A bump supported in a positive open interval stays away from zero,
INCLUDING the closure of its support.  This is the Mellin/Fourier
normalization condition of the historical smoothed Wiener theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5830184b9c03d227551b941d0ba64962457ba6bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
