# CircularPartialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28a2eb87ccd09496009ae2d53e71990ece5483f6e71089c4d40a08acaf6a0bb8",
  "kind": "class",
  "lexical_name": "CircularPartialOrder",
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
  "slug": "circularpartialorder--0bf8b3fbca872ba6b67ea434",
  "source": {
    "blob": "3bc88567558a4b17bea589ab0166593f83aff8cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant55cc413a000f30e7c0c6e827671cd60f7c33f62ed16a21cfb8caee456f81a7b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bf8b3fbca872ba6b67ea434046d151f1e1e7ed0d81c1b345360f72ede28e4e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant55cc413a000f30e7c0c6e827671cd60f7c33f62ed16a21cfb8caee456f81a7b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28a2eb87ccd09496009ae2d53e71990ece5483f6e71089c4d40a08acaf6a0bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CircularPartialOrder (α : Type*) extends CircularPreorder α where
  /-- If `b` is between `a` and `c` and also between `c` and `a`, then at least one pair of points
  among `a`, `b`, `c` are identical. -/
  btw_antisymm {a b c : α} : btw a b c → btw c b a → a = b ∨ b = c ∨ c = a

export CircularPartialOrder (btw_antisymm)

/-- A circular order is the analogue of a linear order where you can loop around. `≤` and `<` are
replaced by ternary relations `btw` and `sbtw`. `btw` is reflexive, cyclic, antisymmetric and total.
`sbtw` is transitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant55cc413a000f30e7c0c6e827671cd60f7c33f62ed16a21cfb8caee456f81a7b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant55cc413a000f30e7c0c6e827671cd60f7c33f62ed16a21cfb8caee456f81a7b5.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc88567558a4b17bea589ab0166593f83aff8cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
