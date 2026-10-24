# IsAddQuantale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3558566870166bf600b51eb77e4252c29a8628f17dee96c9f0fd39338908f9bc",
  "kind": "class",
  "lexical_name": "IsAddQuantale",
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
  "slug": "isaddquantale--1faf896565414c9a14ef352b",
  "source": {
    "blob": "952829c27cafd4cabc3ca5b09724a3339e8b91ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant1f1d9739ea858676c274f1a14a4c953f7fed02852b4dc06bc34b36790269fb07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1faf896565414c9a14ef352ba2d88ddce018ac3f2c97058e4a84310302ca3cc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant1f1d9739ea858676c274f1a14a4c953f7fed02852b4dc06bc34b36790269fb07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3558566870166bf600b51eb77e4252c29a8628f17dee96c9f0fd39338908f9bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsAddQuantale (α : Type*) [AddSemigroup α] [CompleteLattice α] where
  /-- Addition is distributive over join in a quantale -/
  protected add_sSup_distrib (x : α) (s : Set α) : x + sSup s = ⨆ y ∈ s, x + y
  /-- Addition is distributive over join in a quantale -/
  protected sSup_add_distrib (s : Set α) (y : α) : sSup s + y = ⨆ x ∈ s, x + y

/-- A quantale is a semigroup distributing over a complete lattice. -/
@[variable_alias]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant1f1d9739ea858676c274f1a14a4c953f7fed02852b4dc06bc34b36790269fb07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant1f1d9739ea858676c274f1a14a4c953f7fed02852b4dc06bc34b36790269fb07.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `952829c27cafd4cabc3ca5b09724a3339e8b91ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
