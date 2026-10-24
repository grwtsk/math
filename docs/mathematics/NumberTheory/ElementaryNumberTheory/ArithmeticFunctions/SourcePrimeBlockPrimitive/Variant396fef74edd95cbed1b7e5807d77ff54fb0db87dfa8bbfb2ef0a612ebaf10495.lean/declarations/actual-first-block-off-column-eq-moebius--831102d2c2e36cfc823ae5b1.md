# actual_first_block_off_column_eq_moebius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8d5a6ed-80d9-ebc8-2890-c57bfa494e78",
  "kind": "theorem",
  "lexical_name": "actual_first_block_off_column_eq_moebius",
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
  "slug": "actual-first-block-off-column-eq-moebius--831102d2c2e36cfc823ae5b1",
  "source": {
    "blob": "a2b4052bbe95c70cfa36be6549f926ab63af877e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:831102d2c2e36cfc823ae5b1d34a617761609d87ce24180be89b5a810e3e448c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d5a6ed-80d9-ebc8-2890-c57bfa494e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_block_off_column_eq_moebius (A : ℝ) (U V m : ℕ)
    (hU : 1 ≤ U) (_hUV : U ≤ V) (hV : V ≤ 2 * U + 1) :
    (∑ n ∈ Finset.Ioc U V, sourceKernel A m n * beta U n) -
        (if m ∈ Finset.Ioc U V then sourceKernel A m m * beta U m else 0) =
      (∑ n ∈ Finset.Ioc U V, sourceKernel A m n * (moebius n : ℝ)) -
        (if m ∈ Finset.Ioc U V then sourceKernel A m m * (moebius m : ℝ) else 0) := by
  have hs : (∑ n ∈ Finset.Ioc U V, sourceKernel A m n * beta U n) =
      ∑ n ∈ Finset.Ioc U V, sourceKernel A m n * (moebius n : ℝ) := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [beta_eq_moebius_first_block U n hU (Finset.mem_Ioc.mp hn).1
      ((Finset.mem_Ioc.mp hn).2.trans hV)]
  rw [hs]
  by_cases hm : m ∈ Finset.Ioc U V
  · rw [if_pos hm, if_pos hm,
      beta_eq_moebius_first_block U m hU (Finset.mem_Ioc.mp hm).1
        ((Finset.mem_Ioc.mp hm).2.trans hV)]
  · rw [if_neg hm, if_neg hm]
end RH16PrimeBlockPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeBlockPrimitive/Variant396fef74edd95cbed1b7e5807d77ff54fb0db87dfa8bbfb2ef0a612ebaf10495.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b4052bbe95c70cfa36be6549f926ab63af877e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
