# inhomogeneousCochainsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62e23637803da5ee21cd01507ddeeb53ebf48c7e52b027bb5b94495f5e64a833",
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
  "slug": "inhomogeneouscochainsiso--2b6dc04fd571de3e4b6305bc",
  "source": {
    "blob": "85f8e138c2384aea266695f5c55cc59d39a6870a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b6dc04fd571de3e4b6305bc353f2410735dd92247b50cccd8d959864eb5732a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62e23637803da5ee21cd01507ddeeb53ebf48c7e52b027bb5b94495f5e64a833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–220.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85f8e138c2384aea266695f5c55cc59d39a6870a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
