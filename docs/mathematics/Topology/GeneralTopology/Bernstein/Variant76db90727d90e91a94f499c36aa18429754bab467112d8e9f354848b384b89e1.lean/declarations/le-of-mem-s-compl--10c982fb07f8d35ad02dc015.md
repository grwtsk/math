# le_of_mem_S_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ce0a361-c6fc-efc9-da0f-ef549ab6a62e",
  "kind": "theorem",
  "lexical_name": "le_of_mem_S_compl",
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
  "slug": "le-of-mem-s-compl--10c982fb07f8d35ad02dc015",
  "source": {
    "blob": "420249c5cd7d05c7fb235e71b31f0e37eb55cf54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 207,
    "path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c982fb07f8d35ad02dc015710c794d9b1363064422d918136b45f6c8d7566a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ce0a361-c6fc-efc9-da0f-ef549ab6a62e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem le_of_mem_S_compl {f : C(I, ℝ)} {ε : ℝ} {h : 0 < ε} {n : ℕ} {x : I} {k : Fin (n + 1)}
    (m : k ∈ (S f ε h n x)ᶜ) : (1 : ℝ) ≤ δ f ε h ^ (-2 : ℤ) * ((x : ℝ) - k/ₙ) ^ 2 := by
  -- Porting note: added parentheses to help `simp`
  simp only [Finset.mem_compl, not_lt, (Set.mem_toFinset), Set.mem_setOf_eq, S] at m
  rw [zpow_neg, ← div_eq_inv_mul, zpow_two, ← pow_two, one_le_div (pow_pos δ_pos 2), sq_le_sq,
    abs_of_pos δ_pos]
  rwa [dist_comm] at m
#align bernstein_approximation.le_of_mem_S_compl bernsteinApproximation.le_of_mem_S_compl

end bernsteinApproximation

open bernsteinApproximation

open BoundedContinuousFunction

open Filter

open scoped Topology

/-- The Bernstein approximations
```
∑ k : Fin (n+1), f (k/n : ℝ) * n.choose k * x^k * (1-x)^(n-k)
```
for a continuous function `f : C([0,1], ℝ)` converge uniformly to `f` as `n` tends to infinity.

This is the proof given in [Richard Beals' *Analysis, an introduction*][beals-analysis], §7D,
and reproduced on wikipedia.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420249c5cd7d05c7fb235e71b31f0e37eb55cf54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
