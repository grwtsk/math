# tendsto_Gamma_term_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:854c8fb4-1abf-d978-ff99-503941b7af06",
  "kind": "lemma",
  "lexical_name": "tendsto_Gamma_term_aux",
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
  "slug": "tendsto-gamma-term-aux--b8b77f26e62f909d667a6d15",
  "source": {
    "blob": "4b48e76570fde4bd3040098013184e9afc81887a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 396,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8b77f26e62f909d667a6d151fdde09d35ea3952d55232e2c4d362cfb3a6760b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:854c8fb4-1abf-d978-ff99-503941b7af06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_Gamma_term_aux : Tendsto (fun s ↦ 1 / (s - 1) - 1 / Gammaℝ s / (s - 1)) (𝓝[≠] 1)
    (𝓝 (-(γ + Complex.log (4 * ↑π)) / 2)) := by
  have h := hasDerivAt_Gammaℝ_one
  rw [hasDerivAt_iff_tendsto_slope, slope_fun_def_field, Gammaℝ_one] at h
  have := h.div (hasDerivAt_Gammaℝ_one.continuousAt.tendsto.mono_left nhdsWithin_le_nhds)
    (Gammaℝ_one.trans_ne one_ne_zero)
  rw [Gammaℝ_one, div_one] at this
  refine this.congr' ?_
  have : {z | 0 < re z} ∈ 𝓝 (1 : ℂ) := by
    apply (continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds
    simp only [mem_preimage, one_re, mem_Ioi, zero_lt_one]
  rw [EventuallyEq, eventually_nhdsWithin_iff]
  filter_upwards [this] with a ha _
  rw [Pi.div_apply, ← sub_div, div_right_comm, sub_div' (Gammaℝ_ne_zero_of_re_pos ha), one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b48e76570fde4bd3040098013184e9afc81887a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
