# sqrt_le_distI_of_InTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d0183aa-cae0-7b44-ae52-e51a45323300",
  "kind": "lemma",
  "lexical_name": "sqrt_le_distI_of_InTail",
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
  "slug": "sqrt-le-disti-of-intail--23b2de9c659e2fb8e1bfb67b",
  "source": {
    "blob": "42ee70bd9ae7132cb2ab56a7d9eb766c8907b928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant47a536ba95ba7ac5c2861a895da264bbcc3cde9995d6395d6928ad1285aa44b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23b2de9c659e2fb8e1bfb67bbb65be9f952c0e7eeeecc24d365695b0118f2f07",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant47a536ba95ba7ac5c2861a895da264bbcc3cde9995d6395d6928ad1285aa44b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d0183aa-cae0-7b44-ae52-e51a45323300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt_le_distI_of_InTail {T γ : ℝ} (hT : 0 ≤ T) (h : InTail T γ) :
    Real.sqrt T ≤ distI T γ := by
  have hs := Real.sqrt_nonneg T
  rcases h with h | h
  · rw [distI_of_le hT (by linarith)]; linarith
  · rw [distI_of_ge hT (by linarith)]; linarith

/-- Explicit absolute threshold standing in for "T ≥ T₀" in [prop:tail]. Chosen ≥ 256 ≥ 16π²
(using only π ≤ 4) so that log(4T) ≤ 2·log(T/2π) = 2l (used in the "so that
θ₀ ≤ 32A₀‖ϱ″‖₁² l T^{λ/2−1}" clause); the zero-count estimate needs far less. Any larger
absolute constant would also do. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant47a536ba95ba7ac5c2861a895da264bbcc3cde9995d6395d6928ad1285aa44b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant47a536ba95ba7ac5c2861a895da264bbcc3cde9995d6395d6928ad1285aa44b6.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42ee70bd9ae7132cb2ab56a7d9eb766c8907b928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
