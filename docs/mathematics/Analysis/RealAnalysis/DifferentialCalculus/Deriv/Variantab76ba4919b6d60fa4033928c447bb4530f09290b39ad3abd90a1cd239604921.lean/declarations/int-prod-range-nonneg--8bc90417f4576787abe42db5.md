# int_prod_range_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d27fd73d-6762-b58d-320a-2cf835e9c830",
  "kind": "theorem",
  "lexical_name": "int_prod_range_nonneg",
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
  "slug": "int-prod-range-nonneg--8bc90417f4576787abe42db5",
  "source": {
    "blob": "e1b9588894e2a5478be1f2570b34446f11b787fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bc90417f4576787abe42db5e1627bcdcbc9be2a2718c21af137122926e65438",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d27fd73d-6762-b58d-320a-2cf835e9c830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_prod_range_nonneg (m : ℤ) (n : ℕ) (hn : Even n) :
    0 ≤ ∏ k in Finset.range n, (m - k) := by
  rcases hn with ⟨n, rfl⟩
  induction' n with n ihn
  · simp
  rw [← two_mul] at ihn
  rw [← two_mul, Nat.succ_eq_add_one, mul_add, mul_one, ← one_add_one_eq_two, ← add_assoc,
    Finset.prod_range_succ, Finset.prod_range_succ, mul_assoc]
  refine' mul_nonneg ihn _; generalize (1 + 1) * n = k
  cases' le_or_lt m k with hmk hmk
  · have : m ≤ k + 1 := hmk.trans (lt_add_one (k : ℤ)).le
    convert mul_nonneg_of_nonpos_of_nonpos (sub_nonpos_of_le hmk) _
    convert sub_nonpos_of_le this
  · exact mul_nonneg (sub_nonneg_of_le hmk.le) (sub_nonneg_of_le hmk)
#align int_prod_range_nonneg int_prod_range_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b9588894e2a5478be1f2570b34446f11b787fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
