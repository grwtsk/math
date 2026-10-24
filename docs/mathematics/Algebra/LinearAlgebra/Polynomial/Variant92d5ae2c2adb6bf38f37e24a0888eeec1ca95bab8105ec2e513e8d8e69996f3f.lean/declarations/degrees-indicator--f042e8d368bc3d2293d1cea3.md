# degrees_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22ec14d6-6f2c-3ed3-19a8-5867a9591053",
  "kind": "theorem",
  "lexical_name": "degrees_indicator",
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
  "slug": "degrees-indicator--f042e8d368bc3d2293d1cea3",
  "source": {
    "blob": "f6126efe7585ea97ac809a9c2c3fa651fdaf4cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f042e8d368bc3d2293d1cea3ffc498356b9b33eff040eb4913125f5fcef6b184",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22ec14d6-6f2c-3ed3-19a8-5867a9591053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degrees_indicator (c : σ → K) :
    degrees (indicator c) ≤ ∑ s : σ, (Fintype.card K - 1) • {s} := by
  rw [indicator]
  refine' le_trans (degrees_prod _ _) (Finset.sum_le_sum fun s _ => _)
  refine' le_trans (degrees_sub _ _) _
  rw [degrees_one, ← bot_eq_zero, bot_sup_eq]
  refine' le_trans (degrees_pow _ _) (nsmul_le_nsmul_of_le_right _ _)
  refine' le_trans (degrees_sub _ _) _
  rw [degrees_C, ← bot_eq_zero, sup_bot_eq]
  exact degrees_X' _
#align mv_polynomial.degrees_indicator MvPolynomial.degrees_indicator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6126efe7585ea97ac809a9c2c3fa651fdaf4cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
