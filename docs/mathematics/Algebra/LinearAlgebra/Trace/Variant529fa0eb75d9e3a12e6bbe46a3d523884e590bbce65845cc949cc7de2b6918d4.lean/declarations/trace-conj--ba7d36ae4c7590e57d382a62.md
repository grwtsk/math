# trace_conj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b05737a8-75c3-481e-9c24-da1c8366239e",
  "kind": "theorem",
  "lexical_name": "trace_conj'",
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
  "slug": "trace-conj--ba7d36ae4c7590e57d382a62",
  "source": {
    "blob": "81b6c3f912adb5cdb2af1073cd45812b4d3754ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 281,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba7d36ae4c7590e57d382a62e18e77fd15cecd5743bc50e083a8440f28557288",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b05737a8-75c3-481e-9c24-da1c8366239e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_conj' (f : M →ₗ[R] M) (e : M ≃ₗ[R] N) : trace R N (e.conj f) = trace R M f := by
  classical
  by_cases hM : ∃ s : Finset M, Nonempty (Basis s R M)
  · obtain ⟨s, ⟨b⟩⟩ := hM
    haveI := Module.Finite.of_basis b
    haveI := (Module.free_def R M).mpr ⟨_, ⟨b⟩⟩
    haveI := Module.Finite.of_basis (b.map e)
    haveI := (Module.free_def R N).mpr ⟨_, ⟨(b.map e).reindex (e.toEquiv.image _)⟩⟩
    rw [e.conj_apply, trace_comp_comm', ← comp_assoc, LinearEquiv.comp_coe,
      LinearEquiv.self_trans_symm, LinearEquiv.refl_toLinearMap, id_comp]
  · rw [trace, trace, dif_neg hM, dif_neg ?_, zero_apply, zero_apply]
    rintro ⟨s, ⟨b⟩⟩
    exact hM ⟨s.image e.symm, ⟨(b.map e.symm).reindex
      ((e.symm.toEquiv.image s).trans (Equiv.setCongr Finset.coe_image.symm))⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81b6c3f912adb5cdb2af1073cd45812b4d3754ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
