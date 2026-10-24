# im_inner_adjoint_mul_self_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f527faa-3455-f46f-6d83-738eb7495d70",
  "kind": "theorem",
  "lexical_name": "im_inner_adjoint_mul_self_eq_zero",
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
  "slug": "im-inner-adjoint-mul-self-eq-zero--41ad08b8731b11ba7f50788a",
  "source": {
    "blob": "52e4f359eafe80066db8530bd17aa98c4cff05e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 524,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41ad08b8731b11ba7f50788a45d301fc148d6513436c57166bc5490749de704c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f527faa-3455-f46f-6d83-738eb7495d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem im_inner_adjoint_mul_self_eq_zero (T : E →ₗ[𝕜] E) (x : E) :
    im ⟪x, LinearMap.adjoint T (T x)⟫ = 0 := by
  simp only [mul_apply, adjoint_inner_right, inner_self_eq_norm_sq_to_K]
  norm_cast
#align linear_map.im_inner_adjoint_mul_self_eq_zero LinearMap.im_inner_adjoint_mul_self_eq_zero

end LinearMap

namespace Matrix

variable {m n : Type*} [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n]

open scoped ComplexConjugate

/-- The adjoint of the linear map associated to a matrix is the linear map associated to the
conjugate transpose of that matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant3839bebeef5b6e7581d56ff8d200e1947c0f27ad6a6db6a30806d7bb54eacbc2.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e4f359eafe80066db8530bd17aa98c4cff05e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
