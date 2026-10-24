# actual_shell_prices_weight_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77c2215c-7988-efde-cdef-441863437efb",
  "kind": "theorem",
  "lexical_name": "actual_shell_prices_weight_mass",
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
  "slug": "actual-shell-prices-weight-mass--e391831e6904c9c085d4c7f3",
  "source": {
    "blob": "095ad9e3572cef07acba9cf64aa0e94c045bc402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e391831e6904c9c085d4c7f3dd5274bde90eee3341792fae610d69ce01b58bea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77c2215c-7988-efde-cdef-441863437efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_shell_prices_weight_mass (s : Finset ℕ) (b : ℕ → ℝ)
    (t : ℕ → ℝ) {A L : ℝ} (hA : 8 ≤ A)
    (hwidth : ∀ n ∈ s, ∀ m ∈ s, |t n - t m| ≤ 1)
    (hL : 0 ≤ L)
    (hupper : shellForm s b (nativeKernel A t) ≤ L * shellMass s b) :
    (319 / 384 : ℝ) * shellMass s b ≤ L := by
  apply coherent_shell_quadratic_upper_prices_mass s b (nativeKernel A t) hL _ hupper
  intro n hn m hm
  exact actual_coherence_of_distance_le_one hA (hwidth n hn m hm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095ad9e3572cef07acba9cf64aa0e94c045bc402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
