# List.measurable_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08733071-72c1-c741-c68d-33de9cdd0d8e",
  "kind": "theorem",
  "lexical_name": "List.measurable_prod",
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
  "slug": "list-measurable-prod--38766ab13fca85ccf6de438d",
  "source": {
    "blob": "cddcbe6455265d622ffddd416b8ae2d50a94a71a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 892,
    "line": 886,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38766ab13fca85ccf6de438db0eb18727dceb35824b1e2e44738294d4f5bdcca",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08733071-72c1-c741-c68d-33de9cdd0d8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 886–892.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem List.measurable_prod (l : List (α → M)) (hl : ∀ f ∈ l, Measurable f) :
    Measurable fun x => (l.map fun f : α → M => f x).prod := by
  simpa only [← Pi.list_prod_apply] using l.measurable_prod' hl
#align list.measurable_prod List.measurable_prod
#align list.measurable_sum List.measurable_sum

@[to_additive (attr := measurability)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean#L886).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cddcbe6455265d622ffddd416b8ae2d50a94a71a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
