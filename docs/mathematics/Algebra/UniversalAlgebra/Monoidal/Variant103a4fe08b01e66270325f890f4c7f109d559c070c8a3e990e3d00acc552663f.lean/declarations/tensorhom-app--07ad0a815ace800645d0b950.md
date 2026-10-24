# tensorHom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29ac5a56-6efd-7523-b216-3e97c45952c5",
  "kind": "lemma",
  "lexical_name": "tensorHom_app",
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
  "slug": "tensorhom-app--07ad0a815ace800645d0b950",
  "source": {
    "blob": "3d69ac8129651ad1fcc82876c96d1c17cca455a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 188,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07ad0a815ace800645d0b950024134bed2c151ef49869977fd9db9394b03f597",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29ac5a56-6efd-7523-b216-3e97c45952c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorHom_app (f : M₁ ⟶ M₂) (g : M₃ ⟶ M₄) (X : Cᵒᵖ) :
    dsimp% (f ⊗ₘ g).app' X =
      MonoidalCategory.tensorHom (f.app' X) (g.app' X) := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant103a4fe08b01e66270325f890f4c7f109d559c070c8a3e990e3d00acc552663f.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d69ac8129651ad1fcc82876c96d1c17cca455a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
