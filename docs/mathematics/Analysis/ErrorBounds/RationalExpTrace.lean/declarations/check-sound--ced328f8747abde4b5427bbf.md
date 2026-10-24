# check_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a0769c7-8bb3-38db-90c5-33d53c779d00",
  "kind": "theorem",
  "lexical_name": "check_sound",
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
  "slug": "check-sound--ced328f8747abde4b5427bbf",
  "source": {
    "blob": "875ba04830194bd422818d22a705a02d0cf197ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 158,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalExpTrace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ced328f8747abde4b5427bbf017f4c6dd1447c264b05099e2d69e40b123298b4",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalExpTrace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a0769c7-8bb3-38db-90c5-33d53c779d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem check_sound {w : Coordinates} {B : ℚ} {s M : ℕ} {tr : Trace}
    (h : check w B s M tr = true) :
    ‖Complex.exp (toComplex w) - toComplex (valueAt tr s)‖ ≤
      (outputRadius B s M tr : ℝ) := by
  obtain ⟨hre, hB, hguard, _hlen, _hrlen, hseed, hstep⟩ :=
    (check_iff_valid w B s M tr).mp h
  have hb := (inBall_iff w B).mp hB
  have hre' : (toComplex w).re ≤ 0 := by
    change (w.1 : ℝ) ≤ 0
    exact_mod_cast hre
  have hg : ((B : ℝ) / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℝ) := by
    have hg' := (Rat.cast_le (K := ℝ)).mpr hguard
    push_cast at hg'
    simpa only [Nat.cast_pow, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat] using hg'
  have hs : ‖ComplexTaylorEnclosure.taylorValue (toComplex w / (2 ^ s : ℕ)) M -
      toComplex (valueAt tr 0)‖ ≤ (tr.seedRadius : ℝ) := by
    simpa only [toComplex_sub, toComplex_seedValue] using
      (inBall_iff _ _).mp hseed
  have hj : ∀ j < s, ‖toComplex (valueAt tr (j + 1)) -
      toComplex (valueAt tr j) ^ 2‖ ≤ (radiusAt tr j : ℝ) := by
    intro j hj
    have hb' := (inBall_iff _ _).mp (hstep j (Finset.mem_range.mpr hj))
    simpa only [toComplex_sub, toComplex_mul, pow_two] using hb'
  have hout := ComplexExpScaling.scaled_exp_trace_error hb hre' s M hg
    (fun j => toComplex (valueAt tr j)) (tr.seedRadius : ℝ)
    (fun j => (radiusAt tr j : ℝ)) hs hj
  simpa only [outputRadius, cast_propagate, Rat.cast_add, cast_seedTail] using hout

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalExpTrace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalExpTrace.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875ba04830194bd422818d22a705a02d0cf197ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
