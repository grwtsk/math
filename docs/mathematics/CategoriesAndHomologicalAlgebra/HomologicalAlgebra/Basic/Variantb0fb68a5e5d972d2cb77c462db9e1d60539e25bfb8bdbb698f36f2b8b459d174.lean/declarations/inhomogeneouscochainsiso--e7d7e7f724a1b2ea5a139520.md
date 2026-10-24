# inhomogeneousCochainsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed64eabd6edb17bcaf6bffdc77fe2891b1f1715628f957974ba7a5305764eb73",
  "kind": "def",
  "lexical_name": "inhomogeneousCochainsIso",
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
  "slug": "inhomogeneouscochainsiso--e7d7e7f724a1b2ea5a139520",
  "source": {
    "blob": "da4df98687771b8031e52a5746ad2be94f15fd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7d7e7f724a1b2ea5a13952035edab6ba8e10c375c3db6518ad7ce7bc7a8d56a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed64eabd6edb17bcaf6bffdc77fe2891b1f1715628f957974ba7a5305764eb73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inhomogeneousCochainsIso : inhomogeneousCochains A ≅ linearYonedaObjResolution A := by
/- Porting note: just needs a `refine'` now, instead of term mode -/
  refine' HomologicalComplex.Hom.isoOfComponents (fun i =>
    (Rep.diagonalHomEquiv i A).toModuleIso.symm) _
  rintro i j (h : i + 1 = j)
  subst h
  simp only [CochainComplex.of_d, d_eq, Category.assoc, Iso.symm_hom, Iso.hom_inv_id,
    Category.comp_id]
#align group_cohomology.inhomogeneous_cochains_iso GroupCohomology.inhomogeneousCochainsIso

end GroupCohomology

open GroupCohomology

/-- The group cohomology of a `k`-linear `G`-representation `A`, as the cohomology of its complex
of inhomogeneous cochains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da4df98687771b8031e52a5746ad2be94f15fd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
