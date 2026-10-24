# scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8abf3b04-b1fe-5ee1-ba66-398d1da2f122",
  "kind": "theorem",
  "lexical_name": "scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero",
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
  "slug": "scaleroots-eval-eq-zero-of-eval-div-eq-zero--65c8f43b229fcde63ba81154",
  "source": {
    "blob": "6bd3e119c7e36bd79b7662b3b6e86c586d3c9e62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 147,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c8f43b229fcde63ba81154890f7d65eaefbd16f3eae30fa107f6013e903ea7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8abf3b04-b1fe-5ee1-ba66-398d1da2f122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero {p : S[X]} {f : S →+* K}
    (hf : Function.Injective f) {r s : S} (hr : eval₂ f (f r / f s) p = 0)
    (hs : s ∈ nonZeroDivisors S) : eval₂ f (f r) (scaleRoots p s) = 0 := by
  nontriviality S using Subsingleton.eq_zero
  convert @scaleRoots_eval₂_eq_zero _ _ _ _ p f _ s hr
  rw [← mul_div_assoc, mul_comm, mul_div_cancel]
  exact map_ne_zero_of_mem_nonZeroDivisors _ hf hs
#align polynomial.scale_roots_eval₂_eq_zero_of_eval₂_div_eq_zero Polynomial.scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bd3e119c7e36bd79b7662b3b6e86c586d3c9e62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
