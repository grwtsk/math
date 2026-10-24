# isColimitCoforkMapOfIsColimit'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da501b1f6b78355f5964235933306330ea0100977c6ab9aedfabd8a179142412",
  "kind": "def",
  "lexical_name": "isColimitCoforkMapOfIsColimit'",
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
  "slug": "iscolimitcoforkmapofiscolimit--2d0417abd54b395db408306f",
  "source": {
    "blob": "91f7a690b69da524326df96630e8f28c2bd96257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d0417abd54b395db408306f42da41b94c74449bfd09ad880c824967fae36319",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da501b1f6b78355f5964235933306330ea0100977c6ab9aedfabd8a179142412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoforkMapOfIsColimit' [PreservesColimit (parallelPair f 0) G]
    (l : IsColimit (CokernelCofork.ofπ h w)) :
    IsColimit
      (CokernelCofork.ofπ (G.map h) (by simp only [← G.map_comp, w, Functor.map_zero]) :
        Cofork (G.map f) 0) :=
  isColimitMapCoconeCoforkEquiv' G w (isColimitOfPreserves G l)

variable (f)
variable [HasCokernel f]

/--
If `G` preserves cokernels and `C` has them, then the cofork constructed of the mapped morphisms of
a cokernel cofork is a colimit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f7a690b69da524326df96630e8f28c2bd96257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
