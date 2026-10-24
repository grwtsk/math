# Complex.isConnected_of_lowerHalfPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cd177f7-b62b-2eda-345f-fcc0563d27fc",
  "kind": "lemma",
  "lexical_name": "Complex.isConnected_of_lowerHalfPlane",
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
  "slug": "complex-isconnected-of-lowerhalfplane--cf03aa06a06e67b0ad4056ff",
  "source": {
    "blob": "ed1fbc47408fd7a668ee32044245061467dffb83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 94,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf03aa06a06e67b0ad4056ff5eb41f05b6e1be194c3682126165ab6d7011e77c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cd177f7-b62b-2eda-345f-fcc0563d27fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Complex.isConnected_of_lowerHalfPlane {r} {s : Set ℂ} (hs₁ : {z | z.im < r} ⊆ s)
    (hs₂ : s ⊆ {z | z.im ≤ r}) : IsConnected s := by
  refine .subset_closure ?_ hs₁ (by simpa only [closure_setOf_im_lt] using hs₂)
  exact (convex_halfSpace_im_lt r).isConnected ⟨(r - 1) * I, by simp⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Convex/Variante8af8fe4f1257c747f7d006ce526ce7a9d83ccfefed476364fa9d20a67e7dd12.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1fbc47408fd7a668ee32044245061467dffb83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
