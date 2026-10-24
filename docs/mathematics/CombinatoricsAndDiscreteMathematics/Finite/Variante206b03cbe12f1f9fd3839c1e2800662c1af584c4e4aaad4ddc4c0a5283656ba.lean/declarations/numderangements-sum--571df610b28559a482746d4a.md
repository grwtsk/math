# numDerangements_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb15dfc3-53f9-f126-c0c4-67a51838b133",
  "kind": "theorem",
  "lexical_name": "numDerangements_sum",
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
  "slug": "numderangements-sum--571df610b28559a482746d4a",
  "source": {
    "blob": "90f487965ecb46abf617f5684ca0baaf3bb8ecb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:571df610b28559a482746d4a8cb4ecf01673d8260caa2dca061ff51119e5e872",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb15dfc3-53f9-f126-c0c4-67a51838b133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem numDerangements_sum (n : ℕ) :
    (numDerangements n : ℤ) =
      ∑ k ∈ Finset.range (n + 1), (-1 : ℤ) ^ k * Nat.ascFactorial (k + 1) (n - k) := by
  induction n with
  | zero => rfl
  | succ n hn =>
    rw [Finset.sum_range_succ, numDerangements_succ, hn, Finset.mul_sum, tsub_self,
      Nat.ascFactorial_zero, Int.ofNat_one, mul_one, pow_succ', neg_one_mul, sub_eq_add_neg,
      add_left_inj, Finset.sum_congr rfl]
    -- show that (n + 1) * (-1)^x * asc_fac x (n - x) = (-1)^x * asc_fac x (n.succ - x)
    intro x hx
    have h_le : x ≤ n := Finset.mem_range_succ_iff.mp hx
    rw [Nat.succ_sub h_le, Nat.ascFactorial_succ, add_right_comm, add_tsub_cancel_of_le h_le,
      Int.natCast_mul, Int.natCast_add, mul_left_comm, Nat.cast_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f487965ecb46abf617f5684ca0baaf3bb8ecb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
