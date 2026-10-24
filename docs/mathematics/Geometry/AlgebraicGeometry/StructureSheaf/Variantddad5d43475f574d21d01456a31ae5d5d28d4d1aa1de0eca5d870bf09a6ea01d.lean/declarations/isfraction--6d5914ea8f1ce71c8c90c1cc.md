# IsFraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f57ebd3527fc6c1488fb918621abee72f21613c03f2692064d279ff63bb7bdc",
  "kind": "def",
  "lexical_name": "IsFraction",
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
  "slug": "isfraction--6d5914ea8f1ce71c8c90c1cc",
  "source": {
    "blob": "c12a1efe941e2216f5f2f6721459019d8ee00d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d5914ea8f1ce71c8c90c1cc238e00c56fd663127b03b994eeeee3bda25a2c26",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f57ebd3527fc6c1488fb918621abee72f21613c03f2692064d279ff63bb7bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsFraction {U : Opens (ProjectiveSpectrum.top 𝒜)} (f : ∀ x : U, at x.1) : Prop :=
  ∃ (i : ℕ) (r s : 𝒜 i),
    ∀ x : U, ∃ s_nin : s.1 ∉ x.1.asHomogeneousIdeal, f x = Quotient.mk'' ⟨i, r, s, s_nin⟩
#align algebraic_geometry.projective_spectrum.structure_sheaf.is_fraction AlgebraicGeometry.ProjectiveSpectrum.StructureSheaf.IsFraction
variable (𝒜)

/--
The predicate `IsFraction` is "prelocal", in the sense that if it holds on `U` it holds on any open
subset `V` of `U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c12a1efe941e2216f5f2f6721459019d8ee00d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
