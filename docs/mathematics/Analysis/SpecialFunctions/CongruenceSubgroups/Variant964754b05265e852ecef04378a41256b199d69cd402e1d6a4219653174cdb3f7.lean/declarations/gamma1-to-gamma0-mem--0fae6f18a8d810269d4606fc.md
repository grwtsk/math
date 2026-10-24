# Gamma1_to_Gamma0_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7f05dc25e2f493b7f09b42e6904b9a48640edc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25d08925-9f85-f95f-44d3-0219cb20bd58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:450979f7-dfd7-3822-10a8-c03a37997379",
  "kind": "theorem",
  "lexical_name": "Gamma1_to_Gamma0_mem",
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
  "slug": "gamma1-to-gamma0-mem--0fae6f18a8d810269d4606fc",
  "source": {
    "blob": "b7f05dc25e2f493b7f09b42e6904b9a48640edc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 148,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fae6f18a8d810269d4606fc779a552fb2faec3e544ab1dd55069a069f4c44cd",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450979f7-dfd7-3822-10a8-c03a37997379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma1_to_Gamma0_mem (N : ℕ) (A : Gamma0 N) : A ∈ Gamma1' N ↔
    ((↑ₘA 0 0 : ℤ) : ZMod N) = 1 ∧ ((↑ₘA 1 1 : ℤ) : ZMod N) = 1 ∧ ((↑ₘA 1 0 : ℤ) : ZMod N) = 0 := by
  constructor
  · intro ha
    have hA := A.property
    rw [Gamma0_mem] at hA
    have adet := Gamma0_det N A
    rw [Matrix.det_fin_two] at adet
    simp only [Gamma0Map, coe_matrix_coe, Int.coe_castRingHom, map_apply, Gamma1_mem',
      MonoidHom.coe_mk, OneHom.coe_mk, Int.cast_sub, Int.cast_mul] at *
    rw [hA, ha] at adet
    simp only [mul_one, mul_zero, sub_zero] at adet
    simp only [adet, hA, ha, eq_self_iff_true, and_self_iff]
  · intro ha
    simp only [Gamma1_mem', Gamma0Map, MonoidHom.coe_mk, coe_matrix_coe,
      Int.coe_castRingHom, map_apply]
    exact ha.2.1
#align Gamma1_to_Gamma0_mem Gamma1_to_Gamma0_mem

/-- The congruence subgroup `Gamma1` of `SL(2, ℤ)` consisting of matrices whose bottom
row is congruent to `(0,1)` modulo `N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f05dc25e2f493b7f09b42e6904b9a48640edc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
