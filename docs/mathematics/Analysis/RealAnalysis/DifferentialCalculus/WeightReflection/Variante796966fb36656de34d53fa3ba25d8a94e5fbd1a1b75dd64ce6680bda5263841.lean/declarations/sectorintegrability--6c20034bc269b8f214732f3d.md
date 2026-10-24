# SectorIntegrability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:015a03989b6132165cbbddfdf644bb5836f46e94bfb88a5aa6b1d7b2c28ed191",
  "kind": "structure",
  "lexical_name": "SectorIntegrability",
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
  "slug": "sectorintegrability--6c20034bc269b8f214732f3d",
  "source": {
    "blob": "8fb39bca757b53ff335e381bfc6a56a031db01ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c20034bc269b8f214732f3d2af9c3dbd860299d48ffc23de58bc1c8c53f519d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:015a03989b6132165cbbddfdf644bb5836f46e94bfb88a5aa6b1d7b2c28ed191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SectorIntegrability (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : Prop where
  /-- The retained even/even product is integrable. -/
  even_even : IntervalIntegrable (fun t ↦
    evenPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t)
    volume lowerEndpoint (2 * A)
  /-- Integrability justifies the even/odd cross-term calculation. -/
  even_odd : IntervalIntegrable (fun t ↦
    evenPart lowerEndpoint (2 * A) errorProfile t * oddWeight r A t)
    volume lowerEndpoint (2 * A)
  /-- Integrability justifies the odd/even cross-term calculation. -/
  odd_even : IntervalIntegrable (fun t ↦
    oddPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t)
    volume lowerEndpoint (2 * A)
  /-- The retained odd/odd product is integrable. -/
  odd_odd : IntervalIntegrable (fun t ↦
    oddPart lowerEndpoint (2 * A) errorProfile t * oddWeight r A t)
    volume lowerEndpoint (2 * A)

/-- Exact integration of the anchored even sector. The constant `+2` comes
from `E(2⁻) = -2`; it is not an arbitrary centering or an optimization parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb39bca757b53ff335e381bfc6a56a031db01ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
