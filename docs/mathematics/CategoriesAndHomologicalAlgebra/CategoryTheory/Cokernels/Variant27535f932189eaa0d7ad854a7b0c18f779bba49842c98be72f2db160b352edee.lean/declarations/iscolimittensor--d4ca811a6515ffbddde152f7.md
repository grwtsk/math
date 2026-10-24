# isColimitTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0726b3fae22372334fa7998d3d44825fd9aa37ee150822c15a2e38cf230bcdf",
  "kind": "def",
  "lexical_name": "isColimitTensor",
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
  "slug": "iscolimittensor--d4ca811a6515ffbddde152f7",
  "source": {
    "blob": "7e4ef62f489c57176e3d9ea4e759239159aff157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant27535f932189eaa0d7ad854a7b0c18f779bba49842c98be72f2db160b352edee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4ca811a6515ffbddde152f7233c28ba790bf4c2fac432a3648a691a40cbf1b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant27535f932189eaa0d7ad854a7b0c18f779bba49842c98be72f2db160b352edee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0726b3fae22372334fa7998d3d44825fd9aa37ee150822c15a2e38cf230bcdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitTensor
    [PreservesColimit (parallelPair f₂ 0) (tensorLeft c₁.pt)]
    [PreservesColimit (parallelPair f₁ 0) (tensorRight Y₂)]
    [PreservesColimit (parallelPair f₁ 0) (tensorRight X₂)] :
    IsColimit (c₁.tensor c₂) :=
  haveI : HasBinaryCoproduct (((curriedTensor C).obj X₁).obj Y₂)
    (((curriedTensor C).obj Y₁).obj X₂) := by assumption
  IsColimit.ofIsoColimit (isColimitMapBifunctor hc₁ hc₂ (curriedTensor C))
    (Cofork.ext (Iso.refl _) (by dsimp only [Cofork.π]; simp [tensorHom_def]))

end CategoryTheory.Limits.CokernelCofork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant27535f932189eaa0d7ad854a7b0c18f779bba49842c98be72f2db160b352edee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant27535f932189eaa0d7ad854a7b0c18f779bba49842c98be72f2db160b352edee.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e4ef62f489c57176e3d9ea4e759239159aff157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
