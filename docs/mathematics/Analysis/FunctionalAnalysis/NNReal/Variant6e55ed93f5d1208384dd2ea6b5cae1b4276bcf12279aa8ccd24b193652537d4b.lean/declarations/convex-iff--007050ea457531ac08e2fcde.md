# convex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d62119cf9374f1a892a5e04baa4fbd6cb36f43f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51aaefe5-d9b8-67d5-62bf-825b63096694",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a7b5e82-a8a5-f704-2673-0c561d738230",
  "kind": "lemma",
  "lexical_name": "convex_iff",
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
  "slug": "convex-iff--007050ea457531ac08e2fcde",
  "source": {
    "blob": "9d62119cf9374f1a892a5e04baa4fbd6cb36f43f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 39,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NNReal/Variant6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:007050ea457531ac08e2fcde7b3a85cc65a828e297309e8ca6ca4bf25cf5c13e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NNReal/Variant6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a7b5e82-a8a5-f704-2673-0c561d738230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma convex_iff {M : Type*} [AddCommMonoid M] [Module ℝ M] {s : Set M} :
    Convex ℝ≥0 s ↔ Convex ℝ s := by
  refine ⟨fun H ↦ ?_, Convex.lift ℝ≥0⟩
  intro _ hx _ hy a b ha hb hab
  exact H hx hy (a := ⟨a, ha⟩) (b := ⟨b, hb⟩) zero_le zero_le (by ext; simpa)

end NNReal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NNReal/Variant6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NNReal/Variant6e55ed93f5d1208384dd2ea6b5cae1b4276bcf12279aa8ccd24b193652537d4b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d62119cf9374f1a892a5e04baa4fbd6cb36f43f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
