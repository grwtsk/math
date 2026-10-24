# reciprocal_kernel_difference_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d4df3c6-3387-6a0e-1c5e-dc0d08c5e9f8",
  "kind": "theorem",
  "lexical_name": "reciprocal_kernel_difference_integral",
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
  "slug": "reciprocal-kernel-difference-integral--8248213bbcbb2024c76e68ef",
  "source": {
    "blob": "c6809202381899a41d04fc351e8aa05d5c4ffec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8248213bbcbb2024c76e68efe41ccef447927d96f896e46ccc5e66b2a25621ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d4df3c6-3387-6a0e-1c5e-dc0d08c5e9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_kernel_difference_integral (a b : ℝ) (ha : 0 < a) :
    (∫ t in Ioi (0 : ℝ), Real.exp (-a * t) * (1 - Real.cos (b * t))) = kernel b a := by
  have he : (fun t : ℝ ↦ Real.exp (-a * t) * (1 - Real.cos (b * t))) =
      (fun t : ℝ ↦ Real.exp (-a * t) * Real.cos (0 * t) -
        Real.exp (-a * t) * Real.cos (b * t)) := by
    funext t
    simp only [zero_mul, Real.cos_zero, mul_one]
    ring
  rw [he, integral_sub (exponential_cosine_laplace_integrable a 0 ha)
    (exponential_cosine_laplace_integrable a b ha),
    exponential_cosine_laplace_integral a 0 ha, exponential_cosine_laplace_integral a b ha]
  unfold kernel
  field_simp
  ring
open FormalResearch.RiemannHypothesis.MultiplicativePhase

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6809202381899a41d04fc351e8aa05d5c4ffec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
