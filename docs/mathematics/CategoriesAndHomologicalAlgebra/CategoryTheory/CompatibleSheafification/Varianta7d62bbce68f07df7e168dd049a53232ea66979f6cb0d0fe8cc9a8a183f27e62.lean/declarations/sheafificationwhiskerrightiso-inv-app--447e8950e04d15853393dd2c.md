# sheafificationWhiskerRightIso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1d4defa-07d9-300d-cf9e-04585250b38b",
  "kind": "theorem",
  "lexical_name": "sheafificationWhiskerRightIso_inv_app",
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
  "slug": "sheafificationwhiskerrightiso-inv-app--447e8950e04d15853393dd2c",
  "source": {
    "blob": "bc36719b4c47659d73c39ab81b8a42e636861b9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:447e8950e04d15853393dd2c59e58f2a20a0b3a981e3139c5f7b1db06f0b0efd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d4defa-07d9-300d-cf9e-04585250b38b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sheafificationWhiskerRightIso_inv_app :
    (J.sheafificationWhiskerRightIso F).inv.app P = (J.sheafifyCompIso F P).inv := by
  dsimp [sheafificationWhiskerRightIso, sheafifyCompIso]
  simp only [Category.id_comp, Category.comp_id]
  erw [Category.id_comp]

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Varianta7d62bbce68f07df7e168dd049a53232ea66979f6cb0d0fe8cc9a8a183f27e62.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc36719b4c47659d73c39ab81b8a42e636861b9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
