# AnalyticAt.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:194f32c7-f64b-22ee-5eb2-8a06c70f61fd",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.comp",
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
  "slug": "analyticat-comp--fa45673926245c1d68e8a1e4",
  "source": {
    "blob": "f388cfd9353f6f9184359ea4859d0e85e95fe225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 873,
    "line": 867,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa45673926245c1d68e8a1e4a2828e4e4605592e99e6c3bbb32a436fe73d8890",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:194f32c7-f64b-22ee-5eb2-8a06c70f61fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.comp {g : F → G} {f : E → F} {x : E} (hg : AnalyticAt 𝕜 g (f x))
    (hf : AnalyticAt 𝕜 f x) : AnalyticAt 𝕜 (g ∘ f) x := by
  rw [← analyticWithinAt_univ] at hg hf ⊢
  apply hg.comp hf (by simp)

/-- Version of `AnalyticAt.comp` where point equality is a separate hypothesis. -/
@[to_fun]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f388cfd9353f6f9184359ea4859d0e85e95fe225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
