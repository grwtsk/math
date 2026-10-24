# isColimitCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7cd92d6f097ce070d3af38e879b780e57817eea553693f73b02c32adf749c73",
  "kind": "def",
  "lexical_name": "isColimitCokernelCofork",
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
  "slug": "iscolimitcokernelcofork--9ed300a4afceb30abfc279ba",
  "source": {
    "blob": "0104f495e11dc3be9904c1880de18fa23b3c0c09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ed300a4afceb30abfc279baa7a4b9d8a74ec6cd2d701d1991a8a84581d3dfd5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7cd92d6f097ce070d3af38e879b780e57817eea553693f73b02c32adf749c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCokernelCofork (f : M ⟶ N) (g : N ⟶ P) (H : Function.Exact f.hom g.hom)
    (H₂ : Function.Surjective g.hom) :
    IsColimit (CokernelCofork.ofπ (f := f) g (by ext; exact H.apply_apply_eq_zero _)) := by
  refine IsColimit.ofIsoColimit (ModuleCat.cokernelIsColimit f) <|
    Cocone.ext (((Submodule.quotEquivOfEq _ _ (LinearMap.exact_iff.mp H)).toModuleIso).symm
    ≪≫ ((LinearMap.quotKerEquivOfSurjective _ H₂).toModuleIso)) ?_
  · rintro ⟨⟩ <;> ext x
    · simpa using! (Function.Exact.apply_apply_eq_zero H x).symm
    · rfl

end

/-- The category of R-modules has kernels, given by the inclusion of the kernel submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0104f495e11dc3be9904c1880de18fa23b3c0c09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
