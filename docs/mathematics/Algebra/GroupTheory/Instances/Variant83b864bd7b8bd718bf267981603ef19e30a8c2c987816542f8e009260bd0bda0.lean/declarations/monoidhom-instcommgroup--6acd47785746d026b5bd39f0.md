# MonoidHom.instCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21c01f6e496004923705b6ca4bdc15e99fcd06c558a83067edd17b1679a205a3",
  "kind": "instance",
  "lexical_name": "MonoidHom.instCommGroup",
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
  "slug": "monoidhom-instcommgroup--6acd47785746d026b5bd39f0",
  "source": {
    "blob": "e291741a0df28ec8c8628903145d8733c18d60b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 58,
    "path": "GRWTSK/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6acd47785746d026b5bd39f05bc41d8b8a45225a5c336224df443a29acb75a04",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21c01f6e496004923705b6ca4bdc15e99fcd06c558a83067edd17b1679a205a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MonoidHom.instCommGroup {M G} [MulOneClass M] [CommGroup G] : CommGroup (M →* G) :=
  { MonoidHom.instCommMonoid with
    inv := Inv.inv,
    div := Div.div,
    div_eq_mul_inv := by
      intros
      ext
      apply div_eq_mul_inv,
    inv_mul_cancel := by intros; ext; apply inv_mul_cancel,
    zpow := fun n f =>
      { toFun := fun x => f x ^ n,
        map_one' := by simp,
        map_mul' := fun x y => by simp [mul_zpow] },
    zpow_zero' := fun f => by
      ext x
      simp,
    zpow_succ' := fun n f => by
      ext x
      simp [zpow_add_one],
    zpow_neg' := fun n f => by
      ext x
      simp [zpow_natCast, -Int.natCast_add] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e291741a0df28ec8c8628903145d8733c18d60b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
