# expansionLength_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f9d282b-d25d-8060-08f6-ccfedad1acc0",
  "kind": "theorem",
  "lexical_name": "expansionLength_spec",
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
  "slug": "expansionlength-spec--16bf5b1a95e5ab315773eac8",
  "source": {
    "blob": "95681c2768eeac33856177ca2e0114d68f0c544c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 44,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16bf5b1a95e5ab315773eac8e36027b417de45fe43517fbcf24e964d88f34c86",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f9d282b-d25d-8060-08f6-ccfedad1acc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expansionLength_spec (m t : ℝ) (hm : 0 < m) (ht : 0 < t)
    (htm : t ≤ m / 2000) :
    0 < expansionLength m t ∧
      (expansionLength m t : ℝ) ^ 2 * (10 * t / m) ≤ 1 / 200 ∧
      (1 / 100 : ℝ) * Real.sqrt (m / t) ≤ expansionLength m t := by
  let r := Real.sqrt (m / (2000 * t))
  have hden : 0 < 2000 * t := by positivity
  have hr0 : 0 ≤ r := Real.sqrt_nonneg _
  have hrsq : r ^ 2 = m / (2000 * t) := Real.sq_sqrt (by positivity)
  have hr1 : 1 ≤ r := by
    apply (Real.le_sqrt (by norm_num) (by positivity)).mpr
    apply (le_div_iff₀ hden).mpr
    linarith
  have hk : 0 < expansionLength m t := Nat.floor_pos.mpr hr1
  have hk1 : (1 : ℝ) ≤ expansionLength m t := by exact_mod_cast hk
  have hk0 : (0 : ℝ) ≤ expansionLength m t := by positivity
  have hku : (expansionLength m t : ℝ) ≤ r := Nat.floor_le hr0
  have hkl : r < (expansionLength m t : ℝ) + 1 := Nat.lt_floor_add_one r
  have hhalf : r / 2 ≤ (expansionLength m t : ℝ) := by linarith
  have hksq : (expansionLength m t : ℝ) ^ 2 ≤ r ^ 2 := by nlinarith
  have henergy : (expansionLength m t : ℝ) ^ 2 * (10 * t / m) ≤ 1 / 200 := by
    calc
      _ ≤ r ^ 2 * (10 * t / m) :=
        mul_le_mul_of_nonneg_right hksq (by positivity)
      _ = 1 / 200 := by rw [hrsq]; field_simp; norm_num
  have hratio : (Real.sqrt (m / t)) ^ 2 = 2000 * r ^ 2 := by
    rw [Real.sq_sqrt (by positivity), hrsq]
    field_simp
  have hlower : (1 / 100 : ℝ) * Real.sqrt (m / t) ≤ expansionLength m t := by
    have hs0 := Real.sqrt_nonneg (m / t)
    have htwentieth : Real.sqrt (m / t) / 50 ≤ r := by nlinarith
    linarith
  exact ⟨hk, henergy, hlower⟩

/-- Source Lemma 3.4. The source's `|S| ≥ 10^7` is weakened here to `10 ≤ |S|`;
all other analytical ingredients are proved in the imported modules. In
particular no anti-concentration or spectral-cardinality hypothesis is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95681c2768eeac33856177ca2e0114d68f0c544c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
