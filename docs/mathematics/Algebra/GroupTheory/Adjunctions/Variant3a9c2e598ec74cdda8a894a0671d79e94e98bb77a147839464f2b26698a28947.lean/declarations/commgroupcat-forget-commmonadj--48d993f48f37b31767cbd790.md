# CommGroupCat.forget₂CommMonAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d49763c553531cb180971f5d72cf2c25ba845ebd35a36ba4ef17b635fa33da3",
  "kind": "def",
  "lexical_name": "CommGroupCat.forget₂CommMonAdj",
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
  "slug": "commgroupcat-forget-commmonadj--48d993f48f37b31767cbd790",
  "source": {
    "blob": "0b60721f1c7d4e5871d0fcd43e9b82b6ba6fd8bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48d993f48f37b31767cbd7900f6cae8800e1f330a668082e89d1fdd547241a7c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d49763c553531cb180971f5d72cf2c25ba845ebd35a36ba4ef17b635fa33da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CommGroupCat.forget₂CommMonAdj : forget₂ CommGroupCat CommMonCat ⊣ CommMonCat.units.{u} where
  homEquiv X Y :=
    { toFun := fun f => MonoidHom.toHomUnits f
      invFun := fun f => (Units.coeHom Y).comp f
      left_inv := fun f => MonoidHom.ext fun _ => rfl
      right_inv := fun f => MonoidHom.ext fun _ => Units.ext rfl }
  unit :=
    { app := fun X => { (@toUnits X _).toMonoidHom with }
      naturality := fun X Y f => MonoidHom.ext fun x => Units.ext rfl }
  counit :=
    { app := fun X => Units.coeHom X
      naturality := by intros; exact MonoidHom.ext fun x => rfl }
  homEquiv_unit := MonoidHom.ext fun _ => Units.ext rfl
  homEquiv_counit := MonoidHom.ext fun _ => rfl
#align CommGroup.forget₂_CommMon_adj CommGroupCat.forget₂CommMonAdj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b60721f1c7d4e5871d0fcd43e9b82b6ba6fd8bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
