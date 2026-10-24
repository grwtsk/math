# GroupSeminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23c609ddd025e947ea51e3e4dc0b90ab022f0227be4f488207d05dcfe463e321",
  "kind": "structure",
  "lexical_name": "GroupSeminorm",
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
  "slug": "groupseminorm--414a3632cbd0f4d2e89b1b83",
  "source": {
    "blob": "0a7178006e3397480678ce3aff0e20c357761315",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variante81758f1d5b08023dd758e64cfd2875829ce3f6a6152707d01e83008a2deab4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:414a3632cbd0f4d2e89b1b8354b04e4427b5bc4653fd696cfbc628c5b947bba9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variante81758f1d5b08023dd758e64cfd2875829ce3f6a6152707d01e83008a2deab4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23c609ddd025e947ea51e3e4dc0b90ab022f0227be4f488207d05dcfe463e321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GroupSeminorm (G : Type*) [Group G] where
  /-- The bare function of a `GroupSeminorm`. -/
  protected toFun : G → ℝ
  /-- The image of one is zero. -/
  protected map_one' : toFun 1 = 0
  /-- The seminorm applied to a product is dominated by the sum of the seminorm applied to the
  factors. -/
  protected mul_le' : ∀ x y, toFun (x * y) ≤ toFun x + toFun y
  /-- The seminorm is invariant under inversion. -/
  protected inv' : ∀ x, toFun x⁻¹ = toFun x

/-- A nonarchimedean seminorm on an additive group `G` is a function `f : G → ℝ` that preserves
zero, is nonarchimedean and such that `f (-x) = f x` for all `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variante81758f1d5b08023dd758e64cfd2875829ce3f6a6152707d01e83008a2deab4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variante81758f1d5b08023dd758e64cfd2875829ce3f6a6152707d01e83008a2deab4f.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7178006e3397480678ce3aff0e20c357761315` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
