# equivToUnitHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53c905ce67c0f47b9acf49f60c3c36dc09415c873c3119535942966815628364",
  "kind": "def",
  "lexical_name": "equivToUnitHom",
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
  "slug": "equivtounithom--a722e2b90e130b186512a9e8",
  "source": {
    "blob": "1a4f9d43e29eae9bcb559cf515bfcbc90efdae91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 190,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a722e2b90e130b186512a9e8a349f61a86d650ab653824f020f43271422175b5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53c905ce67c0f47b9acf49f60c3c36dc09415c873c3119535942966815628364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivToUnitHom : MulChar R R' ≃ (Rˣ →* R'ˣ) where
  toFun := toUnitHom
  invFun := ofUnitHom
  left_inv := by
    intro χ
    ext x
    rw [ofUnitHom_coe, coe_toUnitHom]
  right_inv := by
    intro f
    ext x
    simp only [coe_toUnitHom, ofUnitHom_coe]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a4f9d43e29eae9bcb559cf515bfcbc90efdae91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
