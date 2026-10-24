# carrier.smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 394,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cbb6175-36b3-f42a-c864-9c5148d268da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5432dbe3-1107-095b-e890-24e92b321cd1",
  "kind": "theorem",
  "lexical_name": "carrier.smul_mem",
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
  "slug": "carrier-smul-mem--f339df453a0c43cc114ea30f",
  "source": {
    "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 394,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f339df453a0c43cc114ea30f07aba3b8adedb6856a3dfc8db5d47b46185da73f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5432dbe3-1107-095b-e890-24e92b321cd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carrier.smul_mem (c x : A) (hx : x ∈ carrier f_deg q) : c • x ∈ carrier f_deg q := by
  revert c
  refine DirectSum.Decomposition.inductionOn 𝒜 ?_ ?_ ?_
  · rw [zero_smul]; exact carrier.zero_mem f_deg hm _
  · rintro n ⟨a, ha⟩ i
    simp_rw [proj_apply, smul_eq_mul, coe_decompose_mul_of_left_mem 𝒜 i ha]
    let product : A⁰_ f :=
      (HomogeneousLocalization.mk
          ⟨_, ⟨a ^ m, pow_mem_graded m ha⟩, ⟨_, ?_⟩, ⟨n, rfl⟩⟩ : A⁰_ f) *
        (HomogeneousLocalization.mk
          ⟨_, ⟨proj 𝒜 (i - n) x ^ m, by mem_tac⟩, ⟨_, ?_⟩, ⟨i - n, rfl⟩⟩ : A⁰_ f)
    · split_ifs with h
      · convert_to product ∈ q.1
        · dsimp [product]
          rw [HomogeneousLocalization.ext_iff_val, HomogeneousLocalization.val_mk,
            HomogeneousLocalization.val_mul, HomogeneousLocalization.val_mk,
            HomogeneousLocalization.val_mk]
          · simp_rw [mul_pow]; rw [Localization.mk_mul]
            · congr; rw [← pow_add, Nat.add_sub_of_le h]
        · apply Ideal.mul_mem_left (α := A⁰_ f) _ _ (hx _)
          rw [(_ : m • n = _)]
          · mem_tac
          · simp only [smul_eq_mul, mul_comm]
      · simpa only [map_zero, zero_pow hm.ne'] using zero_mem f_deg hm q i
    rw [(_ : m • (i - n) = _)]
    · mem_tac
    · simp only [smul_eq_mul, mul_comm]
  · simp_rw [add_smul]; exact fun _ _ => carrier.add_mem f_deg q

/-- For a prime ideal `q` in `A⁰_f`, the set `{a | aᵢᵐ/fⁱ ∈ q}` as an ideal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
