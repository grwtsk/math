# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef07aad516e3964462ca106ccc4593951ade67534e8a45b33b948447c94769c6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--07d2df14e6c538efc97c3063",
  "source": {
    "blob": "9aff6da0a146029080804678d1230413d44bca3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 649,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07d2df14e6c538efc97c30638c3845b36b95ea1382b7b81b7b6e9ca081cf6ef6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef07aad516e3964462ca106ccc4593951ade67534e8a45b33b948447c94769c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) SigmaFinite.of_isFiniteMeasureOnCompacts [TopologicalSpace α]
    [SigmaCompactSpace α] (μ : Measure α) [IsFiniteMeasureOnCompacts μ] : SigmaFinite μ :=
  ⟨⟨{   set := compactCovering α
        set_mem := fun _ => trivial
        finite := fun n => (isCompact_compactCovering α n).measure_lt_top
        spanning := iUnion_compactCovering α }⟩⟩

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aff6da0a146029080804678d1230413d44bca3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
