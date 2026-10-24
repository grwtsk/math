# NatTrans.mono_iff_mono_app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:830e42d5-8ed2-db87-d93d-f10787ed4ac2",
  "kind": "theorem",
  "lexical_name": "NatTrans.mono_iff_mono_app'",
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
  "slug": "nattrans-mono-iff-mono-app--d9c64b0706333a5ac39300e2",
  "source": {
    "blob": "31ed372ba6b2873211a76ab40bd27e3de7566f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant40ec1b0acd1dca129087cf691ac47342c69581473317438335bd52ab79193a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c64b0706333a5ac39300e28280d29e36b488650710b6170e205d5194d7f2eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant40ec1b0acd1dca129087cf691ac47342c69581473317438335bd52ab79193a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:830e42d5-8ed2-db87-d93d-f10787ed4ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NatTrans.mono_iff_mono_app' {F G : C ⥤ D} (η : F ⟶ G) : Mono η ↔ ∀ c, Mono (η.app c) := by
  constructor
  · intro h c
    exact (inferInstance : Mono (((evaluation _ _).obj c).map η))
  · intro _
    apply NatTrans.mono_of_mono_app

end

section

variable [∀ a b : C, HasProductsOfShape (a ⟶ b) D]

/-- The right adjoint of evaluation. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant40ec1b0acd1dca129087cf691ac47342c69581473317438335bd52ab79193a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant40ec1b0acd1dca129087cf691ac47342c69581473317438335bd52ab79193a03.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ed372ba6b2873211a76ab40bd27e3de7566f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
