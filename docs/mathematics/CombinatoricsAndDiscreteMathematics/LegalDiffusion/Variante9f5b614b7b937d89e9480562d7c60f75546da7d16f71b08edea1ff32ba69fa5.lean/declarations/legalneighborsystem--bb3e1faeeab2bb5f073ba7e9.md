# LegalNeighborSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:368ddd4fde75c882580971bd72e1fcc0eedcd3e29b24835974a0d44edc6b9a0e",
  "kind": "structure",
  "lexical_name": "LegalNeighborSystem",
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
  "slug": "legalneighborsystem--bb3e1faeeab2bb5f073ba7e9",
  "source": {
    "blob": "f2165cf82b3b794a8005769e0570e80547385363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variante9f5b614b7b937d89e9480562d7c60f75546da7d16f71b08edea1ff32ba69fa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb3e1faeeab2bb5f073ba7e9d4af7c0384fc2d4bf1c48cbd0f0e7af2fa159de6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variante9f5b614b7b937d89e9480562d7c60f75546da7d16f71b08edea1ff32ba69fa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:368ddd4fde75c882580971bd72e1fcc0eedcd3e29b24835974a0d44edc6b9a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LegalNeighborSystem
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (T : Terrain V)
    (boundary : BoundaryState V) where
  admitted : V → V → Prop
  legalNeighbors : V → Finset V
  mem_legalNeighbors_iff :
    ∀ x y, y ∈ legalNeighbors x ↔ admitted x y
  admitted_adjacent : ∀ {x y}, admitted x y → T.Adjacent x y
  admitted_symmetric : ∀ {x y}, admitted x y → admitted y x
  obstacle_excluded : ∀ {x y}, admitted x y → y ∉ boundary.obstacles

namespace LegalNeighborSystem

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V} {boundary : BoundaryState V}

/-- Every enumerated neighbor is a genuine terrain edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variante9f5b614b7b937d89e9480562d7c60f75546da7d16f71b08edea1ff32ba69fa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variante9f5b614b7b937d89e9480562d7c60f75546da7d16f71b08edea1ff32ba69fa5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2165cf82b3b794a8005769e0570e80547385363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
