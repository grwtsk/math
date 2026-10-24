# prime_square_mem_source_inventory_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03c82f8afc96a66cf3735f41293f7c9c6942e8b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dd1b859-e2e7-06a1-34b4-8f2799b98f47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bd8068a-f33a-26ec-9c63-5a23380f95c5",
  "kind": "theorem",
  "lexical_name": "prime_square_mem_source_inventory_iff",
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
  "slug": "prime-square-mem-source-inventory-iff--fb43150bb6d7e0d9fc8f2954",
  "source": {
    "blob": "03c82f8afc96a66cf3735f41293f7c9c6942e8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb43150bb6d7e0d9fc8f29545528148d9478c0738f33820ddedbb584b1aa5c67",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bd8068a-f33a-26ec-9c63-5a23380f95c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_square_mem_source_inventory_iff (A : ℝ) {p : ℕ} (hp : p.Prime) :
    p ^ 2 ∈ primePowerInventory (2 * A) ↔ p ∈ primeLogInventory A := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hp2 : 2 ≤ p ^ 2 := by nlinarith [hp.two_le]
  simp only [primePowerInventory, primeLogInventory, Finset.mem_filter,
    Finset.mem_Icc, Finset.mem_Ioc]
  rw [and_iff_right hp2, and_iff_left hp, and_iff_right hp.pos]
  rw [Nat.le_floor_iff (Real.exp_pos _).le, Nat.le_floor_iff (Real.exp_pos _).le]
  rw [Nat.cast_pow, show 2 * A = A + A by ring, Real.exp_add]
  constructor <;> intro h <;> nlinarith [Real.exp_pos A]

/-- Exact coefficient transport to the already checked weighted-prime logarithmic sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c82f8afc96a66cf3735f41293f7c9c6942e8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
