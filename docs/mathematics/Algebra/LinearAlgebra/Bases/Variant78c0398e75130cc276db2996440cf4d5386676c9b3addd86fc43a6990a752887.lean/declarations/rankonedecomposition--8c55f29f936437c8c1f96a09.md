# RankOneDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39f9e582921a1f974e0e59c9408bc22f13efea089b86fac7251d72f46e6702d4",
  "kind": "structure",
  "lexical_name": "RankOneDecomposition",
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
  "slug": "rankonedecomposition--8c55f29f936437c8c1f96a09",
  "source": {
    "blob": "323c9f608ea14a9ee0005e29eb9b6458315b240f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 447,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c55f29f936437c8c1f96a096c8c2614416df1e79e313fd51bd38b03ce0091af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39f9e582921a1f974e0e59c9408bc22f13efea089b86fac7251d72f46e6702d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RankOneDecomposition where
  /-- The sequence of finite-rank projections. -/
  P : ℕ → X →L[𝕜] X
  /-- The sequence of candidate basis vectors. -/
  e : ℕ → X
  /-- The projections start at `0`. -/
  proj_zero : P 0 = 0
  /-- The `n`-th projection has rank `n`. -/
  finrank_range (n : ℕ) : Module.finrank 𝕜 (P n).toLinearMap.range = n
  /-- The projections commute and are nested `P n (P m) = P (min n m)`. -/
  proj_comp (n m : ℕ) (x : X) : P n (P m x) = P (min n m) x
  /-- The projections converge pointwise to the identity. -/
  proj_tendsto (x : X) : Tendsto (fun n ↦ P n x) atTop (𝓝 x)
  /-- The vector `e_n` lies in the range of the operator `succSub P n = P (n+1) - P n`. -/
  e_mem_range (n : ℕ) : e n ∈ (succSub P n).toLinearMap.range
  /-- The vector `e_n` is non-zero. -/
  e_ne_zero (n : ℕ) : e n ≠ 0

namespace RankOneDecomposition

variable (D : RankOneDecomposition 𝕜 X)

/-- There exists a coefficient scaling `e n` to match `(succSub D.P n) x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `323c9f608ea14a9ee0005e29eb9b6458315b240f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
