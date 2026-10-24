# normSq_div_sub_div_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83900b7f-e44a-1a29-e886-04a7a1de80a8",
  "kind": "theorem",
  "lexical_name": "normSq_div_sub_div_lt_one",
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
  "slug": "normsq-div-sub-div-lt-one--1b70aeaee96372197264e350",
  "source": {
    "blob": "440bf2ea54c662836610a74824e0b023374e170f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 189,
    "path": "GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b70aeaee96372197264e350ff2d5845d7eb0d0a95d5b08eb73c90f226053ffd",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83900b7f-e44a-1a29-e886-04a7a1de80a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normSq_div_sub_div_lt_one (x y : ℤ[i]) :
    Complex.normSq ((x / y : ℂ) - ((x / y : ℤ[i]) : ℂ)) < 1 :=
  calc
    Complex.normSq ((x / y : ℂ) - ((x / y : ℤ[i]) : ℂ))
    _ = Complex.normSq
      ((x / y : ℂ).re - ((x / y : ℤ[i]) : ℂ).re + ((x / y : ℂ).im - ((x / y : ℤ[i]) : ℂ).im) *
        I : ℂ) :=
      congr_arg _ <| by apply Complex.ext <;> simp
    _ ≤ Complex.normSq (1 / 2 + 1 / 2 * I) := by
      have : |(2⁻¹ : ℝ)| = 2⁻¹ := abs_of_nonneg (by norm_num)
      exact normSq_le_normSq_of_re_le_of_im_le
        (by rw [toComplex_div_re]; simp [normSq, this]; simpa using abs_sub_round (x / y : ℂ).re)
        (by rw [toComplex_div_im]; simp [normSq, this]; simpa using abs_sub_round (x / y : ℂ).im)
    _ < 1 := by simp [normSq]; norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440bf2ea54c662836610a74824e0b023374e170f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
