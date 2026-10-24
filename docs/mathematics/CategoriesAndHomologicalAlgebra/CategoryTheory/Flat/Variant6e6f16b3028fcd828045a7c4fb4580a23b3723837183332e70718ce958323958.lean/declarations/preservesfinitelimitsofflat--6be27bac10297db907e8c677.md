# preservesFiniteLimitsOfFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71ffaede61cb35a5a3797eeed2452d8716434ef2b1f04636752919a74a1c9069",
  "kind": "def",
  "lexical_name": "preservesFiniteLimitsOfFlat",
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
  "slug": "preservesfinitelimitsofflat--6be27bac10297db907e8c677",
  "source": {
    "blob": "48dabd82aa7b3be221ea572cf6bd92847b339d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6be27bac10297db907e8c6772d649b045383f92a990ae33d2c2c108c6e941f46",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71ffaede61cb35a5a3797eeed2452d8716434ef2b1f04636752919a74a1c9069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def preservesFiniteLimitsOfFlat (F : C ⥤ D) [RepresentablyFlat F] :
    PreservesFiniteLimits F := by
  apply preservesFiniteLimitsOfPreservesFiniteLimitsOfSize
  intro J _ _; constructor
  intro K; constructor
  intro c hc
  exact
    { lift := PreservesFiniteLimitsOfFlat.lift F hc
      fac := PreservesFiniteLimitsOfFlat.fac F hc
      uniq := fun s m h => by
        apply PreservesFiniteLimitsOfFlat.uniq F hc
        exact h
        exact PreservesFiniteLimitsOfFlat.fac F hc s }
#align category_theory.preserves_finite_limits_of_flat CategoryTheory.preservesFiniteLimitsOfFlat

/-- If `C` is finitely cocomplete, then `F : C ⥤ D` is representably flat iff it preserves
finite limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant6e6f16b3028fcd828045a7c4fb4580a23b3723837183332e70718ce958323958.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48dabd82aa7b3be221ea572cf6bd92847b339d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
