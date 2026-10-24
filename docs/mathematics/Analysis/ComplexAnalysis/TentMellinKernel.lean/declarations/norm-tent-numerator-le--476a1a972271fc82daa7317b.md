# norm_tent_numerator_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58d2cab1-da1d-5bb8-67f2-eb2d6881e633",
  "kind": "theorem",
  "lexical_name": "norm_tent_numerator_le",
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
  "slug": "norm-tent-numerator-le--476a1a972271fc82daa7317b",
  "source": {
    "blob": "eb0bd10edfbba94a5c53fbabf9e039f9c4570baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 128,
    "path": "GRWTSK/Analysis/Complex/TentMellinKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:476a1a972271fc82daa7317b322a98cc40645fc0248197db1f20e80f2f9c91e3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d2cab1-da1d-5bb8-67f2-eb2d6881e633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tent_numerator_le (x h β : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hβ : 0 ≤ β) (z : ℂ) (hz : z.re ≤ β) :
    ‖logPower (x + h) (z + 1) - 2 * logPower x (z + 1) +
      logPower (x - h) (z + 1)‖ ≤ 4 * Real.exp ((β + 1) * Real.log (x + h)) := by
  have hbound : ∀ t : ℝ, 1 < t → t ≤ x + h →
      ‖logPower t (z + 1)‖ ≤ Real.exp ((β + 1) * Real.log (x + h)) := by
    intro t ht htb
    have hz' : (z + 1).re ≤ β + 1 := by simpa using add_le_add_right hz 1
    apply (norm_logPower_le ht.le hz').trans
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_left
      (Real.log_le_log (lt_trans zero_lt_one ht) htb) (by linarith)
  have hb := hbound (x + h) (by linarith) le_rfl
  have hx := hbound x (by linarith) (by linarith)
  have hl := hbound (x - h) ha (by linarith)
  have htri := (norm_add_le
    (logPower (x + h) (z + 1) - 2 * logPower x (z + 1))
    (logPower (x - h) (z + 1))).trans
      (add_le_add (norm_sub_le
        (logPower (x + h) (z + 1)) (2 * logPower x (z + 1))) (le_refl _))
  rw [norm_mul] at htri
  norm_num only [Complex.norm_ofNat] at htri
  linarith

/-- Inverse-square height decay is derived, not supplied as an error-budget field.
It applies to off-line parameters as long as their true real parts obey beta. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinKernel.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0bd10edfbba94a5c53fbabf9e039f9c4570baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
