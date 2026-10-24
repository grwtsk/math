# norm_eq_iInf_range_iff_adjoint_apply_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74b3894f-e0cb-02a9-c673-ec69ca3fdeea",
  "kind": "theorem",
  "lexical_name": "norm_eq_iInf_range_iff_adjoint_apply_eq_zero",
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
  "slug": "norm-eq-iinf-range-iff-adjoint-apply-eq-zero--8bcc682d1ce152164b1207b0",
  "source": {
    "blob": "96c62ef8510b228769fe6fd9a1e8d0d59cfd0b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 215,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bcc682d1ce152164b1207b0a481042ffbbc5bb35ad6fdf59143ecc2296abbfa",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74b3894f-e0cb-02a9-c673-ec69ca3fdeea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_iInf_range_iff_adjoint_apply_eq_zero (A : E →L[𝕜] F) (y : F) (x : E) :
    (‖y - A x‖ = ⨅ z : A.range, ‖y - z‖) ↔ (A†) (y - A x) = 0 := by
  rw [A.range.norm_eq_iInf_iff_inner_eq_zero (by simp),
    ← Submodule.mem_orthogonal', A.orthogonal_range, LinearMap.mem_ker, coe_coe]

/-- The residual norm at `x` is minimal among all points of `E` if and only if
the adjoint of `A` sends the residual `y - A x` to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant48328a127136f3370b974169236338dd8572ec6b444630969b41ccbb7b0f3276.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96c62ef8510b228769fe6fd9a1e8d0d59cfd0b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
