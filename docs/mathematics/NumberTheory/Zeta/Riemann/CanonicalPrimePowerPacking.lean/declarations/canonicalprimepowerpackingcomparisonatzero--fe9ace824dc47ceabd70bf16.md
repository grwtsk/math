# CanonicalPrimePowerPackingComparisonAtZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02356c0cfba50bd091814879959ccdb119d1baaa09b1ab97a59e6fffead49d41",
  "kind": "structure",
  "lexical_name": "CanonicalPrimePowerPackingComparisonAtZero",
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
  "slug": "canonicalprimepowerpackingcomparisonatzero--fe9ace824dc47ceabd70bf16",
  "source": {
    "blob": "117142b9f17a4a5bcda5dcbf8b462d3cee1806dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe9ace824dc47ceabd70bf1638f5abc4c0ecdda186a52756144415407bdbd8f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02356c0cfba50bd091814879959ccdb119d1baaa09b1ab97a59e6fffead49d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicalPrimePowerPackingComparisonAtZero (s : ℂ) where
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      canonicalPrimePowerPackingSequence.valueAt n =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

/-- Once a canonical packing comparison is proved, structural arithmetic
positivity forces the signed quartic nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117142b9f17a4a5bcda5dcbf8b462d3cee1806dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
