# extMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7de22028e501deda0ccb37c21890ffa7c4029d46896dcbe66f275f01ed398e6",
  "kind": "def",
  "lexical_name": "extMk",
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
  "slug": "extmk--d08f405ec53dad84c7f0c7e2",
  "source": {
    "blob": "d838f93fcac3fff10155e6be8376c8b15b4196c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d08f405ec53dad84c7f0c7e2b61acff0457b944a8f1ab4857d80f042d9878d9e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7de22028e501deda0ccb37c21890ffa7c4029d46896dcbe66f275f01ed398e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extMk {n : ℕ} (f : R.complex.X n ⟶ Y) (m : ℕ) (hm : n + 1 = m)
    (hf : R.complex.d m n ≫ f = 0) :
    Ext X Y n :=
  R.extEquivCohomologyClass.symm
    (.mk (Cocycle.toSingleMk ((R.cochainComplexXIso (-n) n rfl).hom ≫ f) (by simp)
      (-m) (by lia) (by simpa [cochainComplex_d _ _ _ m n rfl rfl])))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d838f93fcac3fff10155e6be8376c8b15b4196c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
