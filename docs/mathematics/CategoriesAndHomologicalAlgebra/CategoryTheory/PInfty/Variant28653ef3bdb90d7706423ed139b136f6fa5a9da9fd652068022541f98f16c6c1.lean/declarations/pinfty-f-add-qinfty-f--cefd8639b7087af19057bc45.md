# PInfty_f_add_QInfty_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4598f8d1-dba1-85a7-77ec-8122b7fdf12c",
  "kind": "theorem",
  "lexical_name": "PInfty_f_add_QInfty_f",
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
  "slug": "pinfty-f-add-qinfty-f--cefd8639b7087af19057bc45",
  "source": {
    "blob": "550afdf68a5075081b7222bdde18a7ff3a4a3b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant28653ef3bdb90d7706423ed139b136f6fa5a9da9fd652068022541f98f16c6c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cefd8639b7087af19057bc45ea27ed23736f716de695b33d6707fbb52e34c8eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant28653ef3bdb90d7706423ed139b136f6fa5a9da9fd652068022541f98f16c6c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4598f8d1-dba1-85a7-77ec-8122b7fdf12c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PInfty_f_add_QInfty_f (n : ℕ) : (PInfty.f n : X _⦋n⦌ ⟶ _) + QInfty.f n = 𝟙 _ :=
  HomologicalComplex.congr_hom PInfty_add_QInfty n

variable (C)

/-- `PInfty` induces a natural transformation, i.e. an endomorphism of
the functor `alternatingFaceMapComplex C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant28653ef3bdb90d7706423ed139b136f6fa5a9da9fd652068022541f98f16c6c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant28653ef3bdb90d7706423ed139b136f6fa5a9da9fd652068022541f98f16c6c1.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `550afdf68a5075081b7222bdde18a7ff3a4a3b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
