# diracProba

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2237dbf858f44fef0d498ba3fa6d9d863930c94b003b78df86ce7fcee4eb5c4",
  "kind": "def",
  "lexical_name": "diracProba",
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
  "slug": "diracproba--1c73dc087cdbaaff148d1491",
  "source": {
    "blob": "95d825911a792f1459d413215d3b5c86e3ac9d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c73dc087cdbaaff148d14913bbe73aa8f63fd4fbc5d68b5c521760f6354caa3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2237dbf858f44fef0d498ba3fa6d9d863930c94b003b78df86ce7fcee4eb5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def diracProba (x : X) : ProbabilityMeasure X :=
  ⟨Measure.dirac x, Measure.dirac.isProbabilityMeasure⟩

/-- The assignment `x ↦ diracProba x` is injective if all singletons are measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant35b7aa409c3da58f68520f27044fb5e1a635cf78cfe19edc350ebcf6351ba783.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95d825911a792f1459d413215d3b5c86e3ac9d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
