# pullback_eq_top_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2de649d6-bab5-4dae-e984-c48fcdeb3d52",
  "kind": "theorem",
  "lexical_name": "pullback_eq_top_of_mem",
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
  "slug": "pullback-eq-top-of-mem--900f161b6f14da51b6581ee5",
  "source": {
    "blob": "951ba63ca5fb2ff8c7bfe4fcf8d22a72e6fe619a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 498,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant01b18f28e39e6fb773a1fd837c288dfe828f3cb8f5625d79bffcccc0c7c6cb5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:900f161b6f14da51b6581ee5024851703005b9026492342a3853e0c91da19669",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant01b18f28e39e6fb773a1fd837c288dfe828f3cb8f5625d79bffcccc0c7c6cb5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2de649d6-bab5-4dae-e984-c48fcdeb3d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_eq_top_of_mem (S : Sieve X) {f : Y ⟶ X} : S f → S.pullback f = ⊤ :=
  (pullback_eq_top_iff_mem f).1
#align category_theory.sieve.pullback_eq_top_of_mem CategoryTheory.Sieve.pullback_eq_top_of_mem

/-- Push a sieve `R` on `Y` forward along an arrow `f : Y ⟶ X`: `gf : Z ⟶ X` is in the sieve if `gf`
factors through some `g : Z ⟶ Y` which is in `R`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant01b18f28e39e6fb773a1fd837c288dfe828f3cb8f5625d79bffcccc0c7c6cb5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant01b18f28e39e6fb773a1fd837c288dfe828f3cb8f5625d79bffcccc0c7c6cb5a.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951ba63ca5fb2ff8c7bfe4fcf8d22a72e6fe619a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
