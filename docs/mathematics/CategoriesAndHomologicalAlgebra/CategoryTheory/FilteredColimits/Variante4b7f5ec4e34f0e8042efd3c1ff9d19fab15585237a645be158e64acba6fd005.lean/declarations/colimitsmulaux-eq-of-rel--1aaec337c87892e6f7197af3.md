# colimitSMulAux_eq_of_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a054c5f50fbde6e04d0036e5accece2a9ab1a5de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dacdeeef-eec0-759c-227d-76ea4e4a2d69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2655a92-4123-cf82-adcb-ba4c0060f099",
  "kind": "theorem",
  "lexical_name": "colimitSMulAux_eq_of_rel",
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
  "slug": "colimitsmulaux-eq-of-rel--1aaec337c87892e6f7197af3",
  "source": {
    "blob": "a054c5f50fbde6e04d0036e5accece2a9ab1a5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aaec337c87892e6f7197af32b475550257fb07e28cf28a48ab2b2d193e7d9c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2655a92-4123-cf82-adcb-ba4c0060f099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitSMulAux_eq_of_rel (r : R) (x y : Σ j, F.obj j)
    (h : Types.FilteredColimit.Rel (F ⋙ forget (ModuleCat R)) x y) :
    colimitSMulAux F r x = colimitSMulAux F r y := by
  apply M.mk_eq
  obtain ⟨k, f, g, hfg⟩ := h
  use k, f, g
  simp only [Functor.comp_obj, Functor.comp_map, ConcreteCategory.hom_ofHom,
    TypeCat.Fun.coe_mk] at hfg
  simp [hfg]

/-- Scalar multiplication in the colimit. See also `colimitSMulAux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a054c5f50fbde6e04d0036e5accece2a9ab1a5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
