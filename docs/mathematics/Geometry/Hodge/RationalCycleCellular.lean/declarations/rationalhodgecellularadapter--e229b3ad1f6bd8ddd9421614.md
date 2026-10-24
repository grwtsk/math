# RationalHodgeCellularAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f730daa4e29da1c979925b9788eab17e342aa3bf7328cf11fa6d37652437e7c",
  "kind": "structure",
  "lexical_name": "RationalHodgeCellularAdapter",
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
  "slug": "rationalhodgecellularadapter--e229b3ad1f6bd8ddd9421614",
  "source": {
    "blob": "02308219aad0658167bb756fd418a815bb7e261d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 142,
    "path": "GRWTSK/Geometry/Hodge/RationalCycleCellular.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e229b3ad1f6bd8ddd9421614d044e48972ec5d94503d46f8c9b5ae38e9be899e",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/RationalCycleCellular.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f730daa4e29da1c979925b9788eab17e342aa3bf7328cf11fa6d37652437e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RationalHodgeCellularAdapter
    {Cycle : Type u} {HodgeClass : Type v} {CellClass : Type w}
    [AddCommGroup Cycle] [Module ℚ Cycle]
    [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
    [AddCommGroup CellClass] [Module ℚ CellClass]
    (H : RationalHodgeData Cycle HodgeClass)
    (C₀ : Type x) (C₁ : Type y)
    [AddCommGroup C₀] [Module ℚ C₀]
    [AddCommGroup C₁] [Module ℚ C₁]
    (A : RationalTwoTermHodgeData C₀ C₁) where
  globalTheorem : SourceBoundRationalHodgeTheorem H
  comparison : CycleCellularComparison H CellClass
  harmonicRealization : CellularHarmonicRealization CellClass C₀ C₁ A

namespace RationalHodgeCellularAdapter

variable {Cycle : Type u} {HodgeClass : Type v} {CellClass : Type w}
variable [AddCommGroup Cycle] [Module ℚ Cycle]
variable [AddCommGroup HodgeClass] [Module ℚ HodgeClass]
variable [AddCommGroup CellClass] [Module ℚ CellClass]
variable {C₀ : Type x} {C₁ : Type y}
variable [AddCommGroup C₀] [Module ℚ C₀]
variable [AddCommGroup C₁] [Module ℚ C₁]
variable {H : RationalHodgeData Cycle HodgeClass}
variable {A : RationalTwoTermHodgeData C₀ C₁}

/-- A global rational-Hodge theorem plus an actual cellular comparison produces an
algebraic cycle and a harmonic cellular representative of every selected class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/RationalCycleCellular.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/RationalCycleCellular.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02308219aad0658167bb756fd418a815bb7e261d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
