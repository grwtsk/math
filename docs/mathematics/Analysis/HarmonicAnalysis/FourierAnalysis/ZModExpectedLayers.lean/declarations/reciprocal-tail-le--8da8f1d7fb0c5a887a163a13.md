# reciprocal_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cbdcf83-b0ef-9285-5e77-a05322a322e9",
  "kind": "theorem",
  "lexical_name": "reciprocal_tail_le",
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
  "slug": "reciprocal-tail-le--8da8f1d7fb0c5a887a163a13",
  "source": {
    "blob": "4fb5160815c51d110b620c33380cd9677fe7223e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 335,
    "path": "GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da8f1d7fb0c5a887a163a13964563a90e52134ee4ee1f4cb1bf29589b35cb57",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbdcf83-b0ef-9285-5e77-a05322a322e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_tail_le (n m : ℝ) (hn : 1 ≤ n) (hm : 1 ≤ m) (hmn : m ≤ n) :
    22 / n ^ 4 ≤ 22 / (n * Real.sqrt m) := by
  have hnp : 0 < n := by linarith
  have hmp : 0 < m := by linarith
  have hs1 := Real.one_le_sqrt.mpr hm
  have hsle : Real.sqrt m ≤ m := by nlinarith [Real.sq_sqrt hmp.le]
  have hden : n * Real.sqrt m ≤ n ^ 4 := by
    calc
      _ ≤ n * n := mul_le_mul_of_nonneg_left (hsle.trans hmn) hnp.le
      _ = n ^ 2 := by ring
      _ ≤ n ^ 4 := pow_le_pow_right₀ hn (by norm_num)
  exact div_le_div_of_nonneg_left (by norm_num) (mul_pos hnp (Real.sqrt_pos.mpr hmp)) hden

/-- Source small dyadic layers, through `floor(log₂ m)-22`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb5160815c51d110b620c33380cd9677fe7223e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
