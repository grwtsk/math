# CanonicalPrimePowerPackingComparisonAtZero.witnessTrace_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0a1a656-b2a2-0a37-da85-c6c08c88f8e2",
  "kind": "theorem",
  "lexical_name": "CanonicalPrimePowerPackingComparisonAtZero.witnessTrace_nonnegative",
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
  "slug": "canonicalprimepowerpackingcomparisonatzero-witnesstrace-nonnegative--dc53db93165951e0245615f7",
  "source": {
    "blob": "117142b9f17a4a5bcda5dcbf8b462d3cee1806dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc53db93165951e0245615f7a10387941e96523a7877db9df6e8f8fee421636b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0a1a656-b2a2-0a37-da85-c6c08c88f8e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CanonicalPrimePowerPackingComparisonAtZero.witnessTrace_nonnegative
    {s : ℂ}
    (comparison : CanonicalPrimePowerPackingComparisonAtZero s) :
    0 ≤ witnessTrace (s.re - 1 / 2) s.im := by
  have hlim :
      Tendsto canonicalPrimePowerPackingSequence.valueAt atTop
        (𝓝 (comparison.limitWeight *
          witnessTrace (s.re - 1 / 2) s.im)) := by
    simp_rw [funext comparison.identity]
    simpa using
      (comparison.weight_tendsto.mul_const
        (witnessTrace (s.re - 1 / 2) s.im)).add
          comparison.residual.total_tendsto
  have hnonneg :
      0 ≤ comparison.limitWeight *
        witnessTrace (s.re - 1 / 2) s.im :=
    ge_of_tendsto hlim
      (Eventually.of_forall
        canonicalPrimePowerPackingSequence.valueAt_nonnegative)
  exact
    (mul_nonneg_iff_of_pos_left comparison.limitWeight_pos).mp hnonneg

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117142b9f17a4a5bcda5dcbf8b462d3cee1806dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
