# norm_sq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4a02ace-e576-9a97-1df4-512edb510d9b",
  "kind": "theorem",
  "lexical_name": "norm_sq_integral",
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
  "slug": "norm-sq-integral--c47c45dd969e08adf11daaf6",
  "source": {
    "blob": "594a360b42ba7201f98533d57de176f680da7d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c47c45dd969e08adf11daaf60de4043335e1452221edb7f414fa5814fe62421c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4a02ace-e576-9a97-1df4-512edb510d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sq_integral (f : PositiveL2) :
    ‖f‖^2 = ∫ x, ‖f x‖^2 ∂positiveMeasure := by
  have h : ((∫ x, ‖f x‖^2 ∂positiveMeasure : ℝ) : ℂ) = ((‖f‖^2 : ℝ) : ℂ) := by
    calc
      _ = ∫ x, ((‖f x‖^2 : ℝ) : ℂ) ∂positiveMeasure := integral_complex_ofReal.symm
      _ = ⟪f,f⟫_ℂ := by
        rw [L2.inner_def]
        congr 1
        funext x
        convert! (@inner_self_eq_norm_sq_to_K ℂ ℂ _ Complex.instNormedAddCommGroup.toSeminormedAddCommGroup (@RCLike.innerProductSpace ℂ Complex.instRCLike) (f x)).symm using 1 <;> norm_cast
      _ = _ := by
        convert! (inner_self_eq_norm_sq_to_K (𝕜:=ℂ) f) using 1
        norm_cast
  exact (Complex.ofReal_injective h).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594a360b42ba7201f98533d57de176f680da7d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
