# samples_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a69af024-195e-3fc4-7fce-6e3abce45939",
  "kind": "theorem",
  "lexical_name": "samples_error",
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
  "slug": "samples-error--8b5c8b4a71c065bd30f55b73",
  "source": {
    "blob": "5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 148,
    "path": "GRWTSK/Analysis/Complex/RationalTentQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b5c8b4a71c065bd30f55b731e03424e4231d24f8138a8aeed6c85007438590a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a69af024-195e-3fc4-7fce-6e3abce45939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samples_error {z : Coordinates} {x h : ℚ} {N : ℕ} {tr : Trace}
    (hc : check z x h N tr = true) :
    ‖tentKernel (x : ℝ) (h : ℝ) (toComplex z) -
      ∑ i ∈ Finset.range (N + N), toComplex (RationalFiniteSum.termAt (terms h N tr) i)‖ ≤
      (meshError z h N : ℝ) + (nodeBudget z x h N tr : ℝ) := by
  obtain ⟨hh, ha, hN, hz, _, _, hs, _⟩ := (check_iff_valid z x h N tr).mp hc
  have hh' : (0 : ℝ) < h := by exact_mod_cast hh
  have ha' : (1 : ℝ) < (x : ℝ) - h := by exact_mod_cast ha
  have hz' : (toComplex z).re ≤ 2 := by
    have : (z.1 : ℝ) ≤ 1 := by exact_mod_cast hz
    change (z.1 : ℝ) ≤ 2
    linarith
  have hv (right : Bool) (i : ℕ) (hi : i < N) :
      ‖IntervalMellinKernel.density (toComplex z) (TentMellinQuadrature.halfNode x h N i right) -
        toComplex (sampleValue tr i right)‖ ≤ (sampleError z x h N tr i right : ℝ) := by
    simpa only [sampleValue, RationalMellinQuadrature.sampleValue, sampleError, cast_node] using
      RationalMellinNode.check_sound (hs right i (Finset.mem_range.mpr hi))
  rw [terms_interpretation]
  have ht := TentMellinQuadrature.tent_samples_error (x : ℝ) (h : ℝ) hh' ha' N hN hz'
    (fun i => toComplex (sampleValue tr i false)) (fun i => toComplex (sampleValue tr i true))
    (fun i => (sampleError z x h N tr i false : ℝ))
    (fun i => (sampleError z x h N tr i true : ℝ)) (hv false) (hv true)
  simpa only [meshError, nodeBudget, Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_pow,
    Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_sum, cast_mass, RationalMellinNode.cast_magnitude] using ht

/-- The literal tent integral, not the unweighted interval, is the conclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentQuadrature.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
