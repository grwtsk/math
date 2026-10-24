# cyclotomic_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2977660f60759e115358765e96cc6ac151dd7da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f254b2e2-9990-698f-b614-c0bbcaf1ae0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b09c3ca-1ddb-d7f2-47d1-a24bd94b71f5",
  "kind": "theorem",
  "lexical_name": "cyclotomic_injective",
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
  "slug": "cyclotomic-injective--f22f137d73e2cd1e76fc3b66",
  "source": {
    "blob": "b2977660f60759e115358765e96cc6ac151dd7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 149,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f22f137d73e2cd1e76fc3b66ce4202a70dce228724a10b85e32a755a324a9eb2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b09c3ca-1ddb-d7f2-47d1-a24bd94b71f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_injective [CharZero R] : Function.Injective fun n => cyclotomic n R := by
  intro n m hnm
  simp only at hnm
  rcases eq_or_ne n 0 with (rfl | hzero)
  · rw [cyclotomic_zero] at hnm
    replace hnm := congr_arg natDegree hnm
    rw [natDegree_one, natDegree_cyclotomic] at hnm
    by_contra h
    exact (Nat.totient_pos (zero_lt_iff.2 (Ne.symm h))).ne hnm
  · haveI := NeZero.mk hzero
    rw [← map_cyclotomic_int _ R, ← map_cyclotomic_int _ R] at hnm
    replace hnm := map_injective (Int.castRingHom R) Int.cast_injective hnm
    replace hnm := congr_arg (map (Int.castRingHom ℂ)) hnm
    rw [map_cyclotomic_int, map_cyclotomic_int] at hnm
    have hprim := Complex.isPrimitiveRoot_exp _ hzero
    have hroot := isRoot_cyclotomic_iff (R := ℂ).2 hprim
    rw [hnm] at hroot
    haveI hmzero : NeZero m := ⟨fun h => by simp [h] at hroot⟩
    rw [isRoot_cyclotomic_iff (R := ℂ)] at hroot
    replace hprim := hprim.eq_orderOf
    rwa [← IsPrimitiveRoot.eq_orderOf hroot] at hprim
#align polynomial.cyclotomic_injective Polynomial.cyclotomic_injective

/-- The minimal polynomial of a primitive `n`-th root of unity `μ` divides `cyclotomic n ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2977660f60759e115358765e96cc6ac151dd7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
