# factors_left_of_factors_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0c1eb2-009e-3ff3-e04f-527046d53a1d",
  "kind": "theorem",
  "lexical_name": "factors_left_of_factors_add",
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
  "slug": "factors-left-of-factors-add--92c2971755b1f6206306f989",
  "source": {
    "blob": "d31664987a7c8fca1e47ed3507b3e4b305626a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92c2971755b1f6206306f989ae143f2ebcaff87ff2c61916fff98e7cb76ba50e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0c1eb2-009e-3ff3-e04f-527046d53a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factors_left_of_factors_add {X Y : C} {P : Subobject Y} (f g : X ⟶ Y)
    (w : P.Factors (f + g)) (wg : P.Factors g) : P.Factors f :=
  (factors_iff _ _).mpr ⟨P.factorThru (f + g) w - P.factorThru g wg, by simp⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Varianta23b67b2dfa3c629c8cf939d8386d65b70fc091cfde6c3a75877cff15f6f5ea6.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31664987a7c8fca1e47ed3507b3e4b305626a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
