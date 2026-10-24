# Basis.det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1ef5f767a42d0c3619803c0086af34cc7cc1bec13a26122840e52350345fefd",
  "kind": "def",
  "lexical_name": "Basis.det",
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
  "slug": "basis-det--ac685293ed1caca4e36064fd",
  "source": {
    "blob": "563c3690a5fe84f8960a7696bf0810bf6ea964c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 507,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac685293ed1caca4e36064fd0e1cdeea7c07689975a1887b6b4abeb071543105",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1ef5f767a42d0c3619803c0086af34cc7cc1bec13a26122840e52350345fefd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def Basis.det : AlternatingMap R M R ι where
  toFun v := det (e.toMatrix v)
  map_add' := by
    intro inst v i x y
    cases Subsingleton.elim inst ‹_›
    simp only [e.toMatrix_update, LinearEquiv.map_add, Finsupp.coe_add]
    -- Porting note: was `exact det_update_column_add _ _ _ _`
    convert det_updateColumn_add (e.toMatrix v) i (e.repr x) (e.repr y)
  map_smul' := by
    intro inst u i c x
    cases Subsingleton.elim inst ‹_›
    simp only [e.toMatrix_update, Algebra.id.smul_eq_mul, LinearEquiv.map_smul]
    -- Porting note: was `apply det_update_column_smul`
    convert det_updateColumn_smul (e.toMatrix u) i c (e.repr x)
  map_eq_zero_of_eq' := by
    intro v i j h hij
    -- Porting note: added
    simp only
    rw [← Function.update_eq_self i v, h, ← det_transpose, e.toMatrix_update, ← updateRow_transpose,
      ← e.toMatrix_transpose_apply]
    apply det_zero_of_row_eq hij
    rw [updateRow_ne hij.symm, updateRow_self]
#align basis.det Basis.det

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563c3690a5fe84f8960a7696bf0810bf6ea964c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
