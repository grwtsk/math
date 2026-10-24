# wholePickup_cutoff_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:589cbc67-2a72-4473-6eef-176d52bb8b0d",
  "kind": "theorem",
  "lexical_name": "wholePickup_cutoff_laplace",
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
  "slug": "wholepickup-cutoff-laplace--1f21d2c684435d4514d25059",
  "source": {
    "blob": "99ec3cd35e67734ba05ca5b4a04a012e8950660f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f21d2c684435d4514d25059b2662be39ea689564a948d791987a22e136e6dd8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:589cbc67-2a72-4473-6eef-176d52bb8b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wholePickup_cutoff_laplace {T : ℝ} (hT : 0 ≤ T) {z s : ℂ}
    (hs : s = z+1/2) (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace wholePickup z T =
      pickupDirichletPrefix ⌊Real.exp T⌋₊ s / (z*s) -
        2*Complex.exp (-z*T)/z * (pickupWeightedPrefix ⌊Real.exp T⌋₊ : ℂ) +
        2*Complex.exp (-s*T)/s * (pickupMertensPrefix ⌊Real.exp T⌋₊ : ℂ) := by
  rw [noteWindowLaplace_fixed_inventory z hT]
  calc
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (((moebiusReal n : ℂ)*Complex.exp (-s*Real.log n))/(z*s) -
          (2*Complex.exp (-z*T)/z) * ((moebiusReal n : ℂ)*(((Real.sqrt n)⁻¹:ℝ):ℂ)) +
          (2*Complex.exp (-s*T)/s) * (moebiusReal n : ℂ)) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hne := Finset.mem_Icc.mp hn
      rw [pickupResponseWindowLaplace hne.1
        ((pickup_log_le_iff_closed_cutoff hne.1 T).mpr hne.2) hs hz hs0]
      ring
    _ = _ := by
      simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.sum_div,
        ← Finset.mul_sum, pickupDirichletPrefix, pickupWeightedPrefix,
        pickupMertensPrefix, Complex.ofReal_sum, Complex.ofReal_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99ec3cd35e67734ba05ca5b4a04a012e8950660f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
