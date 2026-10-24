# gamma_integrand_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b43c1b9-3d28-210b-2870-2e20c1d7d882",
  "kind": "theorem",
  "lexical_name": "gamma_integrand_eq",
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
  "slug": "gamma-integrand-eq--6ba864d437841ad869c1212f",
  "source": {
    "blob": "6e884fb374952af11dd5fd933095555694ca37ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba864d437841ad869c1212f2155f33b28cd80ca6e81670712fad4f0b4f393c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b43c1b9-3d28-210b-2870-2e20c1d7d882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gamma_integrand_eq
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    Zeta23.paperFT (smoothKernel A ε hε) (ξ : ℂ) *
      (Zeta23.EF.gammaBracket ξ : ℂ) =
      ((archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℝ) : ℂ) := by
  rw [paperFT_kernel_real A ε hA hε ξ]
  change (Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℂ) *
    (archimedeanMultiplier ξ : ℂ) = _
  rw [Complex.ofReal_mul, mul_comm]

/-- The actual Gamma integral is genuine before it is transported. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e884fb374952af11dd5fd933095555694ca37ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
