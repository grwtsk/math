# Real.summable_one_div_int_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:433a9d19-39eb-411d-80c4-f538b5876fe1",
  "kind": "theorem",
  "lexical_name": "Real.summable_one_div_int_pow",
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
  "slug": "real-summable-one-div-int-pow--1b5ad6a42b4020fe90ddbc1d",
  "source": {
    "blob": "d5eeae7a0f8be1a888dbb4f710db6cec92c01536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 234,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b5ad6a42b4020fe90ddbc1d30875ef079dda8497b610ecdb51951564d44e76d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:433a9d19-39eb-411d-80c4-f538b5876fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.summable_one_div_int_pow {p : ℕ} :
    (Summable fun n : ℤ => 1 / (n : ℝ) ^ p) ↔ 1 < p := by
  refine'
    ⟨fun h => Real.summable_one_div_nat_pow.mp (h.comp_injective Nat.cast_injective), fun h =>
      summable_int_of_summable_nat (Real.summable_one_div_nat_pow.mpr h)
        (((Real.summable_one_div_nat_pow.mpr h).mul_left <| 1 / (-1 : ℝ) ^ p).congr fun n => _)⟩
  conv_rhs =>
    rw [Int.cast_neg, neg_eq_neg_one_mul, mul_pow, ← div_div]
  conv_lhs => rw [mul_div, mul_one]
#align real.summable_one_div_int_pow Real.summable_one_div_int_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5eeae7a0f8be1a888dbb4f710db6cec92c01536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
