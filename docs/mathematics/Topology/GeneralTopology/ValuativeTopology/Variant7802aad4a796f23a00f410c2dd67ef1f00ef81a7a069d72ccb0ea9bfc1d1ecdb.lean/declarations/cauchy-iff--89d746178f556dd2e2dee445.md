# cauchy_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8af79fd-0e20-d15f-1cbf-b474487a3618",
  "kind": "theorem",
  "lexical_name": "cauchy_iff",
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
  "slug": "cauchy-iff--89d746178f556dd2e2dee445",
  "source": {
    "blob": "7ba47d631fda672aa66fff4c8f28932743a08507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d746178f556dd2e2dee445c54035f7a5246df0123a8bbbb96cea759b5e5b7d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8af79fd-0e20-d15f-1cbf-b474487a3618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchy_iff {F : Filter R} : Cauchy F ↔
    F.NeBot ∧ ∀ γ : (MonoidWithZeroHom.ValueGroup₀ (.ofClass v))ˣ,
      ∃ M ∈ F, ∀ᵉ (x ∈ M) (y ∈ M), v.restrict (y - x) < γ.1 := by
  rw [v.toUniformSpace_eq, AddGroupFilterBasis.cauchy_iff]
  apply and_congr Iff.rfl
  simp_rw [v.subgroups_basis.mem_addGroupFilterBasis_iff]
  constructor
  · intro h γ
    simp_rw [restrict_lt_iff_lt_embedding]
    exact h _ (v.subgroups_basis.mem_addGroupFilterBasis γ)
  · rintro h - ⟨γ, rfl⟩
    simp_rw [restrict_lt_iff_lt_embedding] at h
    exact h γ

end UniformSpace

section TopologicalSpace

variable [_t : TopologicalSpace R] [IsValuativeTopology R] (v : Valuation R Γ₀) [v.Compatible]
  [TopologicalSpace K] [IsValuativeTopology K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba47d631fda672aa66fff4c8f28932743a08507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
