# GentryC_eq_of_nuc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e42c720b-b14a-0e18-3719-6c5ea653b3c6",
  "kind": "theorem",
  "lexical_name": "GentryC_eq_of_nuc",
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
  "slug": "gentryc-eq-of-nuc--e150c29680479d67561acac4",
  "source": {
    "blob": "cd847a8f56258c16714cc129ba1f852d78c8fa11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 170,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e150c29680479d67561acac49b5c52767a70ddbf39dfd54520c8027f6e786117",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e42c720b-b14a-0e18-3719-6c5ea653b3c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GentryC_eq_of_nuc (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T) (k l : ℤ)
    (c cJ : ℕ → ℂ) (hnuc : ∀ τ : ℝ, nuc (P.X T) c τ = nuX (P.X T) τ + Pc (P.X T) cJ τ)
    (hint : Integrable (fun τ : ℝ =>
      paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ))) :
    ((P.GentryC T c k l : ℝ) : ℂ) = ((P.Gentry T k l : ℝ) : ℂ)
      + ∫ τ : ℝ, paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ) := by
  have hW : ∀ τ : ℝ, ((P.phiHatR T (τ - P.tau T k) : ℝ) : ℂ) * ((P.phiHatR T (τ - P.tau T l) : ℝ) : ℂ)
      = paperFT (kfun P T k l) τ := fun τ => by
    rw [← Complex.ofReal_mul, paperFT_pairTest_ofReal P T hφC2 hφsupp k l τ]
  have hnu := integrable_paperFT_pairTest_mul_nuX P T hφC2 hφsupp hL k l
  unfold Params.GentryC Params.GentryCW Params.Gentry
  rw [← integral_complex_ofReal, ← integral_complex_ofReal]
  have h1 : ∀ τ : ℝ,
      ((P.phiHatR T (τ - P.tau T k) * P.phiHatR T (τ - P.tau T l) * nucW 1 (P.X T) c τ : ℝ) : ℂ)
        = paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ)
          + paperFT (kfun P T k l) τ * ((Pc (P.X T) cJ τ : ℝ) : ℂ) := by
    intro τ
    have e : nucW 1 (P.X T) c τ = nuX (P.X T) τ + Pc (P.X T) cJ τ := hnuc τ
    rw [e]; push_cast; rw [hW τ]; ring
  have h2 : ∀ τ : ℝ,
      ((P.phiHatR T (τ - P.tau T k) * P.phiHatR T (τ - P.tau T l) * nuX (P.X T) τ : ℝ) : ℂ)
        = paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ) := by
    intro τ; push_cast; rw [hW τ]
  simp_rw [h1, h2]
  rw [integral_add hnu hint]

/-- **Gentry1 = Gentry + J-term**: the entry-dependent main term of [XF′ Thm 4.2] splits as the ζ entry
plus ∫ ĥ·P_{cJ}, given the density decomposition nuc X (xiCoeff L⋆) = nuX X + Pc X cJ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd847a8f56258c16714cc129ba1f852d78c8fa11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
