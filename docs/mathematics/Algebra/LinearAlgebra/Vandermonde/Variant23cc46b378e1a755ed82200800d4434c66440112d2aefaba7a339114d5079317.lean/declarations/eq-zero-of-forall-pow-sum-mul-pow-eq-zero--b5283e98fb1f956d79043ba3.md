# eq_zero_of_forall_pow_sum_mul_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:426cbced-bbda-50c6-4848-0a64ccfbc553",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_forall_pow_sum_mul_pow_eq_zero",
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
  "slug": "eq-zero-of-forall-pow-sum-mul-pow-eq-zero--b5283e98fb1f956d79043ba3",
  "source": {
    "blob": "0ddafed9bd60d412563027fef32fadd78c6e6456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 257,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5283e98fb1f956d79043ba37f746bbba7a542ffc302e94ad69f5a53c759d433",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:426cbced-bbda-50c6-4848-0a64ccfbc553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_forall_pow_sum_mul_pow_eq_zero [IsDomain R] {f v : Fin n → R}
    (hf : Function.Injective f) (hfv : ∀ i : Fin n, (∑ j : Fin n, v j * f j ^ (i : ℕ)) = 0) :
    v = 0 :=
  eq_zero_of_vecMul_eq_zero (det_vandermonde_ne_zero_iff.mpr hf) (funext hfv)

open Polynomial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ddafed9bd60d412563027fef32fadd78c6e6456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
