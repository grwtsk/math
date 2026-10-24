# pi.instIsFiniteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1eb6dbfe5eae4b9dd3984bba7f6cc0a7b842d7efc8a4992b95edcdb1e5c51cd7",
  "kind": "instance",
  "lexical_name": "pi.instIsFiniteMeasure",
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
  "slug": "pi-instisfinitemeasure--81eae80964618575ab7e5057",
  "source": {
    "blob": "9faf376e19ecd46825d0a28d6b48596f21c5433d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 309,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81eae80964618575ab7e505768740747b575c6b7e9d9c77bec418716a6f179f4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1eb6dbfe5eae4b9dd3984bba7f6cc0a7b842d7efc8a4992b95edcdb1e5c51cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pi.instIsFiniteMeasure [∀ i, IsFiniteMeasure (μ i)] :
    IsFiniteMeasure (Measure.pi μ) :=
  ⟨Measure.pi_univ μ ▸ ENNReal.prod_lt_top (fun i _ ↦ measure_lt_top (μ i) _)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9faf376e19ecd46825d0a28d6b48596f21c5433d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
