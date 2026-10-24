# sum_vonMangoldt_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a94c6b17-42a4-65b4-4eb4-14547b8dbeac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a29c6b8-7a56-2fc5-814e-d3a21d7425eb",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_sq_le",
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
  "slug": "sum-vonmangoldt-sq-le--9c2ce7bb4d2424e6acaaad3c",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 474,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c2ce7bb4d2424e6acaaad3cfe67dd17c130c81af57b015e25fde59a054fe049",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a29c6b8-7a56-2fc5-814e-d3a21d7425eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_sq_le {x : ℝ} (hx : 1 ≤ x) :
    ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 ≤ (Real.log 4 + 4) * x * Real.log x := by
  have h0 : (0 : ℝ) ≤ x := zero_le_one.trans hx
  have key : ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 ≤ (∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n) * Real.log x := by
    rw [Finset.sum_mul]
    refine Finset.sum_le_sum fun n hn => ?_
    obtain ⟨hn0, hnN⟩ := Finset.mem_Ioc.mp hn
    have hnx : (n : ℝ) ≤ x := le_trans (Nat.cast_le.mpr hnN) (Nat.floor_le h0)
    have h1 : Λ n ≤ Real.log x :=
      le_trans vonMangoldt_le_log (Real.log_le_log (by exact_mod_cast hn0) hnx)
    calc Λ n ^ 2 = Λ n * Λ n := pow_two _
      _ ≤ Λ n * Real.log x := mul_le_mul_of_nonneg_left h1 vonMangoldt_nonneg
  refine key.trans ?_
  have h2 : ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ≤ (Real.log 4 + 4) * x :=
    Chebyshev.psi_le_const_mul_self h0
  have h3 : (0 : ℝ) ≤ Real.log x := Real.log_nonneg hx
  have h4 : (0 : ℝ) ≤ ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n :=
    Finset.sum_nonneg fun n _ => vonMangoldt_nonneg
  calc (∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n) * Real.log x
      ≤ ((Real.log 4 + 4) * x) * Real.log x := mul_le_mul_of_nonneg_right h2 h3
    _ = (Real.log 4 + 4) * x * Real.log x := by ring


/-! ## [eq:cheb2]: the two Mertens-type asymptotics

Mertens' first theorem Σ_{n≤x} Λ(n)/n = log x + O(1) is supplied by
`Mertens.sum_mangoldt_div_eq_log` (see
Zeta23/FromPNTPlus/Mertens.lean), so both [eq:cheb2] bounds are unconditional. -/

section Cheb2

open MeasureTheory

/-- Mertens' first theorem (von Mangoldt form): |Σ_{n≤x} Λ(n)/n − log x| ≤ log 4 + 4
for x ≥ 1.  Paper [lem:cheb] cites it as "Mertens' formula"; classical [MV07 §2.2]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
