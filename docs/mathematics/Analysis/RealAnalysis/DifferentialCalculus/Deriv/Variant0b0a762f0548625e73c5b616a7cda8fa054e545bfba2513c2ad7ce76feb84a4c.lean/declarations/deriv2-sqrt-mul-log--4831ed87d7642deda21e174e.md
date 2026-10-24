# deriv2_sqrt_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ca7efa746b671123ffcf99dcf48bce7d0f962bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c32152f9-fbc1-77bc-8f57-854bbbf17139",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cb872ab-0bcf-6c5b-a400-4aa71d51bc32",
  "kind": "theorem",
  "lexical_name": "deriv2_sqrt_mul_log",
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
  "slug": "deriv2-sqrt-mul-log--4831ed87d7642deda21e174e",
  "source": {
    "blob": "8ca7efa746b671123ffcf99dcf48bce7d0f962bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4831ed87d7642deda21e174ee8c441988b1112fc0a37c781cdb9d5074ab7e045",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cb872ab-0bcf-6c5b-a400-4aa71d51bc32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv2_sqrt_mul_log (x : ℝ) :
    deriv^[2] (fun x => √x * log x) x = -log x / (4 * √x ^ 3) := by
  simp only [Nat.iterate, deriv_sqrt_mul_log']
  rcases le_or_lt x 0 with hx | hx
  · rw [sqrt_eq_zero_of_nonpos hx, zero_pow three_ne_zero, mul_zero, div_zero]
    refine HasDerivWithinAt.deriv_eq_zero ?_ (uniqueDiffOn_Iic 0 x hx)
    refine (hasDerivWithinAt_const _ _ 0).congr_of_mem (fun x hx => ?_) hx
    rw [sqrt_eq_zero_of_nonpos hx, mul_zero, div_zero]
  · have h₀ : √x ≠ 0 := sqrt_ne_zero'.2 hx
    convert (((hasDerivAt_log hx.ne').const_add 2).div ((hasDerivAt_sqrt hx.ne').const_mul 2) <|
      mul_ne_zero two_ne_zero h₀).deriv using 1
    nth_rw 3 [← mul_self_sqrt hx.le]
    generalize √x = sqx at h₀ -- else field_simp rewrites sqrt x * sqrt x back to x
    field_simp
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca7efa746b671123ffcf99dcf48bce7d0f962bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
