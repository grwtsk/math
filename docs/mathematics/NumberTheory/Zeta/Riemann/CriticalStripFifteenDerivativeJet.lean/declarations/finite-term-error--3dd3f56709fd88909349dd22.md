# finite_term_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efbbc1a4-4869-35c1-7ed7-ab62582f5ff8",
  "kind": "lemma",
  "lexical_name": "finite_term_error",
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
  "slug": "finite-term-error--3dd3f56709fd88909349dd22",
  "source": {
    "blob": "58b659fdd4811b8e9d0ac115dd75ca486fc3191b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 371,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dd3f56709fd88909349dd2294e48533f9f41f89d8c1c425b3d107480b98468d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efbbc1a4-4869-35c1-7ed7-ab62582f5ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_term_error (k : Fin 16) {s : ℂ} (hs : Region s) :
    ‖(1-(s-1)*(Real.log (base k) : ℂ))*power k s -
      (1-(s-1)*(logCenter k : ℂ))*powerJet k s‖ ≤ (52/4096 : ℝ)+17*logRadius := by
  have heq : (1-(s-1)*(Real.log (base k) : ℂ))*power k s -
      (1-(s-1)*(logCenter k : ℂ))*powerJet k s =
      (1-(s-1)*(logCenter k : ℂ))*(power k s-powerJet k s) -
        (s-1)*((Real.log (base k) : ℂ)-(logCenter k : ℂ))*power k s := by ring
  have hn := (region_norms hs).2
  have hc : ‖1-(s-1)*(logCenter k : ℂ)‖ ≤ (52 : ℝ) := by
    have ht := norm_sub_le (1 : ℂ) ((s-1)*(logCenter k : ℂ))
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs] at ht
    have hm := mul_le_mul hn (logCenter_bound k) (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 17)
    norm_num at ht
    linarith
  have hl : ‖(Real.log (base k) : ℂ)-(logCenter k : ℂ)‖ ≤ logRadius := by
    simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using log_encloses k
  have hp : ‖power k s‖ ≤ 1 := positive_base_neg_power_norm_le_one (base_bounds k).1 hs.1.le
  rw [heq]
  calc
    _ ≤ ‖1-(s-1)*(logCenter k : ℂ)‖*‖power k s-powerJet k s‖ +
        ‖s-1‖*‖(Real.log (base k) : ℂ)-(logCenter k : ℂ)‖*‖power k s‖ := by
      simpa only [norm_mul] using norm_sub_le
        ((1-(s-1)*(logCenter k : ℂ))*(power k s-powerJet k s))
        ((s-1)*((Real.log (base k) : ℂ)-(logCenter k : ℂ))*power k s)
    _ ≤ _ := by
      gcongr
      · exact hc
      · exact power_jet_encloses k hs
      · exact hn
      · exact hl
      · exact hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b659fdd4811b8e9d0ac115dd75ca486fc3191b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
