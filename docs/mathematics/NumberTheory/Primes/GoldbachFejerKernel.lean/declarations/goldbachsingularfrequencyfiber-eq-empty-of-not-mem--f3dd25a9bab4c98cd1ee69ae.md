# goldbachSingularFrequencyFiber_eq_empty_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79da0348-0f90-c679-f7a5-52a328c24e71",
  "kind": "theorem",
  "lexical_name": "goldbachSingularFrequencyFiber_eq_empty_of_not_mem",
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
  "slug": "goldbachsingularfrequencyfiber-eq-empty-of-not-mem--f3dd25a9bab4c98cd1ee69ae",
  "source": {
    "blob": "f97b459674f6857693fdd2f0fa1e4c5b736da17b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3dd25a9bab4c98cd1ee69aeecbfc2f2cee0e7f8841e26a3394079a07986219a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79da0348-0f90-c679-f7a5-52a328c24e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSingularFrequencyFiber_eq_empty_of_not_mem
    {N : ℕ} {m : ℤ}
    (hm : m ∉ Finset.Icc (-(N : ℤ)) (N : ℤ)) :
    goldbachSingularFrequencyFiber N m = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro uv huv
  have hbox : uv ∈ goldbachSingularPairBox N :=
    (Finset.mem_filter.mp huv).1
  have hfreq :
      goldbachSingularPairFrequency N uv = m :=
    (Finset.mem_filter.mp huv).2
  exact hm (hfreq ▸ goldbachSingularPairFrequency_mem_Icc hbox)

/-- Closed formula for the literal fibre cardinality.  The proof splits
positive and negative frequencies and uses the first coordinate as the finite
parameter of the corresponding antidiagonal segment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f97b459674f6857693fdd2f0fa1e4c5b736da17b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
