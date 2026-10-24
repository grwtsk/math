# nhds_basis_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dcf33b9-d92e-66f0-97bd-603c7be1457e",
  "kind": "theorem",
  "lexical_name": "nhds_basis_Ico",
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
  "slug": "nhds-basis-ico--61febfbb30a5e8b3d48ec9c5",
  "source": {
    "blob": "23582fb2902b062dd26917e7d8fdcd44b6ef901b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61febfbb30a5e8b3d48ec9c507d2462dddced9fed500e6e90f11230fab277a79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dcf33b9-d92e-66f0-97bd-603c7be1457e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_basis_Ico (a : ℝₗ) : (𝓝 a).HasBasis (a < ·) (Ico a ·) := by
  rw [TopologicalSpace.nhds_generateFrom]
  haveI : Nonempty { x // x ≤ a } := Set.nonempty_Iic_subtype
  have : (⨅ x : { i // i ≤ a }, 𝓟 (Ici ↑x)) = 𝓟 (Ici a) := by
    refine (IsLeast.isGLB ?_).iInf_eq
    exact ⟨⟨⟨a, le_rfl⟩, rfl⟩, forall_mem_range.2 fun b => principal_mono.2 <| Ici_subset_Ici.2 b.2⟩
  simp only [mem_setOf_eq, iInf_and, iInf_exists, @iInf_comm _ (_ ∈ _), @iInf_comm _ (Set ℝₗ),
    iInf_iInf_eq_right, mem_Ico]
  simp_rw [@iInf_comm _ ℝₗ (_ ≤ _), iInf_subtype', ← Ici_inter_Iio, ← inf_principal,
    ← inf_iInf, ← iInf_inf, this, iInf_subtype]
  suffices (⨅ x ∈ Ioi a, 𝓟 (Iio x)).HasBasis (a < ·) Iio from this.principal_inf _
  refine hasBasis_biInf_principal ?_ nonempty_Ioi
  exact directedOn_iff_directed.2 <| Monotone.directed_ge fun x y hxy ↦ Iio_subset_Iio hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23582fb2902b062dd26917e7d8fdcd44b6ef901b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
