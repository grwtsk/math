# approx_parallelogram_law

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bc76200e9ac774b83edf528a0b77fcc13d351eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46122176-4628-10a9-f765-668fbb597c79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c216c42-65e1-ba58-4e75-7079a602edc3",
  "kind": "theorem",
  "lexical_name": "approx_parallelogram_law",
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
  "slug": "approx-parallelogram-law--02146844468496414f985f64",
  "source": {
    "blob": "1bc76200e9ac774b83edf528a0b77fcc13d351eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 81,
    "path": "GRWTSK/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02146844468496414f985f644c40c8f8e316d9082335066604608f45fe41144e",
  "verification": {
    "reference": "docs/verification/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c216c42-65e1-ba58-4e75-7079a602edc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approx_parallelogram_law [DecidableEq F] :
    ∃ C, ∀ (P Q : W.Point),
      |(P + Q).naiveHeight + (P - Q).naiveHeight - 2 * (P.naiveHeight + Q.naiveHeight)| ≤ C := by
  obtain ⟨C₁, hC₁⟩ := abs_logHeight_sym2x_sub_le W
  obtain ⟨C₂, hC₂⟩ := abs_logHeight_addSubMap_sub_two_mul_logHeight_le W
  refine ⟨3 * C₁ + C₂, fun P Q ↦ ?_⟩
  obtain ⟨t, ht₀, ht⟩ := Point.sym2x_add_sub_eq_addSubMap_sym2x P Q
  replace ht := congrArg logHeight ht
  rw [Height.logHeight_smul_eq_logHeight _ ht₀] at ht
  have hPQ := hC₁ P Q
  have haddsub := hC₁ (P + Q) (P - Q)
  have hC := ht ▸ hC₂ (P.sym2x Q)
  -- speed up `grind` below by reducing to the essentials
  generalize (P + Q).naiveHeight + (P - Q).naiveHeight = A at haddsub ⊢
  generalize logHeight ((P + Q).sym2x (P - Q)) = B at hC haddsub
  generalize logHeight (P.sym2x Q) = B' at hPQ hC
  generalize P.naiveHeight + Q.naiveHeight = A' at hPQ ⊢
  grind only [= abs.eq_1, = max_def]

end NaiveHeight

section Northcott

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc76200e9ac774b83edf528a0b77fcc13d351eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
