# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea9fda94b42204fc8ad543e83a151c135900621bd9f20bbc88bcec984de62ad6",
  "kind": "example",
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
  "slug": "example--8163ef79c60fe9dba299b62c",
  "source": {
    "blob": "ac6f7953e79f5dc8cff00153dd5466d93fccd67a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 274,
    "path": "GRWTSK/Analysis/SpecialFunctions/Positivity/Variantb177eb3681ec8622eb3fd21f62d157bafc7e9f066f54108675f94075bedb7b9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8163ef79c60fe9dba299b62c6ec06d64d3abb40e56dd638ca757385cf866fb04",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Positivity/Variantb177eb3681ec8622eb3fd21f62d157bafc7e9f066f54108675f94075bedb7b9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea9fda94b42204fc8ad543e83a151c135900621bd9f20bbc88bcec984de62ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [MetricSpace α] {s : Set α} : 0 ≤ Metric.diam s := by positivity

-- example {E : Type _} [AddGroup E] {p : AddGroupSeminorm E} {x : E} : 0 ≤ p x := by positivity
-- example {E : Type _} [Group E] {p : GroupSeminorm E} {x : E} : 0 ≤ p x := by positivity

-- example {r : α → β → Prop} [∀ a, DecidablePred (r a)] {s : Finset α} {t : Finset β} :
--   0 ≤ Rel.edgeDensity r s t := by positivity
-- example {G : SimpleGraph α} [DecidableRel G.adj] {s t : finset α} :
--   0 ≤ G.edgeDensity s t := by positivity

/- ### Canonical orders -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Positivity/Variantb177eb3681ec8622eb3fd21f62d157bafc7e9f066f54108675f94075bedb7b9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Positivity/Variantb177eb3681ec8622eb3fd21f62d157bafc7e9f066f54108675f94075bedb7b9a.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6f7953e79f5dc8cff00153dd5466d93fccd67a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
