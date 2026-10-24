# ringModuleOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31f4f89422fe76b371dbc556381e92b12d10e6d05044f12e737d4f1c381c7a65",
  "kind": "def",
  "lexical_name": "ringModuleOf",
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
  "slug": "ringmoduleof--3d434f3d1fd1fe91eacf1014",
  "source": {
    "blob": "ab9ba471259a2b2625021c90af021e73648d061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 336,
    "path": "GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d434f3d1fd1fe91eacf1014f9970f8e492cb1cb0c4b318e063194120eb65f0e",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31f4f89422fe76b371dbc556381e92b12d10e6d05044f12e737d4f1c381c7a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ringModuleOf [IsLieAbelian M] (E : Extension R M L) : LieRingModule L M where
  bracket x y := E.toKer.symm ⁅E.proj_surjective.hasRightInverse.choose x, E.toKer y⁆
  add_lie x y m := by
    set h := E.proj_surjective.hasRightInverse
    rw [← map_add, ← add_lie, eq_comm, EquivLike.apply_eq_iff_eq, ← sub_eq_zero, ← sub_lie]
    exact trivial_lie_zero E.proj.ker _ ⟨_, by simp [h.choose_spec _]⟩ (E.toKer m)
  lie_add x m n := by simp [← map_add, ← lie_add]
  leibniz_lie x y m := by
    set h := E.proj_surjective.hasRightInverse
    have aux (z : E.proj.ker) : ⁅⁅h.choose x, h.choose y⁆, z⁆ = ⁅h.choose ⁅x, y⁆, z⁆ := by
      rw [← sub_eq_zero, ← sub_lie]
      exact trivial_lie_zero E.proj.ker _ ⟨_, by simp [h.choose_spec _]⟩ z
    rw [← map_add, EquivLike.apply_eq_iff_eq, LieEquiv.apply_symm_apply, LieEquiv.apply_symm_apply,
      leibniz_lie, aux]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9ba471259a2b2625021c90af021e73648d061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
