# fifteen_odd_channel_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d2dff8e-6002-954b-5b9e-1f29c45120b4",
  "kind": "theorem",
  "lexical_name": "fifteen_odd_channel_bound",
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
  "slug": "fifteen-odd-channel-bound--5d6c651fcdca6e17ad27d810",
  "source": {
    "blob": "20cf837eba5b85f03830dc5ff354e1bdefdc5b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d6c651fcdca6e17ad27d81079af9dabde2d8b30d386b06bf217ac71befa980f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d2dff8e-6002-954b-5b9e-1f29c45120b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fifteen_odd_channel_bound {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (ht : (14 : ℝ) ≤ z.im) (ht1 : z.im ≤ 15) (hoff : z.re ≠ 1/2) :
    ‖Pair.odd poleNormalizedZeta (center z) (offset z)-FifteenWitness.linearPart‖ ≤ 12 := by
  let P : ℂ → ℂ := fun w => FifteenWitness.linearPart*w
  have hP (w : ℂ) : HasDerivAt P FifteenWitness.linearPart w := by
    simpa [P] using (hasDerivAt_id w).const_mul FifteenWitness.linearPart
  have hp : center z+offset z ∈ FifteenWitness.domain := by
    rw [center_plus_offset]
    exact ⟨hx,hx1.le,ht,ht1⟩
  have hm : center z-offset z ∈ FifteenWitness.domain := by
    rw [center_minus_offset]
    change 0 < (criticalReflection z).re ∧ (criticalReflection z).re ≤ 1 ∧
      (14 : ℝ) ≤ (criticalReflection z).im ∧ (criticalReflection z).im ≤ 15
    simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re,
      Complex.sub_im,Complex.one_im,Complex.conj_im,zero_sub,neg_neg]
    exact ⟨by linarith,by linarith,ht,ht1⟩
  have h := GRWTSK.Analysis.Complex.SymmetricPair.odd_error_of_derivatives
    (offset_ne_zero hoff) FifteenWitness.domain_convex
    (fun w _ => differentiable_poleNormalizedZeta w)
    (fun w _ => (hP w).differentiableAt)
    (fun w hw => by rw [(hP w).deriv]; exact FifteenWitness.source_derivative_disk hw)
    hp hm
  have hodd : Pair.odd P (center z) (offset z)=FifteenWitness.linearPart := by
    unfold GRWTSK.Analysis.Complex.SymmetricPair.odd P
    field_simp [offset_ne_zero hoff] <;> ring
  rwa [hodd] at h

/-- One-sided use of the constructed source disk; no numerical zeta evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cf837eba5b85f03830dc5ff354e1bdefdc5b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
