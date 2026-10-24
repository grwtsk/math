# seq_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14921d27-1d9b-2c11-cff3-59741a7828f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10c1b907-9571-0a28-0016-6f0e9cd53f1b",
  "kind": "theorem",
  "lexical_name": "seq_norm_le",
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
  "slug": "seq-norm-le--a6b3903dfc4bdc9fdc0c351b",
  "source": {
    "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 263,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b3903dfc4bdc9fdc0c351b1cb27b07db5a6c054ff3f9ae8971dd7ffe77fb43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10c1b907-9571-0a28-0016-6f0e9cd53f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seq_norm_le (n : ℕ) :
    Int.natAbs (Algebra.norm ℤ (seq K w₁ hB n : 𝓞 K)) ≤ B := by
  cases n with
  | zero =>
      have : 1 ≤ B := by
        contrapose! hB
        simp only [Nat.lt_one_iff.mp hB, CharP.cast_eq_zero, mul_zero, zero_le]
      simp only [ne_eq, seq, map_one, Int.natAbs_one, this]
  | succ n =>
      rw [← Nat.cast_le (α := ℚ), Int.cast_natAbs, Int.cast_abs, Algebra.coe_norm_int]
      exact (seq_next K w₁ hB (seq K w₁ hB n).prop).choose_spec.2.2

/-- Construct a unit associated to the place `w₁`. The family, for `w₁ ≠ w₀`, formed by the
image by the `logEmbedding` of these units is `ℝ`-linearly independent, see
`unitLattice_span_eq_top`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e59771eb655041fc341a01186f6754b23ff81e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
