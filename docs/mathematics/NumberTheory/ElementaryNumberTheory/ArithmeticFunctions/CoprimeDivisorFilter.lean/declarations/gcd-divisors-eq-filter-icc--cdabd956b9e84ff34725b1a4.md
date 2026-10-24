# gcd_divisors_eq_filter_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22cd877e-cd39-ebfb-473f-826d31b89579",
  "kind": "theorem",
  "lexical_name": "gcd_divisors_eq_filter_Icc",
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
  "slug": "gcd-divisors-eq-filter-icc--cdabd956b9e84ff34725b1a4",
  "source": {
    "blob": "3ffede07ac1caac92fff72e53dcbfcac9552009f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdabd956b9e84ff34725b1a4b7bef72022bf2747e9d6a884b7f229401f435fcd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22cd877e-cd39-ebfb-473f-826d31b89579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_divisors_eq_filter_Icc {a b N : ℕ}
    (ha : 0 < a) (hb : 0 < b) (hcutoff : min a b ≤ N) :
    (Nat.gcd a b).divisors = (Finset.Icc 1 N).filter (fun d => d ∣ a ∧ d ∣ b) := by
  ext d
  rw [Finset.mem_filter]
  constructor
  · intro hd
    have hcommon := Nat.dvd_gcd_iff.mp (Nat.dvd_of_mem_divisors hd)
    refine ⟨Finset.mem_Icc.mpr ⟨Nat.pos_of_mem_divisors hd, ?_⟩, hcommon⟩
    exact (le_min (Nat.le_of_dvd ha hcommon.1)
      (Nat.le_of_dvd hb hcommon.2)).trans hcutoff
  · intro hd
    exact Nat.mem_divisors.mpr ⟨Nat.dvd_gcd hd.2.1 hd.2.2,
      (Nat.gcd_pos_of_pos_left b ha).ne'⟩

/-- The bounded signed common-divisor filter equals the coprimality indicator.
Both arguments are positive and the closed cutoff covers their minimum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ffede07ac1caac92fff72e53dcbfcac9552009f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
