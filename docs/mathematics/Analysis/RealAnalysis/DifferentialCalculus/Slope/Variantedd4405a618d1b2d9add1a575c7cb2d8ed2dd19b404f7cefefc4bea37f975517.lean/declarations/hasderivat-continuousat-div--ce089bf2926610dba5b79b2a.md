# HasDerivAt.continuousAt_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f00d2e8-7fdc-fd7a-8419-55a31dd76fed",
  "kind": "lemma",
  "lexical_name": "HasDerivAt.continuousAt_div",
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
  "slug": "hasderivat-continuousat-div--ce089bf2926610dba5b79b2a",
  "source": {
    "blob": "ebb7c29ebf2d99400b76007506bb98b9524913b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce089bf2926610dba5b79b2a7171c4280585f689de6bf9d7604e91c2984608d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f00d2e8-7fdc-fd7a-8419-55a31dd76fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasDerivAt.continuousAt_div [DecidableEq 𝕜] {f : 𝕜 → 𝕜} {c a : 𝕜} (hf : HasDerivAt f a c) :
    ContinuousAt (Function.update (fun x ↦ (f x - f c) / (x - c)) c a) c := by
  rw [← slope_fun_def_field]
  exact continuousAt_update_same.mpr <| hasDerivAt_iff_tendsto_slope.mp hf

end NormedField

/-! ### Upper estimates on liminf and limsup -/

section Real

variable {f : ℝ → ℝ} {f' : ℝ} {s : Set ℝ} {x : ℝ} {r : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb7c29ebf2d99400b76007506bb98b9524913b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
