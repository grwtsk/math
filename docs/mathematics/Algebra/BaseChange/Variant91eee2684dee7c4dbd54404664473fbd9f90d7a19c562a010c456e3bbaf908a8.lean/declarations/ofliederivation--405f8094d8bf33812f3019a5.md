# ofLieDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:770a372a845fba845794f06102e1e79ab9a736978ad58a9eae498469274fdaff",
  "kind": "def",
  "lexical_name": "ofLieDerivation",
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
  "slug": "ofliederivation--405f8094d8bf33812f3019a5",
  "source": {
    "blob": "35c5b4540034ed3cce4a0b1e13c55e6afc18e73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 74,
    "path": "GRWTSK/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:405f8094d8bf33812f3019a53528e2bea95095b36cb54d15bf697d93c90000d8",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:770a372a845fba845794f06102e1e79ab9a736978ad58a9eae498469274fdaff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofLieDerivation : (LieDerivation R L L) →ₗ⁅R⁆ (LieDerivation R (A ⊗[R] L) (A ⊗[R] L)) where
  toFun d :=
    { toFun := d.toLinearMap.lTensor A
      map_add' := by simp
      map_smul' := by simp
      leibniz' x y := by
        simp only [LinearMap.coe_mk, AddHom.coe_mk]
        refine x.inductionOn ?_ ?_
        · intros _ _
          refine y.inductionOn ?_ ?_
          · intros _ _
            simp [LieAlgebra.ExtendScalars.bracket_tmul, tmul_sub, mul_comm]
          · intros _ _ h1 h2
            simp [h1, h2]
            abel_nf
        · intros _ _ h1 h2
          simp [h1, h2]
          abel_nf }
  map_add' _ _ := by ext _; simp
  map_smul' _ _ := by ext _; simp
  map_lie' {_ _} := by
    ext z
    refine z.inductionOn (fun a l ↦ ?_) (fun _ _ hx hy ↦ ?_)
    · simp [tmul_sub]
    · simp_all [sub_add_sub_comm]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c5b4540034ed3cce4a0b1e13c55e6afc18e73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
