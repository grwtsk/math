# eventually_of_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "164f6f3185ff95d6357bc7b46819ba8a6e294823",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:180bd2b4-5006-3f0b-aacc-6e6c139e8f08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2219c0fe-c1f3-c1ce-bbea-eddc2fb6a367",
  "kind": "lemma",
  "lexical_name": "eventually_of_core",
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
  "slug": "eventually-of-core--1353cb92e635b2ed50cde70e",
  "source": {
    "blob": "164f6f3185ff95d6357bc7b46819ba8a6e294823",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 201,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1353cb92e635b2ed50cde70ee5102e4fbc0e2b09162bbadd97c8fa5d396742e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2219c0fe-c1f3-c1ce-bbea-eddc2fb6a367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_of_core {T₁ : ℝ} (hT₁ : ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cW (P.toSetting T) (Fw P win T))
    {Q : Setting → LocalFun → Prop} {T₀ : ℝ}
    (h : ∀ (p : Setting) (F : LocalFun), p.lam = P.lam → T₀ ≤ p.T → LocalHypsCore cW p F → Q p F) :
    ∀ᶠ T in atTop, Q (P.toSetting T) (Fw P win T) := by
  filter_upwards [eventually_ge_atTop (max T₀ T₁)] with T hT
  exact h _ _ rfl ((le_max_left _ _).trans hT) (hT₁ T ((le_max_right _ _).trans hT))

set_option maxHeartbeats 3200000 in
/-- **FactsXi for the concrete data.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164f6f3185ff95d6357bc7b46819ba8a6e294823` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
