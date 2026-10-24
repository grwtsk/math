# t'_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d247bc-0865-7c4f-aa6e-bc5c2941d33f",
  "kind": "theorem",
  "lexical_name": "t'_inv",
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
  "slug": "t-inv--234bfde821c3fe0512d0b4cc",
  "source": {
    "blob": "e52f68debef701c2d4dae25ea3bff431aa0425d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:234bfde821c3fe0512d0b4ccd08fe60ff71b4e6d908a48ef249638adeb686eca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d247bc-0865-7c4f-aa6e-bc5c2941d33f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t'_inv (i j k : D.J) :
    D.t' i j k ≫ (pullbackSymmetry _ _).hom ≫ D.t' j i k ≫ (pullbackSymmetry _ _).hom = 𝟙 _ := by
  rw [← cancel_mono (pullback.fst (D.f i j) (D.f i k))]
  simp [t_fac, t_fac_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52f68debef701c2d4dae25ea3bff431aa0425d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
