# coreGrowingShiftQuarticDepthMultiplicity_eq_supportCard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df6618f4-dd23-381c-3d73-d20e81d37519",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticDepthMultiplicity_eq_supportCard",
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
  "slug": "coregrowingshiftquarticdepthmultiplicity-eq-supportcard--a3af70316698de2d711c79de",
  "source": {
    "blob": "83dcefd45fb0f6b3b2e5ea8e2a51805dd4eaba11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 161,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3af70316698de2d711c79de61ead8b5df1fc7f6b0336f0106e857f2e98dc1fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df6618f4-dd23-381c-3d73-d20e81d37519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticDepthMultiplicity_eq_supportCard
    (j h d a : ℕ) :
    coreGrowingShiftQuarticDepthMultiplicity j (h, d, a) =
      (coreGrowingShiftQuarticDepthSupport j h d a).card := by
  classical
  unfold coreGrowingShiftQuarticDepthMultiplicity
  apply Finset.card_bij (fun x _hx => x.1)
  · intro x hx
    have hactive := (Finset.mem_filter.mp hx).1
    have hbox := (Finset.mem_filter.mp hx).2
    rcases x with ⟨t, ⟨k, ⟨d0, a0⟩⟩⟩
    simp only [coreGrowingShiftQuarticActiveCells,
      Finset.mem_sigma] at hactive
    rcases hactive with ⟨ht, hk, hdmem, hamem⟩
    simp only [coreGrowingShiftQuarticActiveCellBoxIndex,
      Prod.mk.injEq] at hbox
    rcases hbox with ⟨hh, hdeq, haeq⟩
    subst d0
    subst a0
    have hkN : k < harmonicShiftCount j t :=
      Finset.mem_range.mp hk
    have hrange :
        harmonicShiftLower j t ≤ h ∧
          h < harmonicShiftUpper j t := by
      unfold harmonicShiftCount at hkN
      omega
    rw [hh] at hdmem
    apply Finset.mem_filter.mpr
    exact ⟨ht, hrange, hdmem, Finset.mem_range.mp hamem⟩
  · intro x hx y hy hdepth
    have hxq := (Finset.mem_filter.mp hx).2
    have hyq := (Finset.mem_filter.mp hy).2
    rcases x with ⟨tx, ⟨kx, ⟨dx, ax⟩⟩⟩
    rcases y with ⟨ty, ⟨ky, ⟨dy, ay⟩⟩⟩
    change tx = ty at hdepth
    subst ty
    have hindices :
        (harmonicShiftLower j tx + kx, dx, ax) =
          (harmonicShiftLower j tx + ky, dy, ay) := by
      exact hxq.trans hyq.symm
    simp only [Prod.mk.injEq] at hindices
    rcases hindices with ⟨hh, hd, ha⟩
    have hk : kx = ky := by omega
    subst ky
    subst dy
    subst ay
    rfl
  · intro t ht
    simp only [coreGrowingShiftQuarticDepthSupport,
      Finset.mem_filter] at ht
    rcases ht with ⟨htcore, hrange, hsep⟩
    rcases hrange with ⟨hlow, hupp⟩
    rcases hsep with ⟨hdmem, ha⟩
    let k : ℕ := h - harmonicShiftLower j t
    have hkEq : harmonicShiftLower j t + k = h := by
      dsimp [k]
      omega
    have hkCount : k < harmonicShiftCount j t := by
      unfold harmonicShiftCount
      dsimp [k]
      omega
    let x : CoreGrowingShiftQuarticActiveCell :=
      ⟨t, ⟨k, ⟨d, a⟩⟩⟩
    refine ⟨x, ?_, ?_⟩
    · apply Finset.mem_filter.mpr
      constructor
      · simp only [coreGrowingShiftQuarticActiveCells,
          Finset.mem_sigma]
        refine ⟨htcore, Finset.mem_range.mpr hkCount, ?_, ?_⟩
        · rw [hkEq]
          exact hdmem
        · exact Finset.mem_range.mpr ha
      · change (harmonicShiftLower j t + k, d, a) = (h, d, a)
        rw [hkEq]
    · rfl

/-- Literal piecewise interval-length formula for the depth multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83dcefd45fb0f6b3b2e5ea8e2a51805dd4eaba11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
