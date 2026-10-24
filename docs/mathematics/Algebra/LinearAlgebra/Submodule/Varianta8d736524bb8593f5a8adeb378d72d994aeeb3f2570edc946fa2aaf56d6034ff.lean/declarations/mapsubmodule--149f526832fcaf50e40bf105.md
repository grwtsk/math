# mapSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9013f930a45348806a44197d01658bbddb7db6ddea890018100eef0285cc1c0",
  "kind": "def",
  "lexical_name": "mapSubmodule",
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
  "slug": "mapsubmodule--149f526832fcaf50e40bf105",
  "source": {
    "blob": "dae58013ec3545ec86b6ed8437a997eb92146490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Varianta8d736524bb8593f5a8adeb378d72d994aeeb3f2570edc946fa2aaf56d6034ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:149f526832fcaf50e40bf1059a69c95959d540aa948ea3b752ac8db5ff0a3f62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Varianta8d736524bb8593f5a8adeb378d72d994aeeb3f2570edc946fa2aaf56d6034ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9013f930a45348806a44197d01658bbddb7db6ddea890018100eef0285cc1c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapSubmodule : ρ.invtSubmodule ≃o Submodule k[G] ρ.asModule where
  toFun p :=
    { toAddSubmonoid := (p : Submodule k V).toAddSubmonoid.map ρ.asModuleEquiv.symm
      smul_mem' := by
        simp only [AddSubsemigroup.mem_carrier, AddSubmonoid.mem_toSubsemigroup,
          AddSubmonoid.mem_map, Submodule.mem_toAddSubmonoid, forall_exists_index, and_imp,
          forall_apply_eq_imp_iff₂]
        refine fun x v hv ↦ ⟨ρ.asModuleEquiv (x • ρ.asModuleEquiv.symm v), ?_, rfl⟩
        simpa using ρ.asAlgebraHom_mem_of_forall_mem p (ρ.mem_invtSubmodule.mp p.property) v hv x }
  invFun q := ⟨(Submodule.orderIsoMapComap ρ.asModuleEquiv.symm).symm (q.restrictScalars k), by
    rw [invtSubmodule, Sublattice.mem_iInf]
    intro g v hv
    simp only [Submodule.orderIsoMapComap_symm_apply, Submodule.mem_comap] at hv ⊢
    convert! q.smul_mem (MonoidAlgebra.of k G g) hv using 1
    rw [LinearEquiv.coe_coe, ← asModuleEquiv_symm_map_rho]⟩
  left_inv p := by ext; simp
  right_inv q := by ext; aesop
  map_rel_iff' {p q} :=
    ⟨fun h x hx ↦ by
      suffices ρ.asModuleEquiv.symm x ∈
        (q : Submodule k V).toAddSubmonoid.map ρ.asModuleEquiv.symm by simpa using this
      exact h <| by simpa using hx,
    fun h x hx ↦ by aesop⟩

end Representation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Varianta8d736524bb8593f5a8adeb378d72d994aeeb3f2570edc946fa2aaf56d6034ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Varianta8d736524bb8593f5a8adeb378d72d994aeeb3f2570edc946fa2aaf56d6034ff.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dae58013ec3545ec86b6ed8437a997eb92146490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
