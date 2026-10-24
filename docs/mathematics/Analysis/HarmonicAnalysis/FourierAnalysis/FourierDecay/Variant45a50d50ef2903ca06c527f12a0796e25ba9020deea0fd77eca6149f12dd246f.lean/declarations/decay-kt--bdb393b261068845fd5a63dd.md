# decay_kt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48760e62-1fa4-fea0-04a7-e9114ff1d534",
  "kind": "lemma",
  "lexical_name": "decay_kt",
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
  "slug": "decay-kt--bdb393b261068845fd5a63dd",
  "source": {
    "blob": "4bd8db10c37aef0f3dc352c12088cc6d846a2c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdb393b261068845fd5a63ddf370547b86bc83515d39e85f19b14226bfba2e41",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48760e62-1fa4-fea0-04a7-e9114ff1d534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma decay_kt (Φ : ℝ → ℂ) (hΦ : ∃ A, ∀ λ, ‖Φ λ‖ ≤ A * Real.exp (π * |λ|)) :
    ∃ C b > 0, ∀ x, ‖kt Φ t x‖ ≤ C * Real.exp (-b * |x|) := by
  obtain ⟨A, hΦA⟩ := hΦ
  -- The mollified profile φₜ(λ) := e^{-tλ²} Φ(λ) satisfies:
  -- ‖φₜ(λ)‖ ≤ A · e^{-tλ² + π|λ|}
  -- which is still of type ≤ π
  let φ := φt Φ t
  have : ∀ λ, ‖φ λ‖ ≤ A * Real.exp (-t * λ^2 + π * |λ|) := by
    intro λ
    simp only [φt, norm_mul, Complex.norm_eq_abs, abs_exp]
    calc ‖φ λ‖ = ‖Complex.exp (-t * λ^2)‖ * ‖Φ λ‖ := by simp
      _ = Real.exp (-t * λ^2) * ‖Φ λ‖ := by simp
      _ ≤ Real.exp (-t * λ^2) * A * Real.exp (π * |λ|) := by gcongr; exact hΦA λ
      _ = A * Real.exp (-t * λ^2 + π * |λ|) := by ring_nf

  -- The function φ ∈ PW_π(R) ⇒ inverse Fourier transform decays like e^{-(π - ε)|x|}
  -- Use Paley–Wiener theorem
  sorry -- Use actual Fourier decay theorem here

end SpectralProof.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierDecay/Variant45a50d50ef2903ca06c527f12a0796e25ba9020deea0fd77eca6149f12dd246f.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd8db10c37aef0f3dc352c12088cc6d846a2c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
