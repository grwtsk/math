# normSq_div_sub_div_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c34edded8479bbe62e9144277f2879c83c6c737f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4916a930-8446-a946-a158-ce54222368de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4e5418d-c39b-8fe9-5355-48358d2fe0d1",
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
  "slug": "normsq-div-sub-div-lt-one--d1ee4df4f2f6076fe66d4fdd",
  "source": {
    "blob": "c34edded8479bbe62e9144277f2879c83c6c737f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 183,
    "path": "GRWTSK/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ee4df4f2f6076fe66d4fdd7dc08571d7e29afd972a971149b1f873c86db9c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4e5418d-c39b-8fe9-5355-48358d2fe0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–197.

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
      have : |(2⁻¹ : ℝ)| = 2⁻¹ := abs_of_nonneg (by simp)
      exact normSq_le_normSq_of_re_le_of_im_le
        (by rw [toComplex_re_div]; simp [normSq, this]; simpa using abs_sub_round (x / y : ℂ).re)
        (by rw [toComplex_im_div]; simp [normSq, this]; simpa using abs_sub_round (x / y : ℂ).im)
    _ < 1 := by simp [normSq]; norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34edded8479bbe62e9144277f2879c83c6c737f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
