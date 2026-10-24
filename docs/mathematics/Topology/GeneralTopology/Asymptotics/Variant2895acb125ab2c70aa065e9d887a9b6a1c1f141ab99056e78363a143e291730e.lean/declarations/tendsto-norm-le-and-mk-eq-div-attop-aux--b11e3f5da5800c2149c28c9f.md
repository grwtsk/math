# tendsto_norm_le_and_mk_eq_div_atTop_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b912e30e9deedc8ad58ed86f70e1421933a87503a0d547013ba2e6bbcacece6",
  "kind": "def",
  "lexical_name": "tendsto_norm_le_and_mk_eq_div_atTop_aux₂",
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
  "slug": "tendsto-norm-le-and-mk-eq-div-attop-aux--b11e3f5da5800c2149c28c9f",
  "source": {
    "blob": "9a0baefb61f1e9607b483c2cd9f661771e6c7605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/Asymptotics/Variant2895acb125ab2c70aa065e9d887a9b6a1c1f141ab99056e78363a143e291730e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b11e3f5da5800c2149c28c9ff89f50cefbc493a2313b752c7db3ba6a2b6759c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Asymptotics/Variant2895acb125ab2c70aa065e9d887a9b6a1c1f141ab99056e78363a143e291730e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b912e30e9deedc8ad58ed86f70e1421933a87503a0d547013ba2e6bbcacece6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tendsto_norm_le_and_mk_eq_div_atTop_aux₂ :
    ↑({x | x ∈ (toMixed K) ⁻¹' fundamentalCone K ∧ mixedEmbedding.norm ((toMixed K) x) ≤ s} ∩
      (ZLattice.comap ℝ (idealLattice K ((FractionalIdeal.mk0 K) J)) (toMixed K).toLinearMap))
        ≃ {a : idealSet K J // mixedEmbedding.norm (a : mixedSpace K) ≤ s} := by
  rw [ZLattice.coe_comap]
  refine (((toMixed K).toEquiv.image _).trans (Equiv.subtypeEquivProp ?_)).trans
    (Equiv.subtypeSubtypeEquivSubtypeInter _ (mixedEmbedding.norm · ≤ s)).symm
  ext
  simp_rw [mem_idealSet, Set.mem_image, Set.mem_inter_iff, Set.mem_preimage, SetLike.mem_coe,
    mem_idealLattice, FractionalIdeal.coe_mk0]
  constructor
  · rintro ⟨_, ⟨⟨hx₁, hx₂⟩, _, ⟨x, hx₃, rfl⟩, h⟩, rfl⟩
    exact ⟨⟨hx₁, x, hx₃, h⟩, hx₂⟩
  · rintro ⟨⟨hx₁, ⟨x, hx₂, rfl⟩⟩, hx₃⟩
    exact ⟨(toMixed K).symm (mixedEmbedding K x), ⟨⟨hx₁, hx₃⟩, ⟨(x : K), by simp [hx₂], rfl⟩⟩, rfl⟩

variable (C) in
/--
The limit of the number of nonzero integral ideals of norm `≤ s` in a fixed class `C` of the
class group divided by `s` when `s → +∞`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Asymptotics/Variant2895acb125ab2c70aa065e9d887a9b6a1c1f141ab99056e78363a143e291730e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Asymptotics/Variant2895acb125ab2c70aa065e9d887a9b6a1c1f141ab99056e78363a143e291730e.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a0baefb61f1e9607b483c2cd9f661771e6c7605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
