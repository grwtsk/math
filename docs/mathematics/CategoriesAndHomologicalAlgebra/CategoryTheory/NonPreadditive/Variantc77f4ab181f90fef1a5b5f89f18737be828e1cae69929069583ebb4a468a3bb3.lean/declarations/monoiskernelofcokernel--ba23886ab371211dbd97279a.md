# monoIsKernelOfCokernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16a4334289ba9dd4c344dd80cf995d3db4c22721496809254fad1a2027cabff4",
  "kind": "def",
  "lexical_name": "monoIsKernelOfCokernel",
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
  "slug": "monoiskernelofcokernel--ba23886ab371211dbd97279a",
  "source": {
    "blob": "641cc7b400e3849dcd1e5f1f841f34d65e1f2609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba23886ab371211dbd97279a49e71b565f99afeb46d222e2e37a9f224e65ea2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16a4334289ba9dd4c344dd80cf995d3db4c22721496809254fad1a2027cabff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoIsKernelOfCokernel [Mono f] (s : Cofork f 0) (h : IsColimit s) :
    IsLimit (KernelFork.ofι f (CokernelCofork.condition s)) :=
  IsKernel.isoKernel _ _
    (kernel.ofCompIso _ _ (Limits.IsColimit.coconePointUniqueUpToIso h (colimit.isColimit _))
      (CoconeMorphism.w (Limits.IsColimit.uniqueUpToIso h <| colimit.isColimit _).hom _))
    (asIso <| Abelian.factorThruImage f) (Abelian.image.fac f)
#align category_theory.non_preadditive_abelian.mono_is_kernel_of_cokernel CategoryTheory.NonPreadditiveAbelian.monoIsKernelOfCokernel

end CokernelOfKernel

section

/-- The composite `A ⟶ A ⨯ A ⟶ cokernel (Δ A)`, where the first map is `(𝟙 A, 0)` and the second map
    is the canonical projection into the cokernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641cc7b400e3849dcd1e5f1f841f34d65e1f2609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
