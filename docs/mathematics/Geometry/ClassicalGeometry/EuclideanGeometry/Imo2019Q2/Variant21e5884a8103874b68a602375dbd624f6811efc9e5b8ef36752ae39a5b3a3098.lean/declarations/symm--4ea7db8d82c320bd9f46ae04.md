# symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ffc653fe8dd81dc3b33d7a435111c6149b8378b52cb7174b4d255e986f64cf2",
  "kind": "def",
  "lexical_name": "symm",
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
  "slug": "symm--4ea7db8d82c320bd9f46ae04",
  "source": {
    "blob": "27c0eb9c1027f1e9bff516e2080fc5831940b68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 125,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ea7db8d82c320bd9f46ae04c21fc0836025b87e30db380543dca664a3f5f91d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ffc653fe8dd81dc3b33d7a435111c6149b8378b52cb7174b4d255e986f64cf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def symm : Imo2019q2Cfg V Pt where
  A := cfg.B
  B := cfg.A
  C := cfg.C
  A₁ := cfg.B₁
  B₁ := cfg.A₁
  P := cfg.Q
  Q := cfg.P
  P₁ := cfg.Q₁
  Q₁ := cfg.P₁
  affineIndependent_ABC := by
    rw [← affineIndependent_equiv (Equiv.swap (0 : Fin 3) 1)]
    convert cfg.affineIndependent_ABC using 1
    ext x
    fin_cases x <;> rfl
  wbtw_B_A₁_C := cfg.wbtw_A_B₁_C
  wbtw_A_B₁_C := cfg.wbtw_B_A₁_C
  wbtw_A_P_A₁ := cfg.wbtw_B_Q_B₁
  wbtw_B_Q_B₁ := cfg.wbtw_A_P_A₁
  PQ_parallel_AB := Set.pair_comm cfg.P cfg.Q ▸ Set.pair_comm cfg.A cfg.B ▸ cfg.PQ_parallel_AB
  P_ne_Q := cfg.P_ne_Q.symm
  sbtw_P_B₁_P₁ := cfg.sbtw_Q_A₁_Q₁
  angle_PP₁C_eq_angle_BAC :=
    angle_comm cfg.C cfg.Q₁ cfg.Q ▸ angle_comm cfg.C cfg.B cfg.A ▸ cfg.angle_CQ₁Q_eq_angle_CBA
  C_ne_P₁ := cfg.C_ne_Q₁
  sbtw_Q_A₁_Q₁ := cfg.sbtw_P_B₁_P₁
  angle_CQ₁Q_eq_angle_CBA :=
    angle_comm cfg.P cfg.P₁ cfg.C ▸ angle_comm cfg.B cfg.A cfg.C ▸ cfg.angle_PP₁C_eq_angle_BAC
  C_ne_Q₁ := cfg.C_ne_P₁
#align imo2019_q2.imo2019q2_cfg.symm Imo2019Q2.Imo2019q2Cfg.symm

/-! ### Configuration properties that are obvious from the diagram, and construction of the
points `A₂` and `B₂` -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c0eb9c1027f1e9bff516e2080fc5831940b68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
