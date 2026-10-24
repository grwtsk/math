# pi_eval_preimage_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9618025b8281bb3eb3fca9e41aa8b7c208793801",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99cc44d9-8bca-2db3-1b96-9b1b11e2bdeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:021d280b-2bc4-9942-800f-e81d162b2bf9",
  "kind": "theorem",
  "lexical_name": "pi_eval_preimage_null",
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
  "slug": "pi-eval-preimage-null--a4f1b87879fef991dd49b512",
  "source": {
    "blob": "9618025b8281bb3eb3fca9e41aa8b7c208793801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 427,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f1b87879fef991dd49b5122d78b9c79f750b671e4ebeaa6c3a0a3a64553c4a",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:021d280b-2bc4-9942-800f-e81d162b2bf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_eval_preimage_null {i : ι} {s : Set (α i)} (hs : μ i s = 0) :
    Measure.pi μ (eval i ⁻¹' s) = 0 := by
  -- WLOG, `s` is measurable
  rcases exists_measurable_superset_of_null hs with ⟨t, hst, _, hμt⟩
  suffices : Measure.pi μ (eval i ⁻¹' t) = 0
  exact measure_mono_null (preimage_mono hst) this
  clear! s
  -- Now rewrite it as `Set.pi`, and apply `pi_pi`
  rw [← univ_pi_update_univ, pi_pi]
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  simp [hμt]
#align measure_theory.measure.pi_eval_preimage_null MeasureTheory.Measure.pi_eval_preimage_null

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9618025b8281bb3eb3fca9e41aa8b7c208793801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
