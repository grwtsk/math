# freeHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3b284cfb85bf2fb5d6b6c1bac0424a0461999903f85dbcb0f21e555a248e45a",
  "kind": "def",
  "lexical_name": "freeHomEquiv",
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
  "slug": "freehomequiv--160b3f018258f4ea7c353cd4",
  "source": {
    "blob": "6d3dfb8ef1fc7d6108656185498ab2fab6805075",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 39,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:160b3f018258f4ea7c353cd4c6daf9e0992c5c0d8c4b1ec29d0cd78d3fcd76a9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3b284cfb85bf2fb5d6b6c1bac0424a0461999903f85dbcb0f21e555a248e45a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def freeHomEquiv (M : SheafOfModules.{u} R) {I : Type u} :
    (free I ⟶ M) ≃ (I → M.sections) where
  toFun f i := M.unitHomEquiv (Sigma.ι (fun (_ : I) ↦ unit R) i ≫ f)
  invFun s := Sigma.desc (fun i ↦ M.unitHomEquiv.symm (s i))
  left_inv s := Sigma.hom_ext _ _ (by simp)
  right_inv f := by ext1 i; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variant2e2b7fe89d0775dc1a79f54bf4ed4bba21edcddf4530ebbe9e8ccb12efbcf3d1.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3dfb8ef1fc7d6108656185498ab2fab6805075` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
