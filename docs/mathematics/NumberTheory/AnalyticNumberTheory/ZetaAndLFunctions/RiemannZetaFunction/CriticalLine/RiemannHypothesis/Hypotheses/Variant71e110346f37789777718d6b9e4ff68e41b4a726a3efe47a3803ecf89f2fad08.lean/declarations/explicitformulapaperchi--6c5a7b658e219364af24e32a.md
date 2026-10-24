# ExplicitFormulaPaperChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c1c1cc4247b34eaee675dfb133e6687b83e74e0babbb5b87c41900cb4822e3c",
  "kind": "def",
  "lexical_name": "ExplicitFormulaPaperChi",
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
  "slug": "explicitformulapaperchi--6c5a7b658e219364af24e32a",
  "source": {
    "blob": "65062889f76af387d3e9feebf0d972e482aa4e16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c5a7b658e219364af24e32a9ecf5247e43bdb7f504085099cbdfa8a3288c95c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c1c1cc4247b34eaee675dfb133e6687b83e74e0babbb5b87c41900cb4822e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExplicitFormulaPaperChi (κ q : ℕ) (c : ℕ → ℂ) (Z : ZeroConfig) : Prop :=
  ∀ (L : ℝ), 0 < L → ∀ (f g : ℝ → ℂ), ContDiff ℝ 2 f → ContDiff ℝ 2 g →
    tsupport f ⊆ Icc (-(L / 2)) (L / 2) → tsupport g ⊆ Icc (-(L / 2)) (L / 2) →
    Summable (fun ρ : Z.carrier => Z.Wsummand f g ρ) ∧
    Integrable (fun τ : ℝ => paperFT f τ * conj (paperFT g τ) * (nuXc κ q c (Real.exp L) τ : ℂ)) ∧
    Z.W f g = ∫ τ : ℝ, paperFT f τ * conj (paperFT g τ) * (nuXc κ q c (Real.exp L) τ : ℂ)

/-- **H-RvM(χ)**: `N_χ(T,2T) = (T/2π) ℓ_{1,χ} + O_q(log T)` ([thm:E] intro sentence with (iii)'s ℓ_{1,χ};
classical, [Dav00 §16]) and the local count `N_χ(t+1) − N_χ(t) ≪_q log(|t|+3)` ([thm:E] proof (ii)),
two-sided as in `Zeta23.RiemannVonMangoldt`. Constants may depend on q (q is fixed in [thm:E]). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65062889f76af387d3e9feebf0d972e482aa4e16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
