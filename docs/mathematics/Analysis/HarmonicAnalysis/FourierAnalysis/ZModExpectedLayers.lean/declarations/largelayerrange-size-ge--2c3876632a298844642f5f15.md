# largeLayerRange_size_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e5f4e7e-4ad1-e0c1-25de-b3579a837143",
  "kind": "theorem",
  "lexical_name": "largeLayerRange_size_ge",
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
  "slug": "largelayerrange-size-ge--2c3876632a298844642f5f15",
  "source": {
    "blob": "4fb5160815c51d110b620c33380cd9677fe7223e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 384,
    "path": "GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3876632a298844642f5f150b91e909a60a94d1b60186c05496d28e5e9b5358",
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

Occurrence: `result:4e5f4e7e-4ad1-e0c1-25de-b3579a837143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem largeLayerRange_size_ge (m k : ℕ) (hk : k ∈ largeLayerRange m) :
    (m : ℝ) / (2 : ℝ) ^ 22 ≤ (2 : ℝ) ^ k := by
  have hk' := Finset.mem_sdiff.mp hk
  have hklo : Nat.log 2 m + 1 ≤ k + 22 := by
    have hnot : ¬k < Nat.log 2 m - 22 + 1 := by
      simpa only [smallLayerRange, Finset.mem_range] using hk'.2
    omega
  have hmR : (m : ℝ) < (2 : ℝ) ^ (Nat.log 2 m + 1) := by
    exact_mod_cast Nat.lt_pow_succ_log_self (by decide : 1 < 2) m
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 ^ 22)).mpr
  calc
    (m : ℝ) ≤ 2 ^ (Nat.log 2 m + 1) := hmR.le
    _ ≤ 2 ^ (k + 22) := pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2) hklo
    _ = (2 : ℝ) ^ k * 2 ^ 22 := pow_add _ _ _

/-- The source tail summation and its count of 22 terms are both derived from
the actual finite layer ranges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb5160815c51d110b620c33380cd9677fe7223e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
