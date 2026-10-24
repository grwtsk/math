# logDeriv_fun_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76a59de0-f910-c84b-d2b8-fc60792c13de",
  "kind": "lemma",
  "lexical_name": "logDeriv_fun_zpow",
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
  "slug": "logderiv-fun-zpow--231229e720ff6d3f1a9d37ae",
  "source": {
    "blob": "9731b3da6b149aa7febc55a407cdc7495d4643ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:231229e720ff6d3f1a9d37ae130d698d886cc158072de76c89a8cb75695171d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a59de0-f910-c84b-d2b8-fc60792c13de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_fun_zpow {f : 𝕜 → 𝕜'} {x : 𝕜} (hdf : DifferentiableAt 𝕜 f x) (n : ℤ) :
    logDeriv (f · ^ n) x = n * logDeriv f x := by
  rcases eq_or_ne n 0 with rfl | hn; · simp
  rcases eq_or_ne (f x) 0 with hf | hf
  · simp [logDeriv_apply, zero_zpow, *]
  · rw [logDeriv_apply, ← comp_def (·^n), deriv_comp _ (differentiableAt_zpow.2 <| .inl hf) hdf,
      deriv_zpow, logDeriv_apply]
    field_simp [zpow_ne_zero, zpow_sub_one₀ hf]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9731b3da6b149aa7febc55a407cdc7495d4643ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
