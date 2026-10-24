# _root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpNegMulSqIsLittleOExpNeg.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.fourier_transform_gaussian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f91d62d-b32f-697c-406b-238594137133",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpNegMulSqIsLittleOExpNeg.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.fourier_transform_gaussian",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-expnegmulsqislittleoexpneg-varia--c1d444a15afc74d0a9201bc2",
  "source": {
    "blob": "031cd32f6e7660a61b7c6ac3977e3bcf76414ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 531,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d444a15afc74d0a9201bc2a31c101bf44489470d9b1fdaf258ac08ddf61651",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f91d62d-b32f-697c-406b-238594137133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpNegMulSqIsLittleOExpNeg.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.fourier_transform_gaussian (hb : 0 < b.re) (t : ℂ) :
    ∫ x : ℝ, cexp (I * t * x) * cexp (-b * (x : ℂ) ^ 2) =
      cexp (-t ^ 2 / (4 * b)) * (π / b) ^ (1 / 2 : ℂ) := by
  have : b ≠ 0 := by contrapose! hb; rw [hb, zero_re]
  simp_rw [← Complex.exp_add]
  have : ∀ x : ℂ,
      I * t * x + -b * x ^ 2 = -t ^ 2 / ((4 : ℂ) * b) + -b * (x + -I * t / 2 / b) ^ 2 := by
    intro x
    ring_nf
    rw [I_sq]
    field_simp; ring
  simp_rw [this, Complex.exp_add, integral_mul_left, integral_cexp_neg_mul_sq_add_const hb]
#align fourier_transform_gaussian fourier_transform_gaussian

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031cd32f6e7660a61b7c6ac3977e3bcf76414ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
