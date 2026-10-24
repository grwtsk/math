# isProjectiveLimit_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d58fd60d-de53-a897-00b7-04bb75ff22e6",
  "kind": "lemma",
  "lexical_name": "isProjectiveLimit_map",
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
  "slug": "isprojectivelimit-map--2daa389a14bad3be64a49ad2",
  "source": {
    "blob": "a7e62550db49dc316f7423d57afdbdd26f47d55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2daa389a14bad3be64a49ad26bae00227f49b5d3098d2cc5f25acf49c85f83ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d58fd60d-de53-a897-00b7-04bb75ff22e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isProjectiveLimit_map (hX : AEMeasurable (fun ω ↦ (X · ω)) P) :
    IsProjectiveLimit (P.map (fun ω ↦ (X · ω))) (fun I ↦ P.map (fun ω ↦ I.restrict (X · ω))) := by
  intro I
  rw [AEMeasurable.map_map_of_aemeasurable (Finset.measurable_restrict _).aemeasurable hX,
    Function.comp_def]

/-- Two stochastic processes have same law iff they have the same
finite-dimensional distributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e62550db49dc316f7423d57afdbdd26f47d55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
