# actualNegativeEdgeMass_eq_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7ad2a18-6c41-5ff4-1a07-008d6e0db8b8",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeMass_eq_psi",
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
  "slug": "actualnegativeedgemass-eq-psi--7db39900d9f0539fbec6685c",
  "source": {
    "blob": "59babfba4164e3d971c16cd1cadfb25c98c45b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant6502daf90654cadc327e89e9f61e623895e043dcabfbf843d9b312c0b70b4e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db39900d9f0539fbec6685cd68475e4e2d02604821a50ee4c6b726e638f4c0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant6502daf90654cadc327e89e9f61e623895e043dcabfbf843d9b312c0b70b4e8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ad2a18-6c41-5ff4-1a07-008d6e0db8b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeMass_eq_psi (A : ℝ) :
    (∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ)) =
      Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13)) := by
  have hf : ⌊Real.exp (2 * A - 13)⌋₊ ≤ ⌊Real.exp (2 * A - 12)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  rw [actualNegativeEdgeWindow, Chebyshev.psi, Chebyshev.psi]
  have hI : Finset.Ioc 0 ⌊Real.exp (2 * A - 12)⌋₊ =
      Finset.Ioc 0 ⌊Real.exp (2 * A - 13)⌋₊ ∪
        Finset.Ioc ⌊Real.exp (2 * A - 13)⌋₊ ⌊Real.exp (2 * A - 12)⌋₊ := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_union]
    omega
  have hdis : Disjoint (Finset.Ioc 0 ⌊Real.exp (2 * A - 13)⌋₊)
      (Finset.Ioc ⌊Real.exp (2 * A - 13)⌋₊ ⌊Real.exp (2 * A - 12)⌋₊) := by
    exact Finset.disjoint_left.mpr (by
      intro n hn hm
      have := Finset.mem_Ioc.mp hn
      have := Finset.mem_Ioc.mp hm
      omega)
  rw [hI, Finset.sum_union hdis]
  ring

/-- Genuine PNT gives a relative lower mass for every sufficiently large real radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant6502daf90654cadc327e89e9f61e623895e043dcabfbf843d9b312c0b70b4e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant6502daf90654cadc327e89e9f61e623895e043dcabfbf843d9b312c0b70b4e8a.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59babfba4164e3d971c16cd1cadfb25c98c45b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
