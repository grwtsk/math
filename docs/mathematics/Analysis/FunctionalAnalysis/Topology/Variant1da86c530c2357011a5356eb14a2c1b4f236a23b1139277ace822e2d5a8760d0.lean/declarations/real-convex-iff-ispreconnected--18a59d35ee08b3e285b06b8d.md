# Real.convex_iff_isPreconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "435c9301d3198f6b2385ddf09a19b65e380863f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1398bb4-6bf7-a255-bf12-6b19319b8672",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a10317b1-55f5-a154-5af1-e70d94ea12cb",
  "kind": "theorem",
  "lexical_name": "Real.convex_iff_isPreconnected",
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
  "slug": "real-convex-iff-ispreconnected--18a59d35ee08b3e285b06b8d",
  "source": {
    "blob": "435c9301d3198f6b2385ddf09a19b65e380863f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18a59d35ee08b3e285b06b8d2f3dd7615e76f7b25442a84d78606a61e91d38e8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a10317b1-55f5-a154-5af1-e70d94ea12cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.convex_iff_isPreconnected {s : Set ℝ} : Convex ℝ s ↔ IsPreconnected s :=
  convex_iff_ordConnected.trans isPreconnected_iff_ordConnected.symm
#align real.convex_iff_is_preconnected Real.convex_iff_isPreconnected

alias ⟨_, IsPreconnected.convex⟩ := Real.convex_iff_isPreconnected
#align is_preconnected.convex IsPreconnected.convex

/-! ### Standard simplex -/


section stdSimplex

variable [Fintype ι]

/-- Every vector in `stdSimplex 𝕜 ι` has `max`-norm at most `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `435c9301d3198f6b2385ddf09a19b65e380863f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
