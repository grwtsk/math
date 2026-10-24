# ker_unitsToPic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dc7ced8-ea01-e7e2-cf70-bdbbabba2c75",
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
  "slug": "ker-unitstopic--b7b73ebfbd13a00917c9d2bd",
  "source": {
    "blob": "6b4966598f5e62181e195c60e1f0d3fd47894705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 748,
    "path": "GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b73ebfbd13a00917c9d2bd6ffbe5e0ec7e01538a8b25c1f979a25e8e319671",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc7ced8-ea01-e7e2-cf70-bdbbabba2c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 748–768.

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

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean#L748).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4966598f5e62181e195c60e1f0d3fd47894705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
