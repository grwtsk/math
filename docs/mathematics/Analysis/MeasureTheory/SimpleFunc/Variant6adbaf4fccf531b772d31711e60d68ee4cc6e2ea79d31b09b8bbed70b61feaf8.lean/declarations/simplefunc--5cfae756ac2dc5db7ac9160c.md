# SimpleFunc.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9aebb5c1b7c382093194a52af9a427de2a30c35f01271eacf965fdf94f0d3ef5",
  "kind": "structure",
  "lexical_name": "SimpleFunc.",
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
  "slug": "simplefunc--5cfae756ac2dc5db7ac9160c",
  "source": {
    "blob": "16c590b244b21ba209f0cf718545f70579cfcada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cfae756ac2dc5db7ac9160c35898e3e7bae234f07cfed4b5df2e609785ec78e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9aebb5c1b7c382093194a52af9a427de2a30c35f01271eacf965fdf94f0d3ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SimpleFunc.{u, v} (α : Type u) [MeasurableSpace α] (β : Type v) where
  toFun : α → β
  measurableSet_fiber' : ∀ x, MeasurableSet (toFun ⁻¹' {x})
  finite_range' : (Set.range toFun).Finite
#align measure_theory.simple_func MeasureTheory.SimpleFunc
#align measure_theory.simple_func.to_fun MeasureTheory.SimpleFunc.toFun
#align measure_theory.simple_func.measurable_set_fiber' MeasureTheory.SimpleFunc.measurableSet_fiber'
#align measure_theory.simple_func.finite_range' MeasureTheory.SimpleFunc.finite_range'

local infixr:25 " →ₛ " => SimpleFunc

namespace SimpleFunc

section Measurable

variable [MeasurableSpace α]

attribute [coe] toFun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant6adbaf4fccf531b772d31711e60d68ee4cc6e2ea79d31b09b8bbed70b61feaf8.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c590b244b21ba209f0cf718545f70579cfcada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
