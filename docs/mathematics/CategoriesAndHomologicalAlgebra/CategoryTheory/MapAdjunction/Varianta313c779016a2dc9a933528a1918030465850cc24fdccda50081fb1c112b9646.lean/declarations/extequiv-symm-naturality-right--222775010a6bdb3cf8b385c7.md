# extEquiv_symm_naturality_right₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aca9dd0-5616-ae60-2a61-4160b2615ec7",
  "kind": "lemma",
  "lexical_name": "extEquiv_symm_naturality_right₀",
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
  "slug": "extequiv-symm-naturality-right--222775010a6bdb3cf8b385c7",
  "source": {
    "blob": "8f8fbd050dc0925228ad342a407621f06ce70290",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 137,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Varianta313c779016a2dc9a933528a1918030465850cc24fdccda50081fb1c112b9646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:222775010a6bdb3cf8b385c71ef4eb0cdac79b76766985a8186df8f88e68a17c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Varianta313c779016a2dc9a933528a1918030465850cc24fdccda50081fb1c112b9646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aca9dd0-5616-ae60-2a61-4160b2615ec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extEquiv_symm_naturality_right₀ (adj : F ⊣ G) {X : C} {Y₁ Y₂ : D} {n : ℕ}
    (e : Ext X (G.obj Y₁) n) (f : Y₁ ⟶ Y₂) :
    adj.extEquiv.symm (e.comp (Ext.mk₀ (G.map f)) (add_zero n)) =
    (adj.extEquiv.symm e).comp (Ext.mk₀ f) (add_zero n) := by
  simpa [Ext.mapExactFunctor_mk₀] using
    adj.extEquiv_symm_naturality_right e (Ext.mk₀ f) (add_zero n)

/-- The linear equivalence on `Ext`-modules that is induced by an adjunction
between exact linear functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Varianta313c779016a2dc9a933528a1918030465850cc24fdccda50081fb1c112b9646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Varianta313c779016a2dc9a933528a1918030465850cc24fdccda50081fb1c112b9646.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8fbd050dc0925228ad342a407621f06ce70290` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
