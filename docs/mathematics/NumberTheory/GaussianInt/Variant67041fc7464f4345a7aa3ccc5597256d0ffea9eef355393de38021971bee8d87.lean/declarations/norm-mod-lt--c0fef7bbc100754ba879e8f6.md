# norm_mod_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e452d2fa-8b16-ef4a-c92f-1109ff2cd63e",
  "kind": "theorem",
  "lexical_name": "norm_mod_lt",
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
  "slug": "norm-mod-lt--c0fef7bbc100754ba879e8f6",
  "source": {
    "blob": "440bf2ea54c662836610a74824e0b023374e170f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 210,
    "path": "GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0fef7bbc100754ba879e8f620d11ebb67470e95a7b117bb569c7abeb5f3a9af",
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

Occurrence: `result:e452d2fa-8b16-ef4a-c92f-1109ff2cd63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mod_lt (x : ℤ[i]) {y : ℤ[i]} (hy : y ≠ 0) : (x % y).norm < y.norm :=
  have : (y : ℂ) ≠ 0 := by rwa [Ne, ← toComplex_zero, toComplex_inj]
  (@Int.cast_lt ℝ _ _ _ _).1 <|
    calc
      ↑(Zsqrtd.norm (x % y)) = Complex.normSq (x - y * (x / y : ℤ[i]) : ℂ) := by simp [mod_def]
      _ = Complex.normSq (y : ℂ) * Complex.normSq (x / y - (x / y : ℤ[i]) : ℂ) := by
        rw [← normSq_mul, mul_sub, mul_div_cancel₀ _ this]
      _ < Complex.normSq (y : ℂ) * 1 :=
        (mul_lt_mul_of_pos_left (normSq_div_sub_div_lt_one _ _) (normSq_pos.2 this))
      _ = Zsqrtd.norm y := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussianInt/Variant67041fc7464f4345a7aa3ccc5597256d0ffea9eef355393de38021971bee8d87.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440bf2ea54c662836610a74824e0b023374e170f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
