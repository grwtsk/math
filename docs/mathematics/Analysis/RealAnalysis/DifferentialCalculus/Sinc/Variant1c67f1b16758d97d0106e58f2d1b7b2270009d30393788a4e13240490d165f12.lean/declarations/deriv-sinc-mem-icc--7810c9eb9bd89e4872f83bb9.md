# deriv_sinc_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82de89c2-f5ee-ba05-2cc6-19aa75fe5dcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f515dcbe-7137-d2b5-d9a2-8200eceeb461",
  "kind": "theorem",
  "lexical_name": "deriv_sinc_mem_Icc",
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
  "slug": "deriv-sinc-mem-icc--7810c9eb9bd89e4872f83bb9",
  "source": {
    "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 285,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7810c9eb9bd89e4872f83bb94fe3de39064e5660d31ab605ca4c8f798a00aa75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f515dcbe-7137-d2b5-d9a2-8200eceeb461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_sinc_mem_Icc (x : ℝ) : deriv sinc x ∈ Set.Icc (-1) 1 := by
  rw [Set.mem_Icc]
  have h := abs_deriv_sinc_le_one x
  rw [abs_le] at h
  exact h

/-!
## Integral representation and smoothness of sinc

The sinc function is smooth (C^∞). The key insight is the integral representation:
  sinc(x) = ∫ t in 0..1, cos(t * x) dt

This works because:
- For x ≠ 0: ∫₀¹ cos(tx) dt = [sin(tx)/x]₀¹ = sin(x)/x = sinc(x)
- For x = 0: ∫₀¹ cos(0) dt = ∫₀¹ 1 dt = 1 = sinc(0)

Smoothness follows from differentiation under the integral sign (Leibniz rule):
since cos(t*x) is C^∞ in x and the domain [0,1] is compact, the integral is C^∞.
-/

open MeasureTheory intervalIntegral in
/-- The integral representation of sinc: sinc(x) = ∫ t in 0..1, cos(t * x) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c155e15f1b59fe5465099559191856416a60cfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
