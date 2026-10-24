# first_factor_mem_abel_window_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcccc485caa4689e37a81696df13246c4b7ba9be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19bd1615-a552-bc03-39e6-4d7ab5224925",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19ee1b87-fe42-bff6-bce7-47155d9a9179",
  "kind": "theorem",
  "lexical_name": "first_factor_mem_abel_window_iff",
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
  "slug": "first-factor-mem-abel-window-iff--52145df3a77dcf3a982d3346",
  "source": {
    "blob": "fcccc485caa4689e37a81696df13246c4b7ba9be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 263,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52145df3a77dcf3a982d3346fff46759f6e014c2b7de350c82fdc816d14e9c92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ee1b87-fe42-bff6-bce7-47155d9a9179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_factor_mem_abel_window_iff
    (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A))
    (dk : ℕ × ℕ)
    (hdk : dk ∈ n.divisorsAntidiagonal) :
    dk.1 ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊ ↔
      A ^ 2 < (dk.1 : ℝ) := by
  have hnIcc := Finset.mem_Icc.mp hn
  have hdiv := Nat.fst_mem_divisors_of_mem_antidiagonal hdk
  have hupper : dk.1 ≤ ⌊sourceUpper A⌋₊ := by
    exact (Nat.divisor_le hdiv).trans hnIcc.2
  have hlower0 : 0 ≤ sourceLower A := by
    unfold sourceLower
    positivity
  rw [Finset.mem_Ioc]
  constructor
  · intro h
    exact (Nat.floor_lt hlower0).mp h.1
  · intro h
    exact ⟨(Nat.floor_lt hlower0).mpr h, hupper⟩

/-- The strict large-divisor Möbius sector is exactly the finite Abel sum of
the actual source kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcccc485caa4689e37a81696df13246c4b7ba9be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
