# AnalyticWithinAt.exists_mem_nhdsWithin_analyticOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:292adf39-4743-3365-26f3-48d4d63e1b1f",
  "kind": "lemma",
  "lexical_name": "AnalyticWithinAt.exists_mem_nhdsWithin_analyticOn",
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
  "slug": "analyticwithinat-exists-mem-nhdswithin-analyticon--697046025caa36f5c2116bf4",
  "source": {
    "blob": "93e118cb5c6ccf34007d09b324d2b1a45ed573ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 206,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697046025caa36f5c2116bf46d3abdf3596ec54eeb16da78f7e67c24c8adaea3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:292adf39-4743-3365-26f3-48d4d63e1b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticWithinAt.exists_mem_nhdsWithin_analyticOn
    [CompleteSpace F] {f : E → F} {s : Set E} {x : E} (h : AnalyticWithinAt 𝕜 f s x) :
    ∃ u ∈ 𝓝[insert x s] x, AnalyticOn 𝕜 f u := by
  obtain ⟨g, -, h'g, hg⟩ : ∃ g, f x = g x ∧ EqOn f g (insert x s) ∧ AnalyticAt 𝕜 g x :=
    h.exists_analyticAt
  let u := insert x s ∩ {y | AnalyticAt 𝕜 g y}
  refine ⟨u, ?_, ?_⟩
  · exact inter_mem_nhdsWithin _ ((isOpen_analyticAt 𝕜 g).mem_nhds hg)
  · intro y hy
    have : AnalyticWithinAt 𝕜 g u y := hy.2.analyticWithinAt
    exact this.congr (h'g.mono (inter_subset_left)) (h'g (inter_subset_left hy))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e118cb5c6ccf34007d09b324d2b1a45ed573ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
