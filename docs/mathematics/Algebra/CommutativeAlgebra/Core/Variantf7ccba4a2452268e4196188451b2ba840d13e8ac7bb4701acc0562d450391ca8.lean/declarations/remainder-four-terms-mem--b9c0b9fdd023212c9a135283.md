# remainder_four_terms_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d55ad203-74a6-de14-762b-31ee1114bccf",
  "kind": "theorem",
  "lexical_name": "remainder_four_terms_mem",
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
  "slug": "remainder-four-terms-mem--b9c0b9fdd023212c9a135283",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1278,
    "line": 1254,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c0b9fdd023212c9a1352834678e0a282f24fb8104a1a76222d79c8d5e25fba",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d55ad203-74a6-de14-762b-31ee1114bccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1254–1278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainder_four_terms_mem {v_tail v_p1r2 v_p2r1 v_r1r2 : ℝ}
    {I_tail I_p1r2 I_p2r1 I_r1r2 : IntervalRat}
    (htail : v_tail ∈ I_tail) (hp1r2 : v_p1r2 ∈ I_p1r2)
    (hp2r1 : v_p2r1 ∈ I_p2r1) (hr1r2 : v_r1r2 ∈ I_r1r2) :
    v_tail + v_p1r2 + v_p2r1 + v_r1r2 ∈
      IntervalRat.add I_tail (IntervalRat.add I_p1r2 (IntervalRat.add I_p2r1 I_r1r2)) := by
  have h_inner := IntervalRat.mem_add hp2r1 hr1r2
  have h_mid := IntervalRat.mem_add hp1r2 h_inner
  have h_full := IntervalRat.mem_add htail h_mid
  convert h_full using 1
  ring

set_option maxHeartbeats 400000 in
/-- Multiplication preserves evalSet membership.

Given:
- f₁(x) ∈ tm1.evalSet x (i.e., f₁(x) = P₁(y) + r₁ with r₁ ∈ tm1.remainder)
- f₂(x) ∈ tm2.evalSet x (i.e., f₂(x) = P₂(y) + r₂ with r₂ ∈ tm2.remainder)

Then f₁(x) * f₂(x) ∈ (TaylorModel.mul tm1 tm2 degree).evalSet x.

The expansion is:
  (P₁ + r₁)(P₂ + r₂) = P₁P₂ + P₁r₂ + P₂r₁ + r₁r₂
                     = trunc(P₁P₂) + [tail(P₁P₂) + P₁r₂ + P₂r₁ + r₁r₂]
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L1254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
