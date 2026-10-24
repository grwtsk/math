# integrable_condExpL1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8f9b9d015697d9b4e6f4fcc21b2e845b950199a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7932f900-a671-3f62-af3d-2f7c1d50bd10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d5f3d1c-336b-6853-65fd-e95f0563ff8b",
  "kind": "theorem",
  "lexical_name": "integrable_condExpL1",
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
  "slug": "integrable-condexpl1--b65f8d76039ccbb3bb4db463",
  "source": {
    "blob": "f8f9b9d015697d9b4e6f4fcc21b2e845b950199a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 613,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b65f8d76039ccbb3bb4db46336e3de402799d552a6ffdc0ee8fbf9b93f5362f4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d5f3d1c-336b-6853-65fd-e95f0563ff8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_condExpL1 (f : α → F') : Integrable (condExpL1 hm μ f) μ :=
  L1.integrable_coeFn _

@[deprecated (since := "2025-01-21")] alias integrable_condexpL1 := integrable_condExpL1

/-- The integral of the conditional expectation `condExpL1` over an `m`-measurable set is equal to
the integral of `f` on that set. See also `setIntegral_condExp`, the similar statement for
`condExp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL1/Variantb2bad330ef3d6fe30d220e3c8ffefae7511778286af9c9e16a76e6911b1a06cf.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f9b9d015697d9b4e6f4fcc21b2e845b950199a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
