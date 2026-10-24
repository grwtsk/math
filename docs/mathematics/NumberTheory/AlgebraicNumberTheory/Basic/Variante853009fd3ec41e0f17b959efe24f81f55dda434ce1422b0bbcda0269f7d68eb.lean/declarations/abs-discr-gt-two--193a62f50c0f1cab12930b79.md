# abs_discr_gt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a602da3ca6d9bd91bcab784f3ff97816083a8801",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5c85ac7-d9db-a7d5-8ff8-4bd0d894fc4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abadd316-7a93-8244-517f-041a980b5dd3",
  "kind": "theorem",
  "lexical_name": "abs_discr_gt_two",
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
  "slug": "abs-discr-gt-two--193a62f50c0f1cab12930b79",
  "source": {
    "blob": "a602da3ca6d9bd91bcab784f3ff97816083a8801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 226,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193a62f50c0f1cab12930b793cdb658e9f5ffd39a59aae435801d77e56c9879b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abadd316-7a93-8244-517f-041a980b5dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_discr_gt_two (h : 1 < finrank ℚ K) : 2 < |discr K| := by
  rw [← Nat.succ_le_iff] at h
  rify
  calc
    (2 : ℝ) < (4 / 9) * (3 * π / 4) ^ 2 := by
      nlinarith [Real.pi_gt_three]
    _ ≤ (4 / 9 : ℝ) * (3 * π / 4) ^ finrank ℚ K := by
      gcongr
      linarith [Real.pi_gt_three]
    _ ≤ |(discr K : ℝ)| := mod_cast abs_discr_ge h

/-!
### Hermite Theorem
This section is devoted to the proof of Hermite theorem.

Let `N` be an integer . We prove that the set `S` of finite extensions `K` of `ℚ`
(in some fixed extension `A` of `ℚ`) such that `|discr K| ≤ N` is finite by proving, using
`finite_of_finite_generating_set`, that there exists a finite set `T ⊆ A` such that
`∀ K ∈ S, ∃ x ∈ T, K = ℚ⟮x⟯` .

To find the set `T`, we construct a finite set `T₀` of polynomials in `ℤ[X]` containing, for each
`K ∈ S`, the minimal polynomial of a primitive element of `K`. The set `T` is then the union of
roots in `A` of the polynomials in `T₀`. More precisely, the set `T₀` is the set of all polynomials
in `ℤ[X]` of degrees and coefficients bounded by some explicit constants depending only on `N`.

Indeed, we prove that, for any field `K` in `S`, its degree is bounded, see
`rank_le_rankOfDiscrBdd`, and also its Minkowski bound, see `minkowskiBound_lt_boundOfDiscBdd`.
Thus it follows from `mixedEmbedding.exists_primitive_element_lt_of_isComplex` and
`mixedEmbedding.exists_primitive_element_lt_of_isReal` that there exists an algebraic integer
`x` of `K` such that `K = ℚ(x)` and the conjugates of `x` are all bounded by some quantity
depending only on `N`.

Since the primitive element `x` is constructed differently depending on whether `K` has a infinite
real place or not, the theorem is proved in two parts.
-/

namespace hermiteTheorem

open Polynomial

open scoped IntermediateField

variable (A : Type*) [Field A] [CharZero A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a602da3ca6d9bd91bcab784f3ff97816083a8801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
