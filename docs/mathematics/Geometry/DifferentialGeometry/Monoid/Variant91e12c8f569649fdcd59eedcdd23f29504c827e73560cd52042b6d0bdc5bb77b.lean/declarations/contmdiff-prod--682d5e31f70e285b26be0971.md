# ContMDiff.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a46ff02a-885f-13ee-6ca1-fe2444404cae",
  "kind": "theorem",
  "lexical_name": "ContMDiff.prod",
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
  "slug": "contmdiff-prod--682d5e31f70e285b26be0971",
  "source": {
    "blob": "213cc287878b1c187e497b34f5b2e951c1d848c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 428,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:682d5e31f70e285b26be09718e4c9a2af56aadd2aa4c9f0fcb57ab9f561a2de9",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a46ff02a-885f-13ee-6ca1-fe2444404cae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiff.prod (h : ∀ i ∈ t, ContMDiff I' I n (f i)) :
    ContMDiff I' I n fun x ↦ ∏ i ∈ t, f i x :=
  fun x ↦ ContMDiffAt.prod fun j hj ↦ h j hj x

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `213cc287878b1c187e497b34f5b2e951c1d848c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
