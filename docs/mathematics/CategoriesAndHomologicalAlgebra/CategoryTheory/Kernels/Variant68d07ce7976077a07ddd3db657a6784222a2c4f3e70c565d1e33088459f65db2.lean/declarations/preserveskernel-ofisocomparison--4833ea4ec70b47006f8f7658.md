# PreservesKernel.ofIsoComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4653af96b49e41a81a5805ed35afa90db3161c9048f4526eaf87e873672a50b4",
  "kind": "def",
  "lexical_name": "PreservesKernel.ofIsoComparison",
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
  "slug": "preserveskernel-ofisocomparison--4833ea4ec70b47006f8f7658",
  "source": {
    "blob": "4d96074629051a6dc2a35edb3943914704a86e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4833ea4ec70b47006f8f765845c21ab235baaf71a419a3894d666760e09163d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4653af96b49e41a81a5805ed35afa90db3161c9048f4526eaf87e873672a50b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PreservesKernel.ofIsoComparison [i : IsIso (kernelComparison f G)] :
    PreservesLimit (parallelPair f 0) G := by
  apply preservesLimitOfPreservesLimitCone (kernelIsKernel f)
  apply (isLimitMapConeForkEquiv' G (kernel.condition f)).symm _
  exact @IsLimit.ofPointIso _ _ _ _ _ _ _ (kernelIsKernel (G.map f)) i
#align category_theory.limits.preserves_kernel.of_iso_comparison CategoryTheory.Limits.PreservesKernel.ofIsoComparison

variable [PreservesLimit (parallelPair f 0) G]

/-- If `G` preserves the kernel of `f`, then the kernel comparison map for `G` at `f` is
an isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d96074629051a6dc2a35edb3943914704a86e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
