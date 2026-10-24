# D1Summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8f83ffabddac6908b60058d2c95b8fbb714fde08fee95585db7582aa52c206f",
  "kind": "def",
  "lexical_name": "D1Summable",
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
  "slug": "d1summable--45e6ebd3fbc4ebb12a6bd0e9",
  "source": {
    "blob": "b1339c09f5e7b9f07de9a533850183e905d8c138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45e6ebd3fbc4ebb12a6bd0e91b3fbb2397cee58c1b2a854599ca2a57b1db654d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8f83ffabddac6908b60058d2c95b8fbb714fde08fee95585db7582aa52c206f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def D1Summable : Prop := ∀ s : ℝ, Summable (fun k : ℕ => D1coeff k * s ^ (2 * k + 3))

/-! ## §4. The interface propositions (one per component)

Conventions.  Pf : ℝ → Params is a HEIGHT-INDEXED parameter family ("the window at height T is
(Pf T).phi T"): for the flat window Pf := fun _ => P; for a profile v, Pf := P.atV v (Defs).  Every
constant is quantified BEFORE T (uniform in the family).  Z : ZeroConfig is abstract in the Props and is
instantiated at xiDerivZeros hF2 hs (resp. wZeros) by Assembly. -/

/-- **XiEF — the explicit formula for ξ′, entrywise, with fixed coefficients**  [XF′ Thm 4.2].
For all large T and all 0 ≤ k,l < d:  the zero-side Gram entry
G¹_{kl} = Σ_{ρ₁} m_{ρ₁} φ̂(γ_{ρ₁}−τ_k) φ̂(γ_{ρ₁}−τ_l)  (= Z.Gz, an absolutely convergent sum — asserted)
equals the entry-dependent main term  M_{kl} = ∫ φ̂(τ−τ_k)φ̂(τ−τ_l)[μ + Π_X + P¹_X(τ; L⋆^{kl})]dτ
(= (Pf T).Gentry1, Defs) up to  |𝓔_{kl}| ≤ C · T^{−δ} · (min(1, |τ_k − τ_l|⁻²) + 1/T)  for some δ > 0.
Shape notes: (i) [XF′ Thm 4.2] displays X^{1/2}L²l/T·min(1,Δ⁻²);
the Lean proof runs the contour on the FIXED line Re s = 5/4 (verbatim reuse of the Zeta23/WeilEF line
lemmas, all stated for 1 < c ≤ 3/2) rather than σ₁ = 1+3/l, giving X^{3/4}L²l/T = O(T^{−δ}),
δ = (1 − 3λ/4)/2 > 0 for every fixed λ ≤ 1 — a POWER SAVING is all Lemma 5.1 consumes (|tr Ê| ≤ dCT^{−δ}/(aL²)
= o(N), ‖Ê‖_F² ≤ C′T^{−2δ}(dL + d²/T²)/(aL²)² = o(N), with d ≍ TL, N ≍ Tl, a ≍ 1); (ii) min(1, Δ⁻²) is written
1 / max 1 Δ² so that Δ = 0 gives 1, not Lean's 0⁻¹ = 0; (iii) the "+ 1/T" floor is the Δ-independent term
of the proof's "Collecting (a)–(f)" line, which the displayed bound omits — it costs consumers
nothing.  T ^ (-δ) is Real.rpow (T > 0 eventually). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1339c09f5e7b9f07de9a533850183e905d8c138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
