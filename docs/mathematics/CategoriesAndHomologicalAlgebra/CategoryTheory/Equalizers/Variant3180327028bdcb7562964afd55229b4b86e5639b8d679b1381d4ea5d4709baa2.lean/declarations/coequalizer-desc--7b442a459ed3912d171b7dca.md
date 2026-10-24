# coequalizer.desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1647123fa51a8f1529c852e28ef0c177dd98eb907daeb3fe1957858d1af71d69",
  "kind": "abbrev",
  "lexical_name": "coequalizer.desc",
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
  "slug": "coequalizer-desc--7b442a459ed3912d171b7dca",
  "source": {
    "blob": "4d936506d9f9eace0673f0cc79aa8ee4d6e85278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 978,
    "line": 972,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b442a459ed3912d171b7dcaca30d6ddac9b232d80f38a928b421fae03713148",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1647123fa51a8f1529c852e28ef0c177dd98eb907daeb3fe1957858d1af71d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 972–978.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev coequalizer.desc {W : C} (k : Y ⟶ W) (h : f ≫ k = g ≫ k) :
    coequalizer f g ⟶ W :=
  colimit.desc (parallelPair f g) (Cofork.ofπ k h)
#align category_theory.limits.coequalizer.desc CategoryTheory.Limits.coequalizer.desc

-- Porting note: removing simp since simp can prove this and reassoc version
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean#L972).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d936506d9f9eace0673f0cc79aa8ee4d6e85278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
