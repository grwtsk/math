# exists_pow_mem_center_of_inseparable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b29736832a573327a8ac8bd15305edb7b498a69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db00c8e3-eeee-66b3-4ffd-f6509a469a04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96be4132-8e1e-19ff-0f72-4e29c6ac06d5",
  "kind": "lemma",
  "lexical_name": "exists_pow_mem_center_of_inseparable'",
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
  "slug": "exists-pow-mem-center-of-inseparable--270b6552b62a0fcff305a31e",
  "source": {
    "blob": "7b29736832a573327a8ac8bd15305edb7b498a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:270b6552b62a0fcff305a31e7210b520fd01b482432c22565d5c998efa0b9970",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96be4132-8e1e-19ff-0f72-4e29c6ac06d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_pow_mem_center_of_inseparable' (p : ℕ) [ExpChar D p] {a : D}
    (ha : a ∉ k) (hinsep : ∀ x : D, IsSeparable k x → x ∈ k) : ∃ n, 1 ≤ n ∧ a ^ (p ^ n) ∈ k := by
  obtain ⟨n, hn⟩ := exists_pow_mem_center_of_inseparable p a hinsep
  have nzero : n ≠ 0 := by
    rintro rfl
    rw [pow_zero, pow_one] at hn
    exact ha hn
  exact ⟨n, ⟨Nat.one_le_iff_ne_zero.mpr nzero, hn⟩⟩

attribute [local instance 100] LieRing.ofAssociativeRing

/-- If `D` is a purely inseparable extension of `k` of characteristic `p`,
  then for every element `a` of `D \ k`, there exists a natural number `m`
  greater than 0 such that `(a * x - x * a) ^ n = 0` (as linear maps) for
  every `n` greater than `(p ^ m)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b29736832a573327a8ac8bd15305edb7b498a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
