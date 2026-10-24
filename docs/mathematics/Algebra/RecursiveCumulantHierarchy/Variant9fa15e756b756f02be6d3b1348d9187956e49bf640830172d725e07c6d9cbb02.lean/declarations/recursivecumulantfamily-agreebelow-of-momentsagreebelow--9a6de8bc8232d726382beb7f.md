# recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24cb97fcd9249a683daa5ae97c81a7df4f350672",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7daded85-73a0-de6a-8125-8a1ca20f5602",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54a3cf9e-90ba-1e4a-aaf5-0522afbcdfb8",
  "kind": "theorem",
  "lexical_name": "recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow",
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
  "slug": "recursivecumulantfamily-agreebelow-of-momentsagreebelow--9a6de8bc8232d726382beb7f",
  "source": {
    "blob": "24cb97fcd9249a683daa5ae97c81a7df4f350672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 261,
    "path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a6de8bc8232d726382beb7f9db92656ee6d5bd1fdf009b2febb9e6b5a09e107",
  "verification": {
    "reference": "docs/verification/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54a3cf9e-90ba-1e4a-aaf5-0522afbcdfb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow
    (n : ℕ)
    {M₁ M₂ : DirectionMomentFamily E R}
    (hM : MomentsAgreeBelow n M₁ M₂) :
    AgreeBelow n
      (recursiveCumulantFamily M₁)
      (recursiveCumulantFamily M₂) := by
  intro m
  induction m using Nat.strongRecOn with
  | ind m ih =>
      intro hm directions
      cases m with
      | zero =>
          rw [recursiveCumulantFamily_zero,
            recursiveCumulantFamily_zero]
      | succ m =>
          rw [recursiveCumulantFamily_succ,
            recursiveCumulantFamily_succ]
          unfold recursiveDirectionalCumulant
          rw [hM (m + 1) hm directions]
          rw [directionalProperContribution_congr_of_agreeBelow
            (m + 1) (Nat.succ_pos m)
            (show
              AgreeBelow (m + 1)
                (recursiveCumulantFamily M₁)
                (recursiveCumulantFamily M₂) by
              intro j hj lowerDirections
              exact ih j hj
                (Nat.lt_trans hj hm)
                lowerDirections)
            directions]

/-- Equality of moments through order n implies equality of the recursively
constructed n-th cumulant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24cb97fcd9249a683daa5ae97c81a7df4f350672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
