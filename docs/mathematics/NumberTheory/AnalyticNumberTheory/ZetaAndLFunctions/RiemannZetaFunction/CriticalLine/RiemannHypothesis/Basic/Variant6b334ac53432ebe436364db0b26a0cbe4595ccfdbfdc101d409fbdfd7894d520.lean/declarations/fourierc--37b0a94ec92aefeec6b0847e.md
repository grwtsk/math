# fourierC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb6a9d0f6856ca8a0f16f2cebb2c847e1360cfbac9516db52ab4f262d0f801d3",
  "kind": "def",
  "lexical_name": "fourierC",
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
  "slug": "fourierc--37b0a94ec92aefeec6b0847e",
  "source": {
    "blob": "0d2a80d373fa23a46ae6bed932540361e4f4919d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37b0a94ec92aefeec6b0847e676aea610a78f34ea7fedcfbec64d260fa6d4ca0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb6a9d0f6856ca8a0f16f2cebb2c847e1360cfbac9516db52ab4f262d0f801d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fourierC (f : ℝ → ℝ) (ξ : ℂ) : ℂ :=
  ∫ u : ℝ, (f u : ℂ) * Complex.exp (-(2 * (Real.pi : ℂ)) * Complex.I * ξ * (u : ℂ))

/-! ## The key proposition

The Hilbert-space inequalities at the heart of the proof. They speak only of a finite
conjugation-invariant multiset of complex numbers and a test function; no zeta function appears.
The multiset is presented by its finite support `Z` with a multiplicity function `m`, so that
`∑_{z ∈ 𝒵} 1` is `∑ z ∈ Z, (m z : ℝ)` and `∑_{z, s ∈ 𝒵} K (z - s) ^ 2` is
`∑ z ∈ Z, ∑ s ∈ Z, (m z * m s) * testKernel eta (z - s) ^ 2`. That sum is real -- `η` real and
even make `K` even with `conj (K ξ) = K (conj ξ)`, so pairing `(z, s)` with `(conj z, conj s)`
conjugates each term -- so the statements below take its real part, discarding nothing.

Y. Lamzouri, *op. cit.*, **Proposition 2.1**, equations (2.3), (2.4), (2.5) and (2.6).
-/

/-- `eta` is `lam`-admissible: square-integrable, real-valued, even, supported in
`(-lam, lam)`, and normalised so that its square has Fourier transform `1` at `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant6b334ac53432ebe436364db0b26a0cbe4595ccfdbfdc101d409fbdfd7894d520.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d2a80d373fa23a46ae6bed932540361e4f4919d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
