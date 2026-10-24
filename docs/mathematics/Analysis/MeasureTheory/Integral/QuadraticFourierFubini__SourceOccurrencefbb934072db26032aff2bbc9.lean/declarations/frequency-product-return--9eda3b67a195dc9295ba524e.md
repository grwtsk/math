# frequency_product_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/Analysis/MeasureTheory/Integral/QuadraticFourierFubini.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6ad8cad-313e-237e-9fbf-fdd6ec365531",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/MeasureTheory/Integral/QuadraticFourierFubini.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51faba55-11e7-380a-79b5-85c10bdeb1a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7523ce61-571c-e626-df52-7f95ca7ca9fa",
  "kind": "lemma",
  "lexical_name": "frequency_product_return",
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
  "slug": "frequency-product-return--9eda3b67a195dc9295ba524e",
  "source": {
    "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 103,
    "path": "GRWTSK/MeasureTheory/Integral/QuadraticFourierFubini.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eda3b67a195dc9295ba524e62d717f6e51625667398880f41a1e11931adc241",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrencefbb934072db26032aff2bbc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7523ce61-571c-e626-df52-7f95ca7ca9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frequency_product_return (c u : ℝ) :
    (∫ z : ℝ×ℝ, triple c (z,u) ∂volume.prod volume) =
      Complex.exp (((2*c-1:ℝ):ℂ)*(u:ℂ)) *
      (∫ t : ℝ, RightLine.pickupKernel c t *
        Complex.exp (((t*u:ℝ):ℂ)*Complex.I)) *
      starRingEnd ℂ (∫ s : ℝ, RightLine.pickupKernel c s *
        Complex.exp (((s*u:ℝ):ℂ)*Complex.I)) := by
  have he : (fun z : ℝ×ℝ => triple c (z,u)) =
      (fun z : ℝ×ℝ => Complex.exp (((2*c-1:ℝ):ℂ)*(u:ℂ)) *
        ((RightLine.pickupKernel c z.1 * Complex.exp (((z.1*u:ℝ):ℂ)*Complex.I)) *
        starRingEnd ℂ (RightLine.pickupKernel c z.2 *
          Complex.exp (((z.2*u:ℝ):ℂ)*Complex.I)))) := by
    funext z
    simp only [triple, phase_factorization, map_mul]
    ring
  rw [he, integral_const_mul,
    integral_prod_mul (fun t : ℝ => RightLine.pickupKernel c t *
      Complex.exp (((t*u:ℝ):ℂ)*Complex.I))
      (fun s : ℝ => starRingEnd ℂ (RightLine.pickupKernel c s *
      Complex.exp (((s*u:ℝ):ℂ)*Complex.I))), integral_conj]
  ring

/-- Exact signed reciprocal-Laplace double density return. Its sole analytic input
is L1 of the actual right-line kernel; all product integrability and Fubini swaps
are proved here from that input and the compact time interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrencefbb934072db26032aff2bbc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/MeasureTheory/Integral/QuadraticFourierFubini.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
