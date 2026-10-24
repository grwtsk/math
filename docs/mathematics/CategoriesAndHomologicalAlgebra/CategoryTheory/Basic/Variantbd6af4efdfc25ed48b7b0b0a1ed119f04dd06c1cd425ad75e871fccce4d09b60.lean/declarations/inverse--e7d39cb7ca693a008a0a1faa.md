# inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ba10aa4cf86c8418619518f441e2c7d7163cba2a958cb12f71a7c567f5e4525",
  "kind": "def",
  "lexical_name": "inverse",
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
  "slug": "inverse--e7d39cb7ca693a008a0a1faa",
  "source": {
    "blob": "67dbc639786825e6178af5bcc4400c2d4683cef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7d39cb7ca693a008a0a1faa437e823a78c4dd771bf0413b11eea5ccaa4eadd5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ba10aa4cf86c8418619518f441e2c7d7163cba2a958cb12f71a7c567f5e4525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inverse : MonCat.{u} ⥤ Mon (Type u) where
  obj A :=
    { X := A
      mon :=
        { one := ↾fun _ => 1
          mul := ↾fun p => p.1 * p.2
          one_mul := by cat_disch
          mul_one := by cat_disch
          mul_assoc := by ext ⟨⟨x, y⟩, z⟩; simp [_root_.mul_assoc] } }
  map f := .mk' (↾f)
    (one_f := by
      #adaptation_note /-- Prior to https://github.com/leanprover/lean4/pull/12244
      this argument was provided by the auto_param. -/
      simp +instances only
      cat_disch)
    (mul_f := by
      #adaptation_note /-- Prior to https://github.com/leanprover/lean4/pull/12244
      this argument was provided by the auto_param. -/
      simp +instances only
      cat_disch)

end MonTypeEquivalenceMon

open MonTypeEquivalenceMon

/-- The category of internal monoid objects in `Type`
is equivalent to the category of "native" bundled monoids.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67dbc639786825e6178af5bcc4400c2d4683cef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
