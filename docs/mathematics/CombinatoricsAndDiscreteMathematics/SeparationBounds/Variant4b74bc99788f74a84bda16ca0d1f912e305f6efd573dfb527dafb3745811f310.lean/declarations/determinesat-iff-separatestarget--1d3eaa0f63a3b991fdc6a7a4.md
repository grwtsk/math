# determinesAt_iff_separatesTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1f205f1-59b6-e60f-4bd2-3ee948d482c9",
  "kind": "theorem",
  "lexical_name": "determinesAt_iff_separatesTarget",
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
  "slug": "determinesat-iff-separatestarget--1d3eaa0f63a3b991fdc6a7a4",
  "source": {
    "blob": "5317dc39f6dcc69bd21053e283f26dd8cac3f82d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d3eaa0f63a3b991fdc6a7a4f0e1bfb76e243eddd5bfe81c18cbcf25428b2609",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f205f1-59b6-e60f-4bd2-3ee948d482c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem determinesAt_iff_separatesTarget (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Result) :
    notion.DeterminesAt budget target ↔
      SeparatesTarget notion.policy.observe
        (notion.tests.filter (fun test => notion.policy.cost test ≤ budget)) target := by
  classical
  constructor
  · intro determined x y differentTarget
    by_contra noSeparator
    apply differentTarget
    apply determined
    intro test member affordable
    by_contra differentObservation
    exact noSeparator ⟨test, Finset.mem_filter.mpr ⟨member, affordable⟩,
      differentObservation⟩
  · intro separates x y equivalent
    by_contra differentTarget
    obtain ⟨test, member, differentObservation⟩ := separates x y differentTarget
    exact differentObservation
      (equivalent test (Finset.mem_filter.mp member).1 (Finset.mem_filter.mp member).2)

/-- Increasing the existing per-test budget preserves target separation within
the same declared finite observation inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5317dc39f6dcc69bd21053e283f26dd8cac3f82d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
