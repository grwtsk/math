# rawPrimeProduct_eq_prefix_add_debt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2000bc2e-c8ed-9fb2-e1ce-6bae07c52bfe",
  "kind": "theorem",
  "lexical_name": "rawPrimeProduct_eq_prefix_add_debt",
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
  "slug": "rawprimeproduct-eq-prefix-add-debt--0175c12dad56c9bf22b66d31",
  "source": {
    "blob": "c8306cc01af4928e3056636576250f63490b8522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 138,
    "path": "GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0175c12dad56c9bf22b66d31c98ccae5d107774f660fc3e10b4372b6a12864db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2000bc2e-c8ed-9fb2-e1ce-6bae07c52bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawPrimeProduct_eq_prefix_add_debt (N : ℕ) (s : ℂ) :
    rawPrimeProduct N s = dirichletPrefix N s + unbornDebt N s := by
  rw [rawPrimeProduct_expansion]
  let S := (Nat.primesLE N).powerset
  let f : Finset ℕ → ℂ := fun U =>
    (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
      exponentialWeight s (primeProduct U)
  have hsplit := Finset.sum_filter_add_sum_filter_not S
    (fun U => primeProduct U ≤ N) f
  calc
    _ = (∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => primeProduct U ≤ N),
          (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
            exponentialWeight s (primeProduct U)) +
        ∑ U ∈ (Nat.primesLE N).powerset.filter (fun U => ¬ primeProduct U ≤ N),
          (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
            exponentialWeight s (primeProduct U) := by
      simpa only [S, f] using hsplit.symm
    _ = dirichletPrefix N s + unbornDebt N s := by
      rw [bornSubsetSum_eq_dirichletPrefix]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8306cc01af4928e3056636576250f63490b8522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
