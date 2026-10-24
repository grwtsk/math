# shift_upwards_phi_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66fc165b-9415-ea13-4bae-92786712017a",
  "kind": "lemma",
  "lexical_name": "shift_upwards_phi_sum",
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
  "slug": "shift-upwards-phi-sum--1877e9266651cf210ea33466",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3435,
    "line": 3415,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1877e9266651cf210ea33466f1a6965b10be94108d882d4a515b11286ea88bec",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66fc165b-9415-ea13-4bae-92786712017a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3415–3435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma shift_upwards_phi_sum (ν ε : ℝ) (hν : ν > 0) (t : ℝ) (ht : 0 ≤ t) :
    Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t) = Phi_star ν ε (I * t) := by
  have h_re : (-2 : ℂ) * ↑π * I * (I * ↑t) + ↑ν ≠ 0 := by
    intro h; apply_fun Complex.re at h; simp at h; nlinarith [Real.pi_pos, ht, hν]
  have h_im (m : ℤ) (hm : m ≠ 0) : (-2 : ℂ) * ↑π * I * (I * ↑t - ↑m) + ↑ν ≠ 0 := by
    intro h; apply_fun Complex.im at h; simp [Real.pi_pos.ne.symm, hm] at h
  have h_circ_shift (z : ℂ) : Phi_circ ν ε (z - 1) = Phi_circ ν ε z := by
    have h := (Phi_circ_periodic ν ε (z - 1)).symm; rwa [sub_add_cancel] at h
  have haff := phi_star_affine_periodic ν ε hν (I * ↑t) (-1) h_re (h_im (-1) (by norm_num))
  simp only [Int.cast_neg, Int.cast_one, neg_mul, one_mul, sub_neg_eq_add] at haff
  rw [show 1 + I * ↑t = I * ↑t + 1 by ring, ← h_circ_shift (I * ↑t + 1),
      show I * ↑t + 1 - 1 = I * ↑t by ring, haff]; ring

/-- Let `E(z) = exp(2πi z)`. Consider three "vertical" line integrals over `t ∈ [0, T]`, each
picking up a factor of `I` from parametrizing the imaginary direction:

* `A = I ∫ (Φ_circ − Φ_star)(−1 + i t) · E(−(−1 + i t) x) dt` (on the line `Re z = −1`)
* `B = I ∫ (Φ_circ + Φ_star)(+1 + i t) · E(−(+1 + i t) x) dt` (on the line `Re z = +1`)
* `C = I ∫ Φ_star(i t) · E(−(i t) x) dt` (on the imaginary axis)

Then `A − B + 2C = (2 − E(x) − E(−x)) · C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L3415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
