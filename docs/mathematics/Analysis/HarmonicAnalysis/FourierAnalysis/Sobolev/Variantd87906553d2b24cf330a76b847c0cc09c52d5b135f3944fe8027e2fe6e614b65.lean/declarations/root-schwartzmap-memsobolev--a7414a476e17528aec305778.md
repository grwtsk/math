# _root_.SchwartzMap.memSobolev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "303ea1b6f496d81419c8ef0b11c35c489949a3d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40ba03b0-2cce-b798-0e1d-258d51e08bc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0073c409-18d0-d788-626a-6fab892ded16",
  "kind": "theorem",
  "lexical_name": "_root_.SchwartzMap.memSobolev",
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
  "slug": "root-schwartzmap-memsobolev--a7414a476e17528aec305778",
  "source": {
    "blob": "303ea1b6f496d81419c8ef0b11c35c489949a3d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7414a476e17528aec30577805a08576fff1fc72526fe72c8768282c401d8392",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0073c409-18d0-d788-626a-6fab892ded16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.SchwartzMap.memSobolev {s : ℝ} {p : ℝ≥0∞} [hp : Fact (1 ≤ p)] (f : 𝓢(E, F)) :
    MemSobolev s p (f : 𝓢'(E, F)) := by
  use (SchwartzMap.fourierMultiplierCLM F (fun x ↦ ((1 + ‖x‖ ^ 2) ^ (s / 2) : ℝ)) f).toLp p
  rw [besselPotential, Lp.toTemperedDistribution_toLp_eq,
    fourierMultiplierCLM_toTemperedDistributionCLM_eq (by fun_prop)]
  congr 1
  apply SchwartzMap.fourierMultiplierCLM_ofReal ℂ
    (Function.hasTemperateGrowth_one_add_norm_sq_rpow E (s / 2))

end normed

section inner

variable [InnerProductSpace ℂ F] [CompleteSpace F]

/-- A tempered distribution belongs to the Sobolev space of order `s` and `p = 2` if and only if
its Fourier transform multiplied by `(1 + ‖x‖ ^ 2) ^ (s / 2)` is in `Lp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `303ea1b6f496d81419c8ef0b11c35c489949a3d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
