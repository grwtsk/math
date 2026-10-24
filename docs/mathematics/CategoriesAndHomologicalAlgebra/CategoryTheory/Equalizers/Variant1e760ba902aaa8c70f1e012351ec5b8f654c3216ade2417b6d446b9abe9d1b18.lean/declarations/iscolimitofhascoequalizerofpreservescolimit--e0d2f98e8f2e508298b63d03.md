# isColimitOfHasCoequalizerOfPreservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d454b8634987b1f64d424e71f4508319b3caf285d58b32bec3aebbc4d7b5390",
  "kind": "def",
  "lexical_name": "isColimitOfHasCoequalizerOfPreservesColimit",
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
  "slug": "iscolimitofhascoequalizerofpreservescolimit--e0d2f98e8f2e508298b63d03",
  "source": {
    "blob": "b7338bf146abe30552ee3141a767d800b814137e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0d2f98e8f2e508298b63d03901cfdd9535f4b165f5304033762512e3c69ed01",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d454b8634987b1f64d424e71f4508319b3caf285d58b32bec3aebbc4d7b5390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfHasCoequalizerOfPreservesColimit [PreservesColimit (parallelPair f g) G] :
    IsColimit (Cofork.ofπ (G.map (coequalizer.π f g)) (by
      simp only [← G.map_comp]; rw [coequalizer.condition]) : Cofork (G.map f) (G.map g)) :=
  isColimitCoforkMapOfIsColimit G _ (coequalizerIsCoequalizer f g)

variable [HasCoequalizer (G.map f) (G.map g)]

/-- If the coequalizer comparison map for `G` at `(f,g)` is an isomorphism, then `G` preserves the
coequalizer of `(f,g)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant1e760ba902aaa8c70f1e012351ec5b8f654c3216ade2417b6d446b9abe9d1b18.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7338bf146abe30552ee3141a767d800b814137e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
