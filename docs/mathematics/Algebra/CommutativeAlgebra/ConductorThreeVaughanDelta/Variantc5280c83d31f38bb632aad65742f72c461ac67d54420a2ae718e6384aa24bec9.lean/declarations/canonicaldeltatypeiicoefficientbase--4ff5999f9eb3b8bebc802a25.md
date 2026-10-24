# canonicalDeltaTypeIICoefficientBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2def07aa7ef75768e35492189e93220991e807b8c0c809d806ae16752e147525",
  "kind": "def",
  "lexical_name": "canonicalDeltaTypeIICoefficientBase",
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
  "slug": "canonicaldeltatypeiicoefficientbase--4ff5999f9eb3b8bebc802a25",
  "source": {
    "blob": "5021d5f8e5305fe7606c07a20b66b9c41d818570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 370,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ff5999f9eb3b8bebc802a25d59c29de203f7edbac94dd88d9815a2c4dfa35a0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2def07aa7ef75768e35492189e93220991e807b8c0c809d806ae16752e147525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalDeltaTypeIICoefficientBase (N : ℕ) :
    DeltaTypeIICoefficientBase N where
  A := VaughanDeltaPolynomial N
  commRing := inferInstance
  threeTypical := polynomialThreeTypicalDelta N
  threeTypicalLaws := polynomialThreeTypicalDeltaLaws N
  leftVariable := fun m ↦ MvPolynomial.X (.inl m)
  rightVariable := fun k ↦ MvPolynomial.X (.inr k)
  realization := vaughanDeltaRealization N
  realization_phi := by simp [polynomialThreeTypicalDelta]
  realization_left := by
    intro m
    simp [vaughanDeltaRealization, vaughanDeltaVariableValue]
  realization_right := by
    intro k
    simp [vaughanDeltaRealization, vaughanDeltaVariableValue]

/-- Concrete endpoint: the canonical universal polynomial prefix evaluates
exactly to the literal Type II Vaughan prefix. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc5280c83d31f38bb632aad65742f72c461ac67d54420a2ae718e6384aa24bec9.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5021d5f8e5305fe7606c07a20b66b9c41d818570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
