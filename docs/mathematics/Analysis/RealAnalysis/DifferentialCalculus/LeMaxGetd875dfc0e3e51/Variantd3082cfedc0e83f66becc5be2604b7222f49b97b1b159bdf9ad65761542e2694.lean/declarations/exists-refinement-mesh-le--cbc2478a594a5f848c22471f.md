# exists_refinement_mesh_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49deb3a2-4593-96e0-8d5f-ea4e6177046b",
  "kind": "lemma",
  "lexical_name": "exists_refinement_mesh_le",
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
  "slug": "exists-refinement-mesh-le--cbc2478a594a5f848c22471f",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 600,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc2478a594a5f848c22471fe70d983b032c20e4b8340ebf1908134d2098307c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49deb3a2-4593-96e0-8d5f-ea4e6177046b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_refinement_mesh_le {a b : ℝ} (hab : a < b) (P : RS.IPart.IPartition a b)
    {δ : ℝ} (hδ : 0 < δ) :
    ∃ Q, RS.IPart.IsRefinement Q P ∧ Q.mesh ≤ δ := by
  -- Choose `n` such that `(b-a)/(n+1) ≤ δ`.
  obtain ⟨n, hn⟩ : ∃ n : ℕ, (b - a) / (n + 1) ≤ δ := by
    refine ⟨⌊(b - a) / δ⌋₊, ?_⟩
    -- your original proof:
    rw [div_le_iff₀] <;> nlinarith [Nat.lt_floor_add_one ((b - a) / δ), mul_div_cancel₀ (b - a) hδ.ne']
  -- Let `U` be the uniform partition of size `n`.
  set U : IPart.IPartition a b := IPart.uniformPartition n hab
  -- Let `Q = union P U`.
  set Q : IPart.IPartition a b := RS.IPart.union P U
  refine ⟨Q, ?_, ?_⟩
  · exact RS.IPart.union_refines_left P U
  · -- Q.mesh ≤ U.mesh ≤ δ
    have hQU : Q.mesh ≤ U.mesh := by
      -- IMPORTANT: `mesh_le_of_refinement` takes ONE argument: the refinement proof.
      -- Here Q refines U.
      simpa [Q] using (mesh_le_of_refinement (P := U) (R := Q) (RS.IPart.union_refines_right P U))
    calc
      Q.mesh ≤ U.mesh := hQU
      _ = (b - a) / (n + 1) := by
            -- rewrite the mesh of the uniform partition
            simpa [U] using (RS.IPart.mesh_uniformPartition (a := a) (b := b) n hab)
      _ ≤ δ := hn

/-
The absolute difference between `g` evaluated at two partition points is bounded by the sum of absolute differences of `g` over the intermediate subintervals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
