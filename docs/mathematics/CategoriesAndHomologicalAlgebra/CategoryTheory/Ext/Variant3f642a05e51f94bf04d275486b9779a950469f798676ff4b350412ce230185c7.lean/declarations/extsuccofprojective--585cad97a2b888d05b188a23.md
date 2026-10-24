# extSuccOfProjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e06c7518b7e9dd04fdfe78c4ec839c12e7837544fc4071d070ba792ed7db8f42",
  "kind": "def",
  "lexical_name": "extSuccOfProjective",
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
  "slug": "extsuccofprojective--585cad97a2b888d05b188a23",
  "source": {
    "blob": "7fa46a35f407c6ec5b0b2b106f1e37f4a49ef902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant3f642a05e51f94bf04d275486b9779a950469f798676ff4b350412ce230185c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:585cad97a2b888d05b188a23c6c1ce9168069dbaa95cac0d0638dfe91c944d03",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant3f642a05e51f94bf04d275486b9779a950469f798676ff4b350412ce230185c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e06c7518b7e9dd04fdfe78c4ec839c12e7837544fc4071d070ba792ed7db8f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extSuccOfProjective (X Y : C) [Projective X] (n : ℕ) :
    ((Ext R C (n + 1)).obj (Opposite.op X)).obj Y ≅ 0 :=
  let E := (((linearYoneda R C).obj Y).rightOp.leftDerivedObjProjectiveSucc n X).unop.symm
  E ≪≫
    { hom := 0
      inv := 0
      hom_inv_id := by
        let Z : (ModuleCat R)ᵒᵖ := 0
        rw [← (0 : 0 ⟶ Z.unop).unop_op, ← (0 : Z.unop ⟶ 0).unop_op, ← unop_id, ← unop_comp]
        aesop }
set_option linter.uppercaseLean3 false in
#align Ext_succ_of_projective extSuccOfProjective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant3f642a05e51f94bf04d275486b9779a950469f798676ff4b350412ce230185c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant3f642a05e51f94bf04d275486b9779a950469f798676ff4b350412ce230185c7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa46a35f407c6ec5b0b2b106f1e37f4a49ef902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
