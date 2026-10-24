# differentiable_riemannZeta₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:117690ed-360a-466f-5471-1127eba50324",
  "kind": "lemma",
  "lexical_name": "differentiable_riemannZeta₀",
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
  "slug": "differentiable-riemannzeta--eadc9dc83709e6aecb10bd94",
  "source": {
    "blob": "4b48e76570fde4bd3040098013184e9afc81887a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 562,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eadc9dc83709e6aecb10bd9487c647a8fd420716d3fc0cc730eab57cd3a45500",
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

Occurrence: `result:117690ed-360a-466f-5471-1127eba50324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiable_riemannZeta₀ : Differentiable ℂ riemannZeta₀ := by
  rw [← differentiableOn_univ, ← differentiableOn_compl_singleton_and_continuousAt_iff
    (univ_mem : _ ∈ 𝓝 (1 : ℂ)), continuousAt_iff_punctured_nhds, ← compl_eq_univ_sdiff]
  constructor
  · refine .congr (f := fun s ↦ riemannZeta s - (s - 1)⁻¹) ?_ (by simp +contextual [riemannZeta₀])
    exact differentiableOn_riemannZeta.fun_sub (by fun_prop (disch := grind))
  · convert tendsto_nhdsWithin_congr ?_ tendsto_riemannZeta_sub_one_div <;>
    simp +contextual [riemannZeta₀]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b48e76570fde4bd3040098013184e9afc81887a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
