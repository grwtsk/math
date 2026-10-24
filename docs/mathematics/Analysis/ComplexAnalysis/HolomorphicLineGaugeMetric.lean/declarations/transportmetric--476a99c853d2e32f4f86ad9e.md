# transportMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9c0be6d2c4f5d09c2ff25590cc0d9be698ca1cae0c99bea8e9cbb72a3f6e354",
  "kind": "def",
  "lexical_name": "transportMetric",
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
  "slug": "transportmetric--476a99c853d2e32f4f86ad9e",
  "source": {
    "blob": "be82844f3c7cf334a191b92b4b962f36d537117f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 25,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeMetric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:476a99c853d2e32f4f86ad9e8e6e16edd6d5ef6bfdd4b2db6bae9cae739dd1ca",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9c0be6d2c4f5d09c2ff25590cc0d9be698ca1cae0c99bea8e9cbb72a3f6e354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportMetric (G : Gauge C E) (M : MetricWeights C) : MetricWeights E where
  weight i z := M.weight i z * Complex.normSq (unitValue (G.frame i)⁻¹ z)
  positive i z := mul_pos (M.positive i z)
    (Complex.normSq_pos.mpr (Fixtures.unitValue_ne_zero (G.frame i)⁻¹ z))
  continuous_weight i := (M.continuous_weight i).mul
    (normSq_continuous.comp
      (section_continuous (D.U i) (↑((G.frame i)⁻¹) : HolomorphicSection (D.U i))))
  compatible := by
    intro i j x hi hj
    have hg := congrArg (fun z : ℂ => Complex.normSq z)
      (G.symm.compatible i j x hi hj)
    simp only [Gauge.symm, Complex.normSq_mul] at hg
    change (M.weight j ⟨x.1, hj⟩ * Complex.normSq (unitValue (G.frame j)⁻¹ ⟨x.1, hj⟩)) *
        Complex.normSq (E.scalar i j x) =
      M.weight i ⟨x.1, hi⟩ * Complex.normSq (unitValue (G.frame i)⁻¹ ⟨x.1, hi⟩)
    rw [mul_assoc, hg, ← mul_assoc, M.compatible i j x hi hj]

/-- Cancellation is proved using the exact inverse unit, not an unrelated nonzero scalar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeMetric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineGaugeMetric.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be82844f3c7cf334a191b92b4b962f36d537117f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
