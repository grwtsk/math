# trivial_chainL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1aaec6accad36bad8fb204a4b974a58524d3bc98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ee31e65-f53b-71da-cafd-4c45a667cfa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a4f0b33-e3b3-8581-0440-abe336422e67",
  "kind": "theorem",
  "lexical_name": "trivial_chainL",
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
  "slug": "trivial-chainl--5341726ea9c90c1400a5bfd4",
  "source": {
    "blob": "1aaec6accad36bad8fb204a4b974a58524d3bc98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5341726ea9c90c1400a5bfd4aeea6f4a9bff2fab9b2bd9c8b7545b6ad32b5f3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a4f0b33-e3b3-8581-0440-abe336422e67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_chainL (hs : LSeam χ) (T₁ T₂ : ℝ) :
    N0simpleL χ T₁ T₂ ≤ N0starL χ T₁ T₂ ∧ N0starL χ T₁ T₂ ≤ N0L χ T₁ T₂ ∧
      N0L χ T₁ T₂ ≤ NcountL χ T₁ T₂ ∧ N0simpleL χ T₁ T₂ ≤ NsimpleL χ T₁ T₂ ∧
      NsimpleL χ T₁ T₂ ≤ NdistL χ T₁ T₂ ∧ NdistL χ T₁ T₂ ≤ NcountL χ T₁ T₂ := by
  have h := (LZeros hs).trivial_chain T₁ T₂
  simpa only [ZeroConfig.N0s, ZeroConfig.N0star, ZeroConfig.N0, ZeroConfig.N, ZeroConfig.Ns,
    ZeroConfig.Nd, LZeros_window, ZeroConfig.onLine, LZeros_simple, LZeros_mult, N0simpleL, N0starL,
    N0L, NcountL, NsimpleL, NdistL] using h

end seam_rfl

/-! ## 3. Theorem E — parameters  ([thm:E]; ε-forms at fixed λ ∈ (0,1), then 2/3, 1/2, 3/4)

The parity is κ := (1−χ(−1))/2, i.e. κ = 0 for χ even and κ = 1 for χ odd, and the coefficient
sequence is c n := χ(n) (n : ℕ cast into ZMod q). The hypotheses are those of `PaperInputsChi`
(Zeta23/ThmE/Hypotheses.lean) at these parameters, for the configuration `LZeros hs`. -/

variable (χ)

open scoped Classical in
/-- κ = (1−χ(−1))/2 as a natural number: 0 if χ is even, 1 if χ is odd. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aaec6accad36bad8fb204a4b974a58524d3bc98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
