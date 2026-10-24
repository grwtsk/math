# ker_unitsToPic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 740,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd81660e-60fb-d639-00b1-d5c63f2520f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8424dce1-d7ec-19ac-badd-4e92afdace48",
  "kind": "theorem",
  "lexical_name": "ker_unitsToPic",
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
  "slug": "ker-unitstopic--e890fd44201505a6774685bc",
  "source": {
    "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 740,
    "path": "GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e890fd44201505a6774685bcf2d204c2175b3f158d3ae1663cefda532b47267f",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8424dce1-d7ec-19ac-badd-4e92afdace48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_unitsToPic :
    (unitsToPic R A).ker = (Units.map (spanSingleton R).toMonoidHom).range := by
  ext I; constructor <;> intro h
  · have e := (mk_eq_one_iff.mp h).some.symm
    have e' := (mk_eq_one_iff.mp (inv_mem h)).some.symm
    have h := eq_span_singleton_of_surjective e.surjective
    have h' := eq_span_singleton_of_surjective e'.surjective
    refine ⟨(isUnit_iff_exists_and_exists.mpr ⟨?_, ?_⟩).unit, Units.ext h.symm⟩
    · have : span R {(e 1).1 * e' 1} = 1 := by simpa [span_mul_span] using congr($h * $h').symm
      have ⟨r, hr⟩ := span_singleton_eq_one_iff.mp this
      exact ⟨e' 1 * algebraMap R A r.inv, by simp [← mul_assoc, hr, ← map_mul]⟩
    · have : span R {(e' 1).1 * e 1} = 1 := by simpa [span_mul_span] using congr($h' * $h).symm
      have ⟨r, hr⟩ := span_singleton_eq_one_iff.mp this
      exact ⟨algebraMap R A r.inv * e' 1, by simp [mul_assoc, hr, ← map_mul]⟩
  · obtain ⟨x, rfl⟩ := h
    exact mk_eq_one_iff.mpr ⟨.symm <| (.ofInjective (LinearMap.toSpanSingleton R A x) fun _ _ eq ↦
      (faithfulSMul_iff_injective_smul_one R A).mp ‹_› <| by simpa using congr($eq * x.inv)) ≪≫ₗ
      .ofEq _ _ (by ext; simp [mem_span_singleton])⟩

/-- Exactness of the sequence `1 → Rˣ → Aˣ → (Submodule R A)ˣ → Pic R → Pic A`
at `(Submodule R A)ˣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
