# IsEquiv.uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf491897-d10e-5311-4fa5-a5714e274fe5",
  "kind": "lemma",
  "lexical_name": "IsEquiv.uniformContinuous",
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
  "slug": "isequiv-uniformcontinuous--d451ecd9a843cd7583ae0e80",
  "source": {
    "blob": "7b494de6e79649733541d4f419393d601dfbdf43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 566,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d451ecd9a843cd7583ae0e80bc904033a6015707747e7cbc483dc30f5d5cef91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf491897-d10e-5311-4fa5-a5714e274fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsEquiv.uniformContinuous (h : v.IsEquiv w) :
    @UniformContinuous R R (Valued.mk' w).toUniformSpace (Valued.mk' v).toUniformSpace
      (RingHom.id R) := by
  have h_val : ((Valued.mk' v).v).IsEquiv (Valued.mk' w).v := h
  have h_res : v.restrict.IsEquiv w.restrict := h_val.restrict
  refine @uniformContinuous_of_continuousAt_zero _ _ (Valued.mk' w).toUniformSpace _ _
    _ (Valued.mk' v).toUniformSpace _ _ _ _ (RingHom.id R) ?_
  simp_rw [ContinuousAt, map_zero, (Valued.hasBasis_nhds_zero _ _).tendsto_iff
    (Valued.hasBasis_nhds_zero _ _), true_and, forall_const]
  intro x
  let u := WithZero.unzero (Units.ne_zero x)
  obtain ⟨a, ha, y, hu⟩ := (mem_valueGroup_iff_of_comm _).mp u.2
  simp only [Set.mem_ofPred_eq, RingHom.id_apply]
  set y₀ := h_val.orderMonoidIso x with hy₀_def
  have hy₀_ne_zero : y₀ ≠ 0 := by simp [hy₀_def]
  set y := (Units.mk0 y₀ hy₀_ne_zero) with hy_def
  use y
  intro b hb
  rwa [← h_val.orderMonoidIso_spec, hy_def, Units.val_mk0, hy₀_def,
    h_val.orderMonoidIso.strictMono.lt_iff_lt] at hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithVal/Variantc46d952b32532c7a75ec6adfc4d893db79d711f1e0f3d22aa841425154d84acc.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b494de6e79649733541d4f419393d601dfbdf43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
