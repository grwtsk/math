# compensatedAngularSymbol_eq_sqrt_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c85ba9a0-9e2a-942d-3550-606be24ddd04",
  "kind": "theorem",
  "lexical_name": "compensatedAngularSymbol_eq_sqrt_sum",
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
  "slug": "compensatedangularsymbol-eq-sqrt-sum--454a73c8215424b22badb97c",
  "source": {
    "blob": "0cce7baa9bd4b1cf1d24cbced651d6c0f7990fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454a73c8215424b22badb97c4bef7f479bd2ea3eaaf3cf8d3dbfcb667348fc4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c85ba9a0-9e2a-942d-3550-606be24ddd04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedAngularSymbol_eq_sqrt_sum (A ω : ℝ) :
    compensatedAngularSymbol A ω =
      ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
        (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n * Real.cos (ω * Real.log n) := by
  unfold compensatedAngularSymbol compensatedCoefficient primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  have he := exponentialTest_log (fun _ : ℝ => 1) n
    (by have := (Finset.mem_Icc.mp hn).1; omega)
  simp only [exponentialTest, mul_one, one_div] at he
  rw [he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cce7baa9bd4b1cf1d24cbced651d6c0f7990fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
