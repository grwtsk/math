# isLocalMax_of_sign_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc3455fb-ca7f-bdb2-18dd-68aad9cdc590",
  "kind": "theorem",
  "lexical_name": "isLocalMax_of_sign_deriv",
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
  "slug": "islocalmax-of-sign-deriv--dda790ab7ef661f8cbb33617",
  "source": {
    "blob": "72104ad17098b03b48952f53e52cd894e9999582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 392,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda790ab7ef661f8cbb336176d186920ef4ac50164e86a2ee5f6676a7efff1e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3455fb-ca7f-bdb2-18dd-68aad9cdc590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalMax_of_sign_deriv {f : ℝ → ℝ} {x₀ : ℝ} (h : ContinuousAt f x₀)
    (hf : ∀ᶠ x in 𝓝[≠] x₀, sign (deriv f x) = sign (x₀ - x)) :
    IsLocalMax f x₀ := by
  have hl := deriv_pos_left_of_sign_deriv hf
  have hg := deriv_neg_right_of_sign_deriv hf
  replace hf := (nhdsLT_sup_nhdsGT x₀) ▸
    eventually_sup.mpr ⟨hl.mono fun x hx => hx.ne', hg.mono fun x hx => hx.ne⟩
  exact isLocalMax_of_deriv h (hf.mono fun x hx ↦ differentiableAt_of_deriv_ne_zero hx)
    (hl.mono fun _ => le_of_lt) (hg.mono fun _ => le_of_lt)

/-- The First Derivative test with a hypothesis on the sign of the derivative, minimum version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72104ad17098b03b48952f53e52cd894e9999582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
